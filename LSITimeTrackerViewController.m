//
//  LSITimeTrackerViewController.m
//  TimeTracker
//
//  Created by Ufuk Türközü on 14.04.20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITimeTrackerViewController.h"
#import "LSITimedTask.h"
#import "LSITimedTaskController.h"

@interface LSITimeTrackerViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) LSITimedTaskController *timedTaskController;
@property (nonatomic, copy) NSString *client;
@property (nonatomic, copy) NSString *workSummary;
@property (nonatomic) double ratePerHour;
@property (nonatomic) double hoursWorked;
@property (nonatomic, readonly) double total;

@property (strong, nonatomic) IBOutlet UITextField *clientTF;
@property (strong, nonatomic) IBOutlet UITextField *workSummaryTF;
@property (strong, nonatomic) IBOutlet UITextField *ratePerHourTF;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTF;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation LSITimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    _timedTaskController = [[LSITimedTaskController alloc] init];
}

- (IBAction)logTime:(UIButton *)sender {
    _client = _clientTF.text;
    _workSummary = _workSummaryTF.text;
    _ratePerHour = [_ratePerHourTF.text doubleValue];
    _hoursWorked = [_hoursWorkedTF.text doubleValue];

    [self.timedTaskController createTimeTaskWithClient:_client workSummary:_workSummary ratePerHour:_ratePerHour hoursWorked:_hoursWorked];

    [self.tableView reloadData];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];

    LSITimedTask *task = self.timedTaskController.timedTasks[indexPath.row];
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", task.total];

    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTasks.count;
}
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //remove the deleted object from your data source.
        //If your data source is an NSMutableArray, do this
        [self.timedTaskController.timedTasks removeObjectAtIndex:indexPath.row];
        [tableView reloadData]; // tell table to refresh now
    }
}

@end
