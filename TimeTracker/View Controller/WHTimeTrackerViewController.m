//
//  WHTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Wyatt Harrell on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "WHTimeTrackerViewController.h"
#import "WHTimedTask.h"
#import "WHTimedTaskController.h"

@interface WHTimeTrackerViewController ()

@property WHTimedTaskController *taskController;

@property (strong, nonatomic) IBOutlet UITextField *clientTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation WHTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.taskController = [[WHTimedTaskController alloc] init];
    //self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (IBAction)logTime:(UIButton *)sender {
    
    [self.taskController createTimedTaskWith:self.clientTextField.text
                                     summary:self.summaryTextField.text
                                  hourlyRate:[self.hourlyRateTextField.text doubleValue]
                                 hoursWorked:[self.timeWorkedTextField.text doubleValue]];
    
    [self.tableView reloadData];
};

// MARK: - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.taskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    
    WHTimedTask *task = [self.taskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", task.total];
    
    return cell;
}

@end
