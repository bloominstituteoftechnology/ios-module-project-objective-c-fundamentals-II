//
//  SAHTimeTrackerViewController.m
//  TimeTracker
//
//  Created by scott harris on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SAHTimeTrackerViewController.h"
#import "SAHTimedTaskController.h"
#import "SAHTimedTask.h"

@interface SAHTimeTrackerViewController () <UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITextField *clientTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *rateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) SAHTimedTaskController *taskController;

@end

@implementation SAHTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (!_taskController) {
       _taskController = [[SAHTimedTaskController alloc] init];
    
    }
    
    self.tableView.dataSource = self;
    
}

- (IBAction)logTime:(UIButton *)sender {
    NSString *cleint = self.clientTextField.text;
    NSString *summary = self.summaryTextField.text;
    double rate = self.rateTextField.text.doubleValue;
    double hoursWorked = self.hoursWorkedTextField.text.doubleValue;
    
    [self.taskController createTimedTaskWithClient:cleint summary:summary rate:rate hoursWorked:hoursWorked];
    [self.tableView reloadData];
    
    self.clientTextField.text = @"";
    self.summaryTextField.text = @"";
    self.rateTextField.text = @"";
    self.hoursWorkedTextField.text = @"";
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.taskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TimeCell" forIndexPath:indexPath];
    
    SAHTimedTask *task = self.taskController.timedTasks[indexPath.row];
    NSString *formattedTotal = [[NSString alloc] initWithFormat:@"$%0.2f", task.total];
    
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = formattedTotal;
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
