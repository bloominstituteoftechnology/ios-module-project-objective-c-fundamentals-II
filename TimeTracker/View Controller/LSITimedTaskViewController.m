//
//  LSITimedTaskViewController.m
//  TimeTracker
//
//  Created by Elizabeth Thomas on 9/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITimedTaskViewController.h"
#import "LSITimedTaskController.h"
#import "LSITimedTask.h"

@interface LSITimedTaskViewController ()

// MARK: - IBOutlets
@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (nonatomic) IBOutlet UITableView *tableView;

// MARK: - Properties
@property LSITimedTaskController *timedTaskController;

@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;

- (void) updateViews;
- (void) logTime;

@end

@implementation LSITimedTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.timedTaskController = [[LSITimedTaskController alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

}

// MARK: - IBActions
- (IBAction)logTimeButtonTapped:(id)sender
{
    [self logTime];
    [self.tableView reloadData];
}

// MARK: - Functions
- (void) updateViews
{
    _clientNameTextField.text = @"";
    _summaryTextField.text = @"";
    _hourlyRateTextField.text = @"";
    _hoursWorkedTextField.text = @"";

    [self.tableView reloadData];
}

- (void) logTime
{
    self.clientName = _clientNameTextField.text;
    self.summary = _summaryTextField.text;
    self.hourlyRate = [_hourlyRateTextField.text doubleValue];
    self.hoursWorked = [_hoursWorkedTextField.text doubleValue];

    [self.timedTaskController createTimedTaskWithClient:_clientName
                                                summary:_summary
                                             hourlyRate:_hourlyRate
                                            hoursWorked:_hoursWorked];

    [self updateViews];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier: @"taskCell" forIndexPath:indexPath];

    LSITimedTask *task = self.timedTaskController.timedTasks[indexPath.row];

    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString localizedStringWithFormat:@"$%.2f", task.total];

    return cell;
}

@end
