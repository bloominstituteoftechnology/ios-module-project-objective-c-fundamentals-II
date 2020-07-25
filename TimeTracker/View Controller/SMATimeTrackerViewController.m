//
//  SMATimeTrackerViewController.m
//  TimeTracker
//
//  Created by Sean Acres on 7/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SMATimeTrackerViewController.h"
#import "../Model Controller/SMATimedTaskController.h"
#import "../Model/SMATimedTask.h"

@interface SMATimeTrackerViewController ()

@property (weak, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *workSummaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (weak, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) SMATimedTaskController *timedTaskController;

@end

@implementation SMATimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.timedTaskController = [[SMATimedTaskController alloc] init];
    self.tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TimedTaskCell" forIndexPath:indexPath];
    
    SMATimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = timedTask.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", timedTask.total];
    
    return cell;
}

- (IBAction)logTimeTapped:(id)sender {
    [self.timedTaskController createTimedTaskWithClientName:self.clientNameTextField.text
                                                workSummary:self.workSummaryTextField.text
                                                 hourlyRate:[self.hourlyRateTextField.text doubleValue]
                                                 timeWorked:[self.timeWorkedTextField.text doubleValue]];
    
    [self.tableView reloadData];
    self.clientNameTextField.text = @"";
    self.workSummaryTextField.text = @"";
    self.hourlyRateTextField.text = @"";
    self.timeWorkedTextField.text = @"";
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
