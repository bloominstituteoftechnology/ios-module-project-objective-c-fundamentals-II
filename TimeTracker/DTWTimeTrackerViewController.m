//
//  DTWTimeTrackerViewController.m
//  TimeTracker
//
//  Created by David Wright on 5/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DTWTimeTrackerViewController.h"
#import "DTWTimedTaskController.h"
#import "DTWTimedTask.h"

@interface DTWTimeTrackerViewController ()

// Private Properties
@property (nonatomic) DTWTimedTaskController *timedTaskController;

// Private IBOutlets
@property (nonatomic) IBOutlet UITextField *clientTextField;
@property (nonatomic) IBOutlet UITextField *summaryTextField;
@property (nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (nonatomic) IBOutlet UITableView *tableView;

@end

@implementation DTWTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.timedTaskController = [[DTWTimedTaskController alloc] init];
    
    self.tableView.dataSource = self;
}

// IBActions
- (IBAction)logTime:(id)sender
{
    
}

// UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.timedTaskController.timedTasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TimedTaskCell" forIndexPath:indexPath];
    
    DTWTimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    
    cell.textLabel.text = timedTask.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%.2f", timedTask.total];
    
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
