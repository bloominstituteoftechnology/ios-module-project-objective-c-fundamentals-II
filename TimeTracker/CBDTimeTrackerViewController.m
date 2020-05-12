//
//  CBDTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Christopher Devito on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CBDTimeTrackerViewController.h"
#import "CBDTimedTaskController.h"
#import "CBDTimedTask.h"

@interface CBDTimeTrackerViewController ()

// MARK: - Private Properties
@property (nonatomic) CBDTimedTaskController *timedTaskController;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hoursWorked;
@property (nonatomic) double hourlyRate;

// MARK: - IBOutlets
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (weak, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

// MARK: - Private Methods

@end

@implementation CBDTimeTrackerViewController

// MARK: - IBActions
- (IBAction)logTime:(UIButton *)sender {
    self.name = self.nameTextField.text;
    self.summary = self.summaryTextField.text;
    self.hourlyRate = [self.hourlyRateTextField.text doubleValue];
    self.hoursWorked = [self.hoursWorkedTextField.text doubleValue];
    [self.timedTaskController createTimedTaskWith:self.name
                                          summary:self.summary
                                       hourlyRate:self.hourlyRate
                                      hoursWorked:self.hoursWorked];
    [self updateViews];
}

// MARK: - View Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    self.timedTaskController = [[CBDTimedTaskController alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)updateViews {
    [self.tableView reloadData];
    self.nameTextField.text = @"";
    self.summaryTextField.text = @"";
    self.hourlyRateTextField.text = @"";
    self.hoursWorkedTextField.text = @"";
}

// MARK: - TableView Data Source
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView
                 cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TimedTaskCell"
                                                                 forIndexPath:indexPath];
    
    CBDTimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = timedTask.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", timedTask.total];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTasks.count;
}

// MARK: - TableView Delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    CBDTimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    self.nameTextField.text = timedTask.name;
    self.summaryTextField.text = timedTask.summary;
    self.hoursWorkedTextField.text = [NSString stringWithFormat:@"%.2f", timedTask.hoursWorked];
    self.hourlyRateTextField.text = [NSString stringWithFormat:@"%.2f", timedTask.hourlyRate];
}

@end
