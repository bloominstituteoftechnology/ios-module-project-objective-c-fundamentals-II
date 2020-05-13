//
//  MTGTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Mark Gerrior on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MTGTimeTrackerViewController.h"
#import "MTGTimedTaskController.h"
#import "MTGTimedTask.h"

@interface MTGTimeTrackerViewController () <UITableViewDelegate, UITableViewDataSource>

// Private IBOutlets

// Prefer strong with Outlets
@property (strong, nonatomic) IBOutlet UITextField *clientTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *timeWorkedTextField;

@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation MTGTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.timedTaskController = [[MTGTimedTaskController alloc] init];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;

    [self updateViews];
}

// MARK: - IBActions
- (IBAction)logTime:(UIButton *)sender {
    [self collectUserInputAndCreateTimedTask];
}

- (void)collectUserInputAndCreateTimedTask {

    NSString *client;
    NSString *summary;
    double hourlyRate;
double timeWorked;

client = self.clientTextField.text;
summary = self.summaryTextField.text;
// TODO: Is .text secretly an NSNumber?
hourlyRate = [self.hourlyRateTextField.text doubleValue];
timeWorked = [self.timeWorkedTextField.text doubleValue];

    [self.timedTaskController createTimedTaskWith:client
                                      workSummary:summary
                                       hourlyRate:hourlyRate
                                      hoursWorked:timeWorked];

    [self clearUserInputs];
    [self updateViews];
}

- (void)clearUserInputs {
    self.clientTextField.text = @"";
    self.summaryTextField.text = @"";
    self.hourlyRateTextField.text = @"";
    self.timeWorkedTextField.text = @"";
}

- (void)updateViews {
    [self.tableView reloadData];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {

    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TimedTaskCell" forIndexPath:indexPath];

    MTGTimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = timedTask.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", timedTask.total];

    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.timedTaskController.timedTasks.count;
}

@end
