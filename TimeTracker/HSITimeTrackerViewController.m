//
//  HSITimeTrackerViewController.m
//  TimeTracker
//
//  Created by Kenny on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "HSITimeTrackerViewController.h"
#import "HSITimedTask.h"
#import "HSITimedTaskController.h"

@interface HSITimeTrackerViewController () <UITableViewDelegate, UITableViewDataSource>

// MARK: Private Properties
@property (nonatomic) HSITimedTask *currentTask;

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation HSITimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.taskController = [[HSITimedTaskController alloc] init];
    self.currentTask = [[HSITimedTask alloc] init];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"" forIndexPath:indexPath];
    HSITimedTask *task = [self.taskController.tasks objectAtIndex:indexPath.row];
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%.2f", task.total];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.taskController.tasks.count;
}

@end
