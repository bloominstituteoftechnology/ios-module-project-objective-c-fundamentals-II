//
//  OTKTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Tobi Kuyoro on 12/05/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "OTKTimeTrackerViewController.h"
#import "OTKTimedTaskController.h"
#import "OTKTimedTask.h"

@interface OTKTimeTrackerViewController () <UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) OTKTimedTaskController *taskController;

@end

@implementation OTKTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.taskController = [[OTKTimedTaskController alloc] init];
    self.tableView.dataSource = self;
}

- (IBAction)logTime:(UIButton *)sender {
}

// MARK: - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.taskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];

    OTKTimedTask *task = [self.taskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%f.2f", task.total];

    return cell;
}

@end
