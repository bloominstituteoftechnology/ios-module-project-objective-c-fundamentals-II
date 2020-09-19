//
//  MJSTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Morgan Smith on 9/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MJSTimeTrackerViewController.h"
#import "MJSTimedTask.h"
#import "MJSTimedTaskController.h"

@interface MJSTimeTrackerViewController () <UITableViewDataSource, UITableViewDelegate>

@property MJSTimedTaskController *taskController;

@property (weak, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (weak, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (weak, nonatomic) IBOutlet UIButton *logTimeButton;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MJSTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.taskController = [[MJSTimedTaskController alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

}

- (IBAction)logTime:(id)sender {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];

        NSNumber *hourlyRate = [formatter numberFromString:self.hourlyRateTextField.text];
        NSNumber *hoursWorked = [formatter numberFromString:self.hoursWorkedTextField.text];

    [self.taskController createTimedTaskWithClientName:self.clientNameTextField.text workSummary:self.summaryTextField.text hourlyRate:hourlyRate.doubleValue hoursWorked:hoursWorked.doubleValue];

    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.taskController.tasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"taskCell" forIndexPath:indexPath];
    MJSTimedTask *task = self.taskController.tasks[indexPath.row];
    cell.textLabel.text = task.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%.2f", task.totalBill];
    return cell;
}


@end
