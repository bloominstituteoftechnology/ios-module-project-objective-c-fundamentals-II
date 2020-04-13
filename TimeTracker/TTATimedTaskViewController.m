//
//  TTATimedTaskViewController.m
//  TimeTracker
//
//  Created by Dillon P on 4/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TTATimedTaskViewController.h"
#import "TTATimedTaskController.h"
#import "TTATimeTracker.h"

@interface TTATimedTaskViewController ()

// Private Properties
@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double numberOfHours;
//@property (nonatomic) double total;

@property (nonatomic) TTATimedTaskController *timedTaskController;

// Private IBOutlets
@property (nonatomic) IBOutlet UITextField *clientTextField;
@property (nonatomic) IBOutlet UITextField *summaryTextField;
@property (nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (nonatomic) IBOutlet UITextField *numberOfHoursTextField;
@property (nonatomic) IBOutlet UITableView *tableView;

//Private methods
//- (void)logTask;

@end

@implementation TTATimedTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.timedTaskController = [[TTATimedTaskController alloc] init];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

// IBActions

- (IBAction)logTask:(id)sender
{
    _client = _clientTextField.text;
    _summary = _summaryTextField.text;
    _hourlyRate = [_hourlyRateTextField.text doubleValue];
    _numberOfHours = [_numberOfHoursTextField.text doubleValue];
    
    [_timedTaskController addTimedTask:[[TTATimeTracker alloc] initWithClient:_client
                                                                      summary:_summary
                                                                   hourlyRate:_hourlyRate
                                                                numberOfHours:_numberOfHours]];
    [_tableView reloadData];
    
    _clientTextField.text = @"";
    _summaryTextField.text = @"";
    _hourlyRateTextField.text = @"";
    _numberOfHoursTextField.text = @"";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_timedTaskController timedTasksCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TimeTrackerCell" forIndexPath:indexPath];
    
    TTATimeTracker *timedTask = [_timedTaskController taskAtIndex:indexPath.row];
    
    cell.textLabel.text = timedTask.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", timedTask.totalCost];
    
    
    return cell;
}

@end
