//
//  CLMTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Claudia Maciel on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CLMTimeTrackerViewController.h"
#import "CLMTimedTaskController.h"
#import "CLMTimedTask.h"

@interface CLMTimeTrackerViewController ()

// MARK: - IBOutlets
@property (nonatomic) IBOutlet UITextField *client;
@property (nonatomic) IBOutlet UITextField *summary;
@property (nonatomic) IBOutlet UITextField *hourlyRate;
@property (nonatomic) IBOutlet UITextField *hoursWorked;
@property (nonatomic) IBOutlet UITableView *tableView;


//MARK: - Properties
@property CLMTimedTaskController *timedTaskController;


@end

@implementation CLMTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.timedTaskController = [[CLMTimedTaskController alloc] init];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

// MARK: - IBAction
- (IBAction)logTime:(id)sender
{
    [self logTime];
    [self.tableView reloadData];
}

// MARK: - Functions
- (void) logTime {
    NSString *client = self.client.text;
    NSString *summary = self.summary.text;
    double hourlyRate = [self.hourlyRate.text doubleValue];
    int hoursWorked = [self.hoursWorked.text intValue];
    
    [self.timedTaskController createTimedTaskWithClient:client summary:summary hoursWorked:hoursWorked hourlyRate:hourlyRate];
    
    self.client.text = @"";
    self.summary.text = @"";
    self.hoursWorked.text = @"";
    self.hourlyRate.text = @"";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// MARK: - UITableViewDataSource
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTasks.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"taskCell" forIndexPath:indexPath];
    CLMTimedTask *task = self.timedTaskController.timedTasks[indexPath.row];
    
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString localizedStringWithFormat:@"$%.2f", task.total];
    
    return cell;
}

@end
