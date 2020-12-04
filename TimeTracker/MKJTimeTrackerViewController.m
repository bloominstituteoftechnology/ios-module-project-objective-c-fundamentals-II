//
//  MKJTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Kenneth Jones on 12/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MKJTimeTrackerViewController.h"
#import "MKJTimedTask.h"
#import "MKJTimedTaskController.h"

@interface MKJTimeTrackerViewController ()

@property (weak, nonatomic) IBOutlet UITextField *clientTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *rateTextField;
@property (weak, nonatomic) IBOutlet UITextField *hoursTextField;

@property (weak, nonatomic) IBOutlet UITableView *timeTableView;

@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summary;
@property (nonatomic) double rate;
@property (nonatomic) double hours;
@property (nonatomic) MKJTimedTaskController *taskController;

@end

@implementation MKJTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.taskController = [[MKJTimedTaskController alloc] init];
    
    self.timeTableView.dataSource = self;
}

- (IBAction)logTime:(id)sender {
    self.client = self.clientTextField.text;
    self.summary = self.summaryTextField.text;
    self.rate = self.rateTextField.text.doubleValue;
    self.hours = self.hoursTextField.text.doubleValue;
    
    [self.taskController createTimedTaskWithClient:self.client summary:self.summary rate:self.rate hours:self.hours];
    
    [self.timeTableView reloadData];
    
    self.clientTextField.text = @"";
    self.summaryTextField.text = @"";
    self.rateTextField.text = @"";
    self.hoursTextField.text = @"";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.taskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    
    MKJTimedTask *task = self.taskController.timedTasks[indexPath.row];
    
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString localizedStringWithFormat:@"$%.2f", task.total];
    
    return cell;
}

@end
