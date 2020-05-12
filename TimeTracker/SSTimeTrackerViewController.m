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

@property SSTimedTaskController *taskController;

@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *workSummaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *textFields;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

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
    // Do any additional setup after loading the view.
    self.tableView.dataSource = self;
}

// MARK: - IBActions

- (IBAction)logTime:(UIButton *)sender {
    double hourlyRate = self.hourlyRateTextField.text.doubleValue;
    double hoursWorked = self.hoursWorkedTextField.text.doubleValue;
    
    [self.taskController addTimedTaskWithClientName:self.clientNameTextField.text
                                        workSummary:self.workSummaryTextField.text
                                         hourlyRate:hourlyRate
                                        hoursWorked:hoursWorked];
    
    for (UITextField *textField in self.textFields) {
        textField.text = @"";
    }
    
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

@end
