//
//  SABTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Stephanie Ballard on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SABTimeTrackerViewController.h"
#import "SABTimedTaskController.h"
#import "SABTimedTask.h"

@interface SABTimeTrackerViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic) SABTimedTaskController *timedTaskController;
@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString *workCompleted;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;

@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *workedCompletedTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation SABTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.timedTaskController = [[SABTimedTaskController alloc] init];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (IBAction)logTimeButtonTapped:(UIButton *)sender {
    self.clientName = self.clientNameTextField.text;
    self.workCompleted = self.workedCompletedTextField.text;
    self.hourlyRate = [self.hourlyRateTextField.text doubleValue];
    self.hoursWorked = [self.hoursWorkedTextField.text doubleValue];
    
    [self.timedTaskController createTimedTasksWithClientName:self.clientName
                                               workCompleted:self.workCompleted
                                                  hourlyRate:self.hourlyRate
                                                 hoursWorked:self.hoursWorked];
    [self.tableView reloadData];
    
    self.clientNameTextField.text = @"";
    self.workedCompletedTextField.text = @"";
    self.hourlyRateTextField.text = @"";
    self.hoursWorkedTextField.text = @"";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    
    SABTimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = timedTask.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$0.2f", timedTask.total];
    
    return cell;
}

@end
