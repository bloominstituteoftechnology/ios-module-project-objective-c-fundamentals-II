//
//  CDGTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Chris Gonzales on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CDGTimeTrackerViewController.h"
#import "CDGTimedTask.h"
#import "CDGTimedTaskController.h"

@interface CDGTimeTrackerViewController () <UITableViewDelegate, UITableViewDataSource>

// Properties
@property CDGTimedTaskController *timedTaskController;
@property (nonatomic, copy) NSString *clientName;
@property (nonatomic, copy) NSString *workoutDescription;
@property double hourlyRate;
@property double hoursWorked;

//Outlets
@property (weak, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *workoutDescriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (weak, nonatomic) IBOutlet UITextField *timeWorkTextField;
@property (weak, nonatomic) IBOutlet UITableView *taskTableView;


@end

@implementation CDGTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _timedTaskController = [[CDGTimedTaskController alloc] init];
    self.taskTableView.delegate = self;
    self.taskTableView.dataSource = self;

}

- (IBAction)logTimeTapped:(UIButton *)sender {
        if (self.clientNameTextField.hasText && self.workoutDescriptionTextField.hasText &&
            self.hourlyRateTextField.hasText && self.timeWorkTextField.hasText) {
            self.clientName = self.clientNameTextField.text;
            self.workoutDescription = self.timeWorkTextField.text;
            // @"abc".doubleValue of a non-number -> 0
            // @"25abc".doubleValue -> 25
            NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
            NSNumber *hourlyRate = [formatter numberFromString:self.hourlyRateTextField.text]; // can fail if String textfield is not a number
            if (hourlyRate) { // if (hourlyRate != nil) {
                self.hourlyRate = hourlyRate.doubleValue;
            } else {
                NSLog(@"Error: invalid number in hourlyRate input, ignore entry, or show UI to notify user");
            }
            NSNumber *timeWorked = [formatter numberFromString:self.timeWorkTextField.text]; // can fail if String textfield is not a number
            if (timeWorked) { // if (timeWorked != nil) {
                self.hoursWorked = timeWorked.doubleValue;
            } else {
                NSLog(@"Error: invalid number in hoursWorked input, ignore entry, or show UI to notify user");
            }
            [self.timedTaskController createTimedTask:self.clientName
                                         workoutDescription:self.workoutDescription
                                                 hourlyRate:self.hourlyRate
                                                hoursWorked:self.hoursWorked];
            [self.taskTableView reloadData];
        } else {
            return;
        }
    }

// TableView Data Source Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    CDGTimedTask *task = self.timedTaskController.timedTasks[indexPath.row];
    cell.textLabel.text = task.clientName;
    NSString *totalString = [NSString stringWithFormat:@"$%0.2f", task.total];
    cell.detailTextLabel.text = totalString;
    return cell;
}


@end
