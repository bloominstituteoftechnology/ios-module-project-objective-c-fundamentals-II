//
//  JLATimeTrackerViewController.m
//  TimeTracker
//
//  Created by Jorge Alvarez on 3/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "JLATimeTrackerViewController.h"
#import "JLATimedTaskController.h"
#import "JLATimedTask.h"

@interface JLATimeTrackerViewController () <UITableViewDelegate, UITableViewDataSource>

// Private Properties
@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;

@property (nonatomic) JLATimedTaskController *timedTaskController;

// Private IBOutlets
@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation JLATimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.timedTaskController = [[JLATimedTaskController alloc] init];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

// MARK: - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TimedTaskCell" forIndexPath:indexPath];
    
    JLATimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = timedTask.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%0.2f", timedTask.total];
    
    return cell;
}

// MARK: - Actions

- (IBAction)logTimeTapped:(UIButton *)sender {
    NSLog(@"log time tapped");
    
    self.clientName = self.clientNameTextField.text;
    self.summary = self.summaryTextField.text;
    self.hourlyRate = [self.hourlyRateTextField.text doubleValue];
    self.hoursWorked = [self.hoursWorkedTextField.text doubleValue];
    
    [self.timedTaskController createTimedTasksWithClientName:self.clientName
                                    summary:self.summary
                               hourlyRate:self.hourlyRate
                            hoursWorked:self.hoursWorked];
    
    [self.tableView reloadData];
    
}
@end
