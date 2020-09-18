//
//  EFSTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Clayton Watkins on 9/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "EFSTimeTrackerViewController.h"
#import "EFSTimedTaskController.h"
#import "EFSTimedTask.h"

@interface EFSTimeTrackerViewController ()
// Private IBOutlets
@property (weak, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *workSummaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (weak, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

// Private Properties
@property (nonatomic) EFSTimedTaskController *taskController;

@end

@implementation EFSTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _taskController = [[EFSTimedTaskController alloc] init];
    _tableView.dataSource = self;
}
// UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _taskController.taskCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    EFSTimedTask *task = [self.taskController taskAtIndex:indexPath.row];
    cell.textLabel.text = task.clientName;
    NSString *total = [NSString stringWithFormat:@"$%0.2f", task.totalCost];
    cell.detailTextLabel.text = total;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    NSIndexPath *selectedIndexPath = [tableView indexPathForSelectedRow];
    EFSTimedTask *currentTask = [self.taskController.taskArray objectAtIndex:selectedIndexPath.row];
    [tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionNone];
    self.clientNameTextField.text = currentTask.clientName;
    self.workSummaryTextField.text = currentTask.workSummary;
    self.hourlyRateTextField.text = [NSString stringWithFormat:@"%.0f", currentTask.hourlyRate];
    self.timeWorkedTextField.text = [NSString stringWithFormat:@"%.0f", currentTask.hoursWorked];
}

// IBAction
- (IBAction)logTime:(id)sender {
    double hourlyRate = [_hourlyRateTextField.text doubleValue];
    double hoursWorked = [_timeWorkedTextField.text doubleValue];
    
    [_taskController createTimedTaskWith:_clientNameTextField.text
                             workSummary:_workSummaryTextField.text
                              hourlyRate:hourlyRate
                             hoursWorked:hoursWorked];
    [_tableView reloadData];
    _clientNameTextField.text = @"";
    _workSummaryTextField.text = @"";
    _hourlyRateTextField.text = @"";
    _timeWorkedTextField.text = @"";
}


@end
