//
//  IGFTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Ian French on 9/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "IGFTimeTrackerViewController.h"
#import "IGFTimedTask.h"
#import "IGFTimedTaskController.h"

@interface IGFTimeTrackerViewController ()


// MARK: - IBOutlets

@property (nonatomic) IBOutlet UITextField *client;
@property (nonatomic) IBOutlet UITextField *summary;
@property (nonatomic) IBOutlet UITextField *hourlyRate;
@property (nonatomic) IBOutlet UITextField *hoursWorked;
@property (nonatomic) IBOutlet UITableView *tableView;


//MARK: - Properties

@property IGFTimedTaskController *timedTaskController;
@property IGFTimedTask *taskToEdit;

- (void) updateViews;
- (void) logTime;
- (void) addOrEditTask;

@end

@implementation IGFTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.timedTaskController = [[IGFTimedTaskController alloc] init];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

// MARK: - IBActions

- (IBAction)logTime:(id)sender {
    [self logTime];
    [self.tableView reloadData];
}

// MARK: - Functions

- (void) updateViews
{
    if (self.taskToEdit) {
        self.client.text = self.taskToEdit.client;
        self.summary.text = self.taskToEdit.summary;
        self.hourlyRate.text = [NSString localizedStringWithFormat:@"%.2f", self.taskToEdit.hourlyRate];
        self.hoursWorked.text = [NSString localizedStringWithFormat:@"%.2ld", self.taskToEdit.hoursWorked];
    } else {
        self.client.text = @"";
        self.summary.text = @"";
        self.hoursWorked.text = @"";
        self.hourlyRate.text = @"";
    }
}

- (void) addOrEditTask
{
    if (self.taskToEdit) {
        self.taskToEdit.client = self.client.text;
        self.taskToEdit.summary = self.summary.text;
        self.taskToEdit.hourlyRate = [self.hourlyRate.text doubleValue];
        self.taskToEdit.hoursWorked = [self.hoursWorked.text intValue];
    } else {
        NSString *client = self.client.text;
        NSString *summary = self.summary.text;
        double hourlyRate = [self.hourlyRate.text doubleValue];
        int hoursWorked = [self.hoursWorked.text intValue];

        [self.timedTaskController createTimedTaskWithClient:client summary:summary hoursWorked:hoursWorked hourlyRate:hourlyRate];
    }

    [self updateViews];
    [self.tableView reloadData];
}

- (void) logTime
{
    [self addOrEditTask];
}


// MARK: - UITableViewDataSource

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTasks.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"taskCell" forIndexPath:indexPath];
   IGFTimedTask *task = self.timedTaskController.timedTasks[indexPath.row];

    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString localizedStringWithFormat:@"$%.2f", task.total];

    return cell;
}

// MARK: - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.taskToEdit = self.timedTaskController.timedTasks[indexPath.row];
    [self updateViews];

}

@end

