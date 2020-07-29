//
//  JMCTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Jarren Campos on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "JMCTimeTrackerViewController.h"
#import "JMCTimedTaskController.h"
#import "JMCTimedTask.h"

@interface JMCTimeTrackerViewController ()

@property (nonatomic) JMCTimedTaskController *timedTaskController;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hoursWorked;
@property (nonatomic) double hourlyRate;
@property (nonatomic) BOOL isEditing;
@property (nonatomic) int index;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (weak, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation JMCTimeTrackerViewController

- (IBAction)logTime:(UIButton *)sender {
    self.name = self.nameTextField.text;
    self.summary = self.summaryTextField.text;
    self.hourlyRate = [self.hourlyRateTextField.text doubleValue];
    self.hoursWorked = [self.hoursWorkedTextField.text doubleValue];
    
    if (self.isEditing) {
        [self.timedTaskController updateTimedTaskAt:self.index
                                               name:self.name
                                            summary:self.summary
                                         hourlyRate:self.hourlyRate
                                        hoursWorked:self.hoursWorked];
    } else {
        [self.timedTaskController createTimedTaskWith:self.name
                                              summary:self.summary
                                           hourlyRate:self.hourlyRate
                                          hoursWorked:self.hoursWorked];
    }
    
    [self updateViews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.timedTaskController = [[JMCTimedTaskController alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.isEditing = NO;
}

- (void)updateViews {
    [self.tableView reloadData];
    self.nameTextField.text = @"";
    self.summaryTextField.text = @"";
    self.hourlyRateTextField.text = @"";
    self.hoursWorkedTextField.text = @"";
    self.isEditing = NO;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView
                 cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"taskCell"
                                                                 forIndexPath:indexPath];
    
    JMCTimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = timedTask.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", timedTask.total];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTasks.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    JMCTimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    self.nameTextField.text = timedTask.name;
    self.summaryTextField.text = timedTask.summary;
    self.hoursWorkedTextField.text = [NSString stringWithFormat:@"%.2f", timedTask.hoursWorked];
    self.hourlyRateTextField.text = [NSString stringWithFormat:@"%.2f", timedTask.hourlyRate];
    self.isEditing = YES;
    self.index = indexPath.row;
}

@end
