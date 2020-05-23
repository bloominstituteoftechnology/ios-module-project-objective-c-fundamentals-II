//
//  CLBTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Christian Lorenzo on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CLBTimeTrackerViewController.h"
#import "CLBTimedTaskController.h"
#import "CLBTimedTask.h"


@interface CLBTimeTrackerViewController ()

//MARK: - Private Properties:

@property CLBTimedTaskController *taskController;
@property CLBTimedTask *currentTask;

//MARK: - IBOutlets:

@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField1;
@property (strong, nonatomic) IBOutlet UITextField *workSummaryTextfield2;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField3;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField4;
@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *textFields;
@property (strong, nonatomic) IBOutlet UIButton *longTimeButton1;
@property (strong, nonatomic) IBOutlet UITableView *tableView1;

- (void)updateViews;
- (void)addOrUpdateTimedTask;

@end

@implementation CLBTimeTrackerViewController

//MARK: - Init

- (instancetype)initWithCoder:(NSCoder *)coder {
    if ([super initWithCoder:coder]) {
        _taskController = [[CLBTimedTaskController alloc] init];
    }
    return self;
}

//MARK: - View Lifecycle:

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView1.dataSource = self;
    self.tableView1.delegate = self;
    
    self.hourlyRateTextField3.keyboardType = UIKeyboardTypeDecimalPad;
    self.hoursWorkedTextField4.keyboardType = UIKeyboardTypeDecimalPad;
    
    for (UITextField *textField in self.textFields) {
        textField.delegate = self;
    }
}

//MARK: - Private Methods:

- (void)updateViews {
    if (self.currentTask != nil) {
        self.clientNameTextField1.text = self.currentTask.clientName;
        self.workSummaryTextfield2.text = self.currentTask.workSummary;
        self.hourlyRateTextField3.text = [NSString stringWithFormat:@"%0.2f", self.currentTask.hourlyRate];
        self.hoursWorkedTextField4.text = [NSString stringWithFormat:@"%0.2f", self.currentTask.hoursWorked];
        [self.longTimeButton1 setTitle:@"Update Time" forState:UIControlStateNormal];
    } else {
        for (UITextField *textField in self.textFields) {
            textField.text = @"";
        }
        [self.longTimeButton1 setTitle:@"Log Time" forState:UIControlStateNormal];
    }
}

- (void)addOrUpdateTimedTask {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    
    NSNumber *hourlyRate = [formatter numberFromString:self.hourlyRateTextField3.text];
    NSNumber *hoursWorked = [formatter numberFromString:self.hoursWorkedTextField4.text];
    
    if ([self.clientNameTextField1.text isEqualToString:@""] || hourlyRate == nil || hoursWorked == nil) {
        return;
    }
    
    if (self.currentTask != nil) {
        self.currentTask.clientName = self.clientNameTextField1.text;
        self.currentTask.workSummary = self.workSummaryTextfield2.text;
        self.currentTask.hourlyRate = hourlyRate.doubleValue;
        self.currentTask.hoursWorked = hoursWorked.doubleValue;
        self.currentTask = nil;
    } else {
        [self.taskController addTimedTaskWithClientName:self.clientNameTextField1.text workSummary:self.workSummaryTextfield2.text hourlyRate:hourlyRate.doubleValue hoursWorked:hoursWorked.doubleValue];
    }
    
    [self updateViews];
    [self.tableView1 reloadData];
}

//MARK: - IBActions:

-(IBAction)logTime:(UIButton *)sender {
    [self addOrUpdateTimedTask];
}

//MARK: - Table View Data Source

- (nonnull UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView1 dequeueReusableCellWithIdentifier:@"TimedTaskCell" forIndexPath:indexPath];
    
    CLBTimedTask *task = self.taskController.tasks[indexPath.row];
    cell.textLabel.text = task.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%.2f", task.totalBill];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.taskController.tasks.count;
}

//MARK: - Table View Delegate:

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.currentTask = self.taskController.tasks[indexPath.row];
    [self updateViews];
}

//MARK: - Text Field Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.clientNameTextField1) {
        [self.workSummaryTextfield2 becomeFirstResponder];
    } else if (textField == self.workSummaryTextfield2) {
        [self.hourlyRateTextField3 becomeFirstResponder];
    } else if (textField == self.hourlyRateTextField3) {
        [self.hoursWorkedTextField4 becomeFirstResponder];
    } else if (textField == self.hoursWorkedTextField4) {
        [self.hoursWorkedTextField4 resignFirstResponder];
    }
    
    return true;
}


@end
