//
//  NPTTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Nick Nguyen on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "NPTTimeTrackerViewController.h"
#import "NPTTimedTaskController.h"
#import "NPTTimedTask.h"

@interface NPTTimeTrackerViewController ()

@property(nonatomic) NPTTimedTaskController *timedTaskController;

@property(nonatomic) double timeWorked;
@property(nonatomic) double hourlyRate;

@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;



@end


@implementation NPTTimeTrackerViewController
  NSString * cellID = @"LogCell";
  
//MARK:- View Life Cycle

-(void)viewDidLoad{
    [super viewDidLoad];
    
    self.timedTaskController = [[NPTTimedTaskController alloc] init];
    [self.clientNameTextField becomeFirstResponder];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (IBAction)logTimeButtonPressed:(UIButton *)sender {
    
    self.hourlyRate = [self.hourlyRateTextField.text doubleValue];
    self.timeWorked = [self.timeWorkedTextField.text doubleValue];
    
    [self.timedTaskController createTaskWithClient:self.clientNameTextField.text summary:self.summaryTextField.text hourlyRate:self.hourlyRate timeWorked:self.timeWorked];
    [ self.tableView reloadData];
}


//MARK:- UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timeTasks.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"LogCell" forIndexPath:indexPath];
    
    NPTTimedTask * task = [self.timedTaskController.timeTasks objectAtIndex:indexPath.row];
    
      NSString * total = [NSString stringWithFormat:@"%2f", task.totalPay];
    
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = total;
    return cell;
}

@end
