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

//MARK:- Properties

@property(nonatomic) NPTTimedTaskController *timedTaskController;
@property(nonatomic) double timeWorked;
@property(nonatomic) double hourlyRate;
@property (nonatomic, assign) BOOL isUpdated;
//MARK:- Outlets

@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end


@implementation NPTTimeTrackerViewController
  NSString * cellID = @"LogCell";
  
//MARK:- View Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.isUpdated = NO;
    
    self.timedTaskController = [[NPTTimedTaskController alloc] init];
    
    [self.clientNameTextField becomeFirstResponder];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}
//MARK:- Actions

- (IBAction)logTimeButtonPressed:(UIButton *)sender {
    if (self.isUpdated) {
        
        NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
        
        NPTTimedTask *task = [self.timedTaskController.timeTasks objectAtIndex:selectedIndexPath.row];
        
        NSMutableString *client = [self.clientNameTextField.text mutableCopy];
        
        NSMutableString *summary = [self.self.summaryTextField.text mutableCopy];
        
        
        [self.timedTaskController updateTaskWithTask:task
                                              client:client
                                             summary:summary
                                          hourlyRate:[self.hourlyRateTextField.text doubleValue]
                                          timeWorked:[self.timeWorkedTextField.text doubleValue]];
        
        [self.tableView reloadData];
        
    } else if (!self.isUpdated) {
        
        self.hourlyRate = [self.hourlyRateTextField.text doubleValue];
        self.timeWorked = [self.timeWorkedTextField.text doubleValue];
        
        NSMutableString *clientName = (self.clientNameTextField.text == nil ? [NSMutableString new] : [self.clientNameTextField.text mutableCopy] );
        NSMutableString *summary = (self.summaryTextField.text == nil ? [NSMutableString new] : [self.summaryTextField.text mutableCopy] );
        
        [self.timedTaskController createTaskWithClient:clientName summary:summary hourlyRate:self.hourlyRate timeWorked:self.timeWorked];
        
        [ self.tableView reloadData];
    }
    
}


//MARK:- UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timeTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    
    NPTTimedTask *task = [self.timedTaskController.timeTasks objectAtIndex:indexPath.row];
    
      NSString *total = [NSString stringWithFormat:@"%0.2f$", task.totalPay];
    
    cell.textLabel.text = task.client;
    
    cell.detailTextLabel.text = total;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSIndexPath  *selectedIndexPath = [tableView indexPathForSelectedRow];
    
    NPTTimedTask *selectedTask = [self.timedTaskController.timeTasks objectAtIndex:selectedIndexPath.row];
    
    [tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionNone];
    
    self.clientNameTextField.text = selectedTask.client;
    
    self.summaryTextField.text = selectedTask.summary;
    
    self.hourlyRateTextField.text = [NSString stringWithFormat:@"%.0f",selectedTask.hourlyRate];
    
    self.timeWorkedTextField.text = [NSString stringWithFormat:@"%.0f",selectedTask.timeWorked];
    
    self.isUpdated = YES;
  
}

@end
