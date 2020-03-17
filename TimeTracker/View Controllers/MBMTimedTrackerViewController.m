//
//  MBMTimedTrackerViewController.m
//  TimeTracker
//
//  Created by Michael on 3/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MBMTimedTrackerViewController.h"
#import "MBMTimedTask.h"
#import "MBMTimedTaskController.h"

@interface MBMTimedTrackerViewController () <UITableViewDataSource>

// Private Properties
@property (nonatomic) MBMTimedTaskController *timedTaskController;
@property (nonatomic) NSNumberFormatter *formatter;
@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summaryOfWork;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;
@property (readonly, nonatomic) double total;

// Private IBOutlets
@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;



@end

@implementation MBMTimedTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _timedTaskController = [[MBMTimedTaskController alloc] init];
    
    self.tableView.dataSource = self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// MARK: - IBActions

- (IBAction)logTime:(id)sender {
    _client = _clientNameTextField.text;
    _summaryOfWork = _summaryTextField.text;
    _hourlyRate = [_hourlyRateTextField.text doubleValue];
    _hoursWorked = [_hoursWorkedTextField.text doubleValue];
    
    [self.timedTaskController createTimedTaskWithClient:_client summaryOfWork:_summaryOfWork hourlyRate:_hourlyRate hoursWorked:_hoursWorked];
    [self.tableView reloadData];
    
    _clientNameTextField.text = nil;
    _summaryTextField.text = nil;
    _hourlyRateTextField.text = nil;
    _hoursWorkedTextField.text = nil;
}



// MARK: - UITableViewDataSource

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTasks.count;
}

- (NSNumberFormatter *)formatter {
    if (!_formatter) {
        _formatter = [[NSNumberFormatter alloc] init];
        _formatter.numberStyle = NSNumberFormatterCurrencyStyle;
    }
    return _formatter;
}
    
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    
    MBMTimedTask *task = self.timedTaskController.timedTasks[indexPath.row];
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [self.formatter stringFromNumber:@(task.total)];
    
    return cell;
}


@end
