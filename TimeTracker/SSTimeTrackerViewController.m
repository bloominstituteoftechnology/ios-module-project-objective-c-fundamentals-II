//
//  SSTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Shawn Gee on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SSTimeTrackerViewController.h"
#import "SSTimedTaskController.h"
#import "SSTimedTask.h"

@interface SSTimeTrackerViewController ()

// MARK: - Private Properties

@property SSTimedTaskController *taskController;
@property SSTimedTask *currentTask;

// MARK: - IBOutlets

@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *workSummaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *textFields;

@property (strong, nonatomic) IBOutlet UIButton *logTimeButton;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

- (void)updateViews;

@end

@implementation SSTimeTrackerViewController

// MARK: - Init

- (instancetype)initWithCoder:(NSCoder *)coder {
    if ([super initWithCoder:coder]) {
        _taskController = [[SSTimedTaskController alloc] init];
    }
    return self;
}

// MARK: - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    self.hourlyRateTextField.keyboardType = UIKeyboardTypeDecimalPad;
    self.hoursWorkedTextField.keyboardType = UIKeyboardTypeDecimalPad;
    
    for (UITextField *textField in self.textFields) {
        textField.delegate = self;
    }
}

// MARK: - Private Methods

- (void)updateViews {
    if (self.currentTask != nil) {
        self.clientNameTextField.text = self.currentTask.clientName;
        self.workSummaryTextField.text = self.currentTask.workSummary;
        self.hourlyRateTextField.text = [NSString stringWithFormat:@"%0.2f", self.currentTask.hourlyRate];
        self.hoursWorkedTextField.text = [NSString stringWithFormat:@"%0.2f", self.currentTask.hoursWorked];
        [self.logTimeButton setTitle:@"Update Time" forState:UIControlStateNormal];
    } else {
        for (UITextField *textField in self.textFields) {
            textField.text = @"";
        }
        [self.logTimeButton setTitle:@"Log Time" forState:UIControlStateNormal];
    }
}

// MARK: - IBActions

- (IBAction)logTime:(UIButton *)sender {
    double hourlyRate = self.hourlyRateTextField.text.doubleValue;
    double hoursWorked = self.hoursWorkedTextField.text.doubleValue;
    
    if (self.currentTask != nil) {
        self.currentTask.clientName = self.clientNameTextField.text;
        self.currentTask.workSummary = self.workSummaryTextField.text;
        self.currentTask.hourlyRate = hourlyRate;
        self.currentTask.hoursWorked = hoursWorked;
        self.currentTask = nil;
    } else {
        [self.taskController addTimedTaskWithClientName:self.clientNameTextField.text
                                            workSummary:self.workSummaryTextField.text
                                             hourlyRate:hourlyRate
                                            hoursWorked:hoursWorked];
    }
    
    [self updateViews];
    [self.tableView reloadData];
}

// MARK: - Table View Data Source

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TimedTaskCell" forIndexPath:indexPath];
    
    SSTimedTask *task = self.taskController.tasks[indexPath.row];
    cell.textLabel.text = task.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%.2f", task.totalBill];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.taskController.tasks.count;
}

// MARK: - Table View Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.currentTask = self.taskController.tasks[indexPath.row];
    [self updateViews];
    
}

// MARK: - Text Field Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.clientNameTextField) {
        [self.workSummaryTextField becomeFirstResponder];
    } else if (textField == self.workSummaryTextField) {
        [self.hourlyRateTextField becomeFirstResponder];
    } else if (textField == self.hourlyRateTextField) {
        [self.hoursWorkedTextField becomeFirstResponder];
    } else if (textField == self.hoursWorkedTextField) {
        [self.hoursWorkedTextField resignFirstResponder];
    }
    
    return true;
}

@end
