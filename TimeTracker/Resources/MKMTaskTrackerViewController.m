//
//  MKMTaskTrackerViewController.m
//  TimeTracker
//
//  Created by Matthew Martindale on 7/26/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MKMTaskTrackerViewController.h"
#import "MKMTimedTaskController.h"
#import "MKMTimedTask.h"

@interface MKMTaskTrackerViewController ()

@property (nonatomic) MKMTimedTaskController *taskController;

@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summary;
@property (nonatomic) double timeWorked;
@property (nonatomic) double hourlyRate;

@property (nonatomic) IBOutlet UITextField *clientTextField;
@property (nonatomic) IBOutlet UITextField *summaryTextField;
@property (nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (nonatomic) IBOutlet UITableView *tableView;

// Private methods
- (void)updateViews;

@end

@implementation MKMTaskTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.taskController = [[MKMTimedTaskController alloc] init];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (IBAction)logTimeButtonTapped:(UIButton *)sender {
    
    self.client = _clientTextField.text;
    self.summary = _summaryTextField.text;
    self.timeWorked = [_timeWorkedTextField.text doubleValue];
    self.hourlyRate = [_hourlyRateTextField.text doubleValue];
    
    [self.taskController createTimedTask:_client
                                 summary:_summary
                               houryRate:_hourlyRate
                             hoursWorked:_timeWorked];
    [self updateViews];
}

- (void)updateViews
{
    _clientTextField.text = @"";
    _summaryTextField.text = @"";
    _hourlyRateTextField.text = @"";
    _timeWorkedTextField.text = @"";
    [_tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.taskController.taskCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    
    MKMTimedTask *task = [self.taskController taskAtIndex:indexPath.row];
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%.2f", task.total];
    return cell;
}

@end
