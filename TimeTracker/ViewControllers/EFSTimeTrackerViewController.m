//
//  EFSTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Clayton Watkins on 9/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "EFSTimeTrackerViewController.h"
#import "EFSTimedTaskController.h"
#import "EFSTimedTask.h"

@interface EFSTimeTrackerViewController ()
// Private IBOutlets
@property (weak, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *workSummaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (weak, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

// Private Properties
@property (nonatomic) EFSTimedTaskController *taskController;

@end

@implementation EFSTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.taskController = [[EFSTimedTaskController alloc] init];
}

// UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.taskController.taskArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    EFSTimedTask *task = [self.taskController taskAtIndex:indexPath.row];
    cell.textLabel.text = task.clientName;
    NSString *total = [NSString stringWithFormat:@"%0.2f", task.totalCost];
    cell.detailTextLabel.text = total;
    return cell;
}

// IBAction
- (IBAction)logTime:(id)sender {
    
    
}

@end
