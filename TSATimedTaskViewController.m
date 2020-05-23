//
//  TSATimedTaskViewController.m
//  TimeTracker
//
//  Created by Alex Thompson on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TSATimedTaskViewController.h"
#import "TSATimedTaskController.h"
#import "TSATimedTask.h"

@interface TSATimedTaskViewController() <UITableViewDelegate, UITableViewDataSource>

// private properties
@property (nonatomic) double total;
@property (nonatomic) double hourlyRate;
@property (nonatomic) NSInteger hoursWorked;

@property TSATimedTaskController *taskController;


// Outlets

@property (nonatomic) IBOutlet UITextField *clientNameTextField;
@property (nonatomic) IBOutlet UITextField *summaryTextField;
@property (nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (nonatomic) IBOutlet UITableView *tableView;


@end

@implementation TSATimedTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.taskController = [[TSATimedTaskController alloc] init];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (IBAction)logTime:(UIButton *)sender {
    [self.taskController createTimedTaskWith:self.clientNameTextField.text
                    summary:self.summaryTextField.text
                    hourlyRate:[self.hourlyRateTextField.text doubleValue]
                    hoursWorked:[self.timeWorkedTextField.text doubleValue]];
    
    [self.tableView reloadData];
}


#pragma mark - Navigation

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.taskController.timedTasks.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TotalCell" forIndexPath:indexPath];
    
    TSATimedTask *task = [self.taskController.timedTasks objectAtIndex:indexPath.row];
    
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", task.total];
    
    return cell;
}


@end
