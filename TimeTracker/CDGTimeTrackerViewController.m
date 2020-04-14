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
@property CDGTimedTaskController* timedTaskController;
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
    if
        
//        (self.clientNameTextField.hasText && self.clientNameTextField.text.length > 0)
//        (self.workoutDescriptionTextField.hasText && self.workoutDescriptionTextField.text.length > 0)
         (self.hourlyRateTextField.hasText && self.hourlyRateTextField.text.length > 0)
//        (self.timeWorkTextField.hasText && self.timeWorkTextField.text.length > 0);
    {
        self.clientName = self.clientNameTextField.text;
        self.workoutDescription = self.timeWorkTextField.text;
        double  doubleHourlyRate = [self.hourlyRateTextField.text doubleValue];
        double timeWorked = [self.timeWorkTextField.text doubleValue];
        self.hourlyRate = doubleHourlyRate;
        self.hoursWorked = timeWorked;
        
        [[CDGTimedTaskController alloc] createTimedTask:self.clientName
                                     workoutDescription:self.workoutDescription
                                             hourlyRate:self.hourlyRate
                                            hoursWorked:self.hoursWorked];
        self.taskTableView.reloadData;
        
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
