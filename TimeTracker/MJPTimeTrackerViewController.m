//
//  MJPTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Mark Poggi on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MJPTimeTrackerViewController.h"
#import "MJPTimedTask.h"
#import "MJPTimedTaskController.h"

@interface MJPTimeTrackerViewController ()

// MARK: - Properties

@property (nonatomic) MJPTimedTaskController *timedTaskController;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hoursWorked;
@property (nonatomic) double hourlyRate;


// MARK: -IBOutlets

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MJPTimeTrackerViewController

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

// MARK: - View Controller Lifecyle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.timedTaskController = [[MJPTimedTaskController alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)updateViews {
    [self.tableView reloadData];
    self.nameTextField.text = @"";
    self.summaryTextField.text = @"";
    self.hoursWorkedTextField.text = @"";
    self.hourlyRateTextField.text = @"";
}

// MARK: - Tableview Datasource

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TaskCell"
                                                                 forIndexPath:indexPath];

    MJPTimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = timedTask.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%0.2f", timedTask.total];  // <-- rounding value here.
    return cell;

}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTasks.count;
}

@end
