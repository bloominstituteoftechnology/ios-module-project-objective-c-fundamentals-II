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
    [self.timedTaskController createTimedTaskWithClient:self.clientTextField.text
                                                summary:self.summaryTextField.text
                                             hourlyRate:self.hourlyRateTextField.text.doubleValue
                                            hoursWorked:self.timeWorkedTextField.text.doubleValue];
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

@end
