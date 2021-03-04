//
//  LSITimeTrackerViewController.m
//  TimeTracker
//
//  Created by James McDougall on 3/4/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import "LSITimeTrackerViewController.h"

#import "LSITimeTrackerViewController.h"
#import "LSITimedTaskController.h"

//MARK: - Interface extension -
@interface LSITimeTrackerViewController ()
///Properties
@property LSITimedTaskController *timedTaskController;

///IBOutlets
@property (weak, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *payRateTextField;
@property (weak, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)LogTimeButtonTapped:(UIButton *)sender;

@end

//MARK: - Implementation -
@implementation LSITimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray<LSITimedTask*> *newEmptyArray = [[NSMutableArray alloc] initWithArray:@[]];
    _timedTaskController = [[LSITimedTaskController alloc] initWithTasksArray:newEmptyArray];
    _tableView.dataSource = self;
}

- (IBAction)LogTimeButtonTapped:(UIButton *)sender {
    
    NSString *clientName = _clientNameTextField.text;
    NSString *summary    = _summaryTextField.text;
    int       payRate    = _payRateTextField.text.intValue;
    int       timeWorked = _timeWorkedTextField.text.intValue;
    
    LSITimedTask *newTask = [[LSITimedTask alloc] initWithClientName:clientName workSummary:summary payRate:payRate hoursWorked:timeWorked];
    [_timedTaskController.timedTasks addObject:newTask];
    [_tableView reloadData];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    LSITimedTask *task = _timedTaskController.timedTasks[indexPath.row];
    NSString *payAmountString = [@(task.payAmount) stringValue];
    
    cell.textLabel.text = task.clientName;
    cell.detailTextLabel.text = [@"$" stringByAppendingString:payAmountString];
    
    return cell;
}

@end
