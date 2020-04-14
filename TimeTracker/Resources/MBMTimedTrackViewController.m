//
//  MBMTimedTrackViewController.m
//  TimeTracker
//
//  Created by Enrique Gongora on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MBMTimedTrackViewController.h"
#import "MBMTimedTask.h"
#import "MBMTimedTaskController.h"

@interface MBMTimedTrackViewController () <UITableViewDataSource, UITableViewDelegate>

// MARK: - Properties
@property (nonatomic) MBMTimedTaskController *timedTaskController;
@property (nonatomic) NSNumberFormatter *formatter;
@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summaryOfWork;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;
@property (nonatomic, readonly) double total;
@property (nonatomic) int index;
@property (nonatomic) MBMTimedTask *taskToUpdate;

// MARK: - IBOutlets
@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MBMTimedTrackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _timedTaskController = [[MBMTimedTaskController alloc] init];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

// MARK: - IBActions
- (IBAction)logTime:(id)sender {
    if (self.taskToUpdate == nil) {
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
    } else {
        self.taskToUpdate.client = _clientNameTextField.text;
        self.taskToUpdate.summaryOfWork = _summaryTextField.text;
        self.taskToUpdate.hourlyRate = [NSNumber numberWithDouble:[_hourlyRateTextField.text doubleValue]];
        self.taskToUpdate.hoursWorked = [NSNumber numberWithDouble:[_hoursWorkedTextField.text doubleValue]];
        
        [self.timedTaskController.timedTasks replaceObjectAtIndex:(self.index) withObject:self.taskToUpdate];
        NSLog(@"%d is the index", self.index);
        [self.tableView reloadData];
        _clientNameTextField.text = nil;
        _summaryTextField.text = nil;
        _hourlyRateTextField.text = nil;
        _hoursWorkedTextField.text = nil;
    }
}
// MARK: - Methods
- (NSNumberFormatter *)formatter {
    if (!_formatter) {
        _formatter = [[NSNumberFormatter alloc] init];
        _formatter.numberStyle = NSNumberFormatterCurrencyStyle;
    }
    return _formatter;
}

// MARK: TableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTasks.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    MBMTimedTask *task = self.timedTaskController.timedTasks[indexPath.row];
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [self.formatter stringFromNumber:@(task.total)];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    MBMTimedTask *selectedTask = self.timedTaskController.timedTasks[indexPath.row];
    _clientNameTextField.text = selectedTask.client;
    _summaryTextField.text = selectedTask.summaryOfWork;
    _hourlyRateTextField.text = [selectedTask.hourlyRate stringValue];
    _hoursWorkedTextField.text = [selectedTask.hoursWorked stringValue];
    
    NSUInteger indexToUpdate = [self.timedTaskController.timedTasks indexOfObject:selectedTask];
    self.index = (int) indexToUpdate;
    self.taskToUpdate = selectedTask;
}

@end
