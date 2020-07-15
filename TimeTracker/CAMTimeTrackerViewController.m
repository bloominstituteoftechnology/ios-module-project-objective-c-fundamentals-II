//
//  CAMTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Cody Morley on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CAMTimeTrackerViewController.h"
#import "CAMTimedTaskController.h"

@interface CAMTimeTrackerViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *rateTextField;
@property (weak, nonatomic) IBOutlet UITextField *hoursTextField;
@property (weak, nonatomic) IBOutlet UITableView *tasksTableView;

@property (nonatomic) CAMTimedTaskController *taskController;

@end

@implementation CAMTimeTrackerViewController
- (IBAction)logTime:(id)sender {
    [self.taskController createTimedTaskWithName: self.nameTextField.text
                                         summary: self.summaryTextField.text
                                            rate: [self.rateTextField.text doubleValue]
                                           hours: [self.hoursTextField.text doubleValue]];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.taskController = [[CAMTimedTaskController alloc] init];
    self.tasksTableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.taskController.timedTasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tasksTableView dequeueReusableCellWithIdentifier: @"TaskCell"];
    CAMTimedTask *task = [self.taskController.timedTasks objectAtIndex:indexPath.row];
    
    cell.textLabel.text = task.name;
    cell.detailTextLabel.text = [NSString stringWithFormat: @"$%.2f", task.total];
    
    return cell;
}


@end
