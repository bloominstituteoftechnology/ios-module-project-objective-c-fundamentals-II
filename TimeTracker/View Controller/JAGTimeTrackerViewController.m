//
//  JAGTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Jessie Ann Griffin on 5/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "JAGTimeTrackerViewController.h"
#import "JAGTimedTaskController.h"
#import "JAGTimedTask.h"

@interface JAGTimeTrackerViewController ()

// Private Properties
@property (nonatomic) JAGTimedTaskController *timedTaskController;
// Private IBOutlets
@property (weak, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (weak, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (weak, nonatomic) IBOutlet UITableView *timedTaskTableView;


@end

@implementation JAGTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.timedTaskController = [[JAGTimedTaskController alloc] init];
    self.timedTaskTableView.dataSource = self;
}

- (IBAction)logTime:(id)sender {
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView
                 cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    JAGTimedTask *task = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", task.totalBill];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return self.timedTaskController.timedTasks.count;
}

@end
