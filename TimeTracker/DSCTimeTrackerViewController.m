//
//  DSCTimeTrackerViewController.m
//  TimeTracker
//
//  Created by denis cedeno on 5/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DSCTimeTrackerViewController.h"
#import "DSCTimedTaskController.h"
#import "DSCTimeTask.h"

@interface DSCTimeTrackerViewController ()
// Private Properties
@property (nonatomic) double total;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double timeWorked;
@property (nonatomic) NSString *workSummary;
@property (nonatomic) NSString *clientName;
@property (nonatomic)DSCTimedTaskController *taskController;

// Private IBOutlets
@property (nonatomic) IBOutlet UITextField *clientNameTextField;
@property (nonatomic) IBOutlet UITextField *summaryTextField;
@property (nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (weak, nonatomic) IBOutlet UIButton *logTimeButton;
@property (nonatomic) IBOutlet UITableView *tableView;

// Private Methods
- (void)calculateTotal;
- (void)updateViews;
- (void)saveTaskNameAndTotal;
@end

@implementation DSCTimeTrackerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.taskController = [[DSCTimedTaskController alloc]init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self calculateTotal];
}


- (void)calculateTotal
{
    self.clientName = self.clientNameTextField.text;
    self.workSummary = self.summaryTextField.text;
    self.hourlyRate = self.hourlyRateTextField.text.doubleValue;
    self.timeWorked = self.timeWorkedTextField.text.doubleValue;
    
    self.total = self.hourlyRate * self.timeWorked;
    
    [self updateViews];
}

-(void)updateViews
{
    self.clientNameTextField.text = self.clientName;
    self.summaryTextField.text = self.workSummary;
    self.hourlyRateTextField.text = [NSString stringWithFormat:@"$%.2f", self.hourlyRate];
    self.timeWorkedTextField.text = [NSString stringWithFormat:@"%.2f", self.timeWorked];
}

-(void)saveTaskNameAndTotal
{
    [self calculateTotal];
    
    [self.taskController addTask:[[DSCTimeTask alloc]
                                  initWithClient:self.clientName
                                  workSummary:self.workSummary
                                  rateCharged:self.hourlyRate
                                  hoursWorked:self.timeWorked]];
    [self.tableView reloadData];
    
}

// MARK: - IBActions

- (IBAction)logTime:(id)sender
{
    NSLog(@"task Name: %@", self.clientName);
    NSLog(@"task rate: %f", self.hourlyRate);
    NSLog(@"task hours: %f", self.timeWorked);
    NSLog(@"task summary: %@", self.workSummary);
    [self saveTaskNameAndTotal];
}

// MARK: - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.taskController.timeTasks.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    
    DSCTimeTask *task = [self.taskController taskAtIndex:indexPath.row];
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%.2f", task.total];
    return cell;
}

   
// MARK: - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DSCTimeTask *task = [self.taskController taskAtIndex:indexPath.row];
    self.clientName = task.client;
    self.hourlyRate = task.rateCharged;
    self.workSummary = task.workSummary;
    self.timeWorked = task.hoursWorked;
    
    [self updateViews];
    [self calculateTotal];
}

@end
