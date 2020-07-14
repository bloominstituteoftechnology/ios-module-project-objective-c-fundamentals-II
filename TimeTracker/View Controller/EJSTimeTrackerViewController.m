//
//  TimeTrackerViewController.m
//  TimeTracker
//
//  Created by Enzo Jimenez-Soto on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "EJSTimeTrackerViewController.h"
#import "EJSTimedTaskController.h"
#import "EJSTimedTask.h"


@interface EJSTimeTrackerViewController () <UITableViewDelegate, UITableViewDataSource>




@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;


@property (nonatomic) EJSTimedTaskController *timedTaskController;

@property (weak, nonatomic) IBOutlet UITextField *clientNameTextField;

@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;

@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;

@property (weak, nonatomic) IBOutlet UITextField *hoursWorkedTextField;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation EJSTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.timedTaskController = [[EJSTimedTaskController alloc] init];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TimedTaskCell" forIndexPath:indexPath];
    
    EJSTimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = timedTask.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%0.2f", timedTask.total];
    
    return cell;
    
}

- (IBAction)logTimeTapped:(UIButton *)sender {
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
