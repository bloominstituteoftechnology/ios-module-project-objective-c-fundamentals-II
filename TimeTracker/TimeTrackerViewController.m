//
//  TimeTrackerViewController.m
//  TimeTracker
//
//  Created by Cora Jacobson on 11/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TimeTrackerViewController.h"
#import "TimedTask.h"
#import "TimedTaskController.h"

@interface TimeTrackerViewController ()

// MARK: - Outlets

@property (nonatomic) IBOutlet UITextField *clientTextField;
@property (nonatomic) IBOutlet UITextField *summaryTextField;
@property (nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (nonatomic) IBOutlet UITableView *tableView;

// MARK: Properties

@property (nonatomic) TimedTaskController *timedTaskController;

@end


@implementation TimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.timedTaskController = [[TimedTaskController alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (IBAction)logTime:(id)sender
{
    [_timedTaskController createTimedTaskWithClient:_clientTextField.text
                                            summary:_summaryTextField.text
                                         hourlyRate:[_hourlyRateTextField.text doubleValue]
                                        hoursWorked:[_hoursWorkedTextField.text doubleValue]];
    [self.tableView reloadData];
    self.clientTextField.text = @"";
    self.summaryTextField.text = @"";
    self.hourlyRateTextField.text = @"";
    self.hoursWorkedTextField.text = @"";
}

// MARK: - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.timedTaskController.taskCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TimeLogCell" forIndexPath:indexPath];
    TimedTask *task = [self.timedTaskController taskAtIndex:indexPath.row];
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString localizedStringWithFormat:@"$%.2f", task.total];
    return cell;
}

@end
