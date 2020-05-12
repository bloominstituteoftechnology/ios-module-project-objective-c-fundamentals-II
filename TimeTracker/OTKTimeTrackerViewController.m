//
//  OTKTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Tobi Kuyoro on 12/05/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "OTKTimeTrackerViewController.h"
#import "OTKTimedTaskController.h"
#import "OTKTimedTask.h"

@interface OTKTimeTrackerViewController () <UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) OTKTimedTaskController *taskController;
@property (nonatomic) NSString *client;
@property (nonatomic) NSString * workSummary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) int hoursWorked;
@property (nonatomic, readonly) double total;

@end

@implementation OTKTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.taskController = [[OTKTimedTaskController alloc] init];
    self.tableView.dataSource = self;
}

- (IBAction)logTime:(UIButton *)sender {
    self.client = _clientNameTextField.text;
    self.workSummary = _summaryTextField.text;
    self.hourlyRate = [_hourlyRateTextField.text doubleValue];
    self.hoursWorked = [_hoursWorkedTextField.text intValue];

    [self.taskController createTimedTasksWithClient:self.client
                                        workSummary:self.workSummary
                                         hourlyRate:self.hourlyRate
                                        hoursWorked:self.hoursWorked];
    [self.tableView reloadData];
}

// MARK: - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.taskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];

    OTKTimedTask *task = [self.taskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"£%.2f", task.total];

    return cell;
}

@end
