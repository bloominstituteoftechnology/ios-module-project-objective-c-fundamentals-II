//
//  RRVTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Rob Vance on 11/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "RRVTimeTrackerViewController.h"
#import "RRVTimedTaskController.h"
#import "RRVTimedTask.h"

@interface RRVTimeTrackerViewController ()

// MARK: - Private Properties -
@property (nonatomic) RRVTimedTaskController *taskController;


// MARK: - Pirvate IBOutlets -
@property(weak, nonatomic) IBOutlet UITextField *clientNameTextField;
@property(weak, nonatomic) IBOutlet UITextField *workSummaryTextField;
@property(weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property(weak, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property(weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation RRVTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _taskController = [[RRVTimedTaskController alloc] init];
    _tableView.dataSource = self;
}

// MARK: - IBActions -

- (IBAction)logTime:(id)sender {
    double hourlyRate = [_hourlyRateTextField.text doubleValue];
    double hoursWorked = [_timeWorkedTextField.text doubleValue];
    
    [_taskController createTimeTaskWith:_clientNameTextField.text
                            workSummary:_workSummaryTextField.text
                             hourlyRate:hourlyRate
                            hoursWorked:hoursWorked];
    
    [_tableView reloadData];
    _clientNameTextField.text = @"";
    _workSummaryTextField.text = @"";
    _hourlyRateTextField.text = @"";
    _timeWorkedTextField.text = @"";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _taskController.taskCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    RRVTimedTask *task = [self.taskController taskAtIndex:indexPath.row];
    cell.textLabel.text = task.clientName;
    NSString *total = [NSString stringWithFormat:@"$%0.2f", task.totalCost];
    cell.detailTextLabel.text = total;
    return cell;
}

- (void)tableview:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSIndexPath *selectedIndexPath = [tableView indexPathForSelectedRow];
    RRVTimedTask *currentTask = [self.taskController.taskArray objectAtIndex:selectedIndexPath.row];
    [tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionNone];
    self.clientNameTextField.text = currentTask.clientName;
    self.workSummaryTextField.text = currentTask.workSummary;
    self.hourlyRateTextField.text = [NSString stringWithFormat:@"%.0f", currentTask.hourlyRate];
    self.timeWorkedTextField.text = [NSString stringWithFormat:@"%.0f", currentTask.hoursWorked];
    
}

@end
