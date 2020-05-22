//
//  SKITimeTrackerViewController.m
//  TimeTracker
//
//  Created by Joshua Rutkowski on 5/22/20.
//  Copyright © 2020 Rutkowski. All rights reserved.
//

#import "SKITimeTrackerViewController.h"
#import "Model Controller/SKITimedTaskController.h" // Stupid Xcode
#import "SKITimedTask.h"

@interface SKITimeTrackerViewController ()
// MARK: - Private Properties
@property (nonatomic) SKITimedTaskController *timedTaskController;
@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString *workDescription;
@property (nonatomic) double hourlyRateCharged;
@property (nonatomic) double amountHoursWorked;


// Private IBOutlets
@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

//Private Methods
- (void)updateViews;
@end

@implementation SKITimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _timedTaskController = [[SKITimedTaskController alloc] init];
    _tableView.delegate = self;
    _tableView.dataSource = self;
}
//MARK: - Actions
- (IBAction)logTime:(id)sender {
    self.clientName = self.clientNameTextField.text;
    self.workDescription = self.summaryTextField.text;
    self.hourlyRateCharged = [self.hourlyRateTextField.text doubleValue];
    self.amountHoursWorked = [self.timeWorkedTextField.text doubleValue];
    
    [self.timedTaskController createTimedTaskWith:self.clientName
                                  workDescription:self.workDescription
                                hourlyRateCharged:self.hourlyRateCharged
                                amountHoursWorked:self.amountHoursWorked];
    [self updateViews];
}

- (void)updateViews
{
    [self.tableView reloadData];
    self.clientNameTextField.text = @"";
    self.summaryTextField.text = @"";
    self.hourlyRateTextField.text =  @"";
    self.timeWorkedTextField.text = @"";
}

// MARK: - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    SKITimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = timedTask.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", timedTask.totalAmount];
    return cell;

}

@end
