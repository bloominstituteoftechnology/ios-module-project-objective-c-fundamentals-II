//
//  HAOTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Hunter Oppel on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "HAOTimeTrackerViewController.h"
#import "HAOTimedTask.h"
#import "HAOTimedTaskController.h"

@interface HAOTimeTrackerViewController ()

@property HAOTimedTaskController *timedTaskController;

@property (strong, nonatomic) IBOutlet UITextField *clientTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

- (void)logTime;

@end

@implementation HAOTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    
    self.timedTaskController = [[HAOTimedTaskController alloc] init];
}

- (IBAction)logTime:(id)sender {
    [self logTime];
}

- (void)logTime
{
    NSString *client = self.clientTextField.text;
    NSString *summary = self.summaryTextField.text;
    double hourlyRate = [self.hourlyRateTextField.text doubleValue];
    int hoursWorked = [self.hoursWorkedTextField.text intValue];
    
    // TODO: check to make sure they aren't empty
    
    [self.timedTaskController createTimedTaskWith:client :summary :hourlyRate :hoursWorked];
    [self.tableView reloadData];
    
    self.clientTextField.text = @"";
    self.summaryTextField.text = @"";
    self.hourlyRateTextField.text = @"";
    self.hoursWorkedTextField.text = @"";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    
    HAOTimedTask *timedTask = self.timedTaskController.timedTasks[indexPath.row];
    
    cell.textLabel.text = timedTask.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", timedTask.totalWage];
    
    return cell;
}

@end
