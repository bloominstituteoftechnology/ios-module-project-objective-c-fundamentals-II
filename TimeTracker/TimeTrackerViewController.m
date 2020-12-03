//
//  TimeTrackerViewController.m
//  TimeTracker
//
//  Created by John McCants on 12/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TimeTrackerViewController.h"
#import "TimedTask.h"
#import "TaskModelController.h"

@interface TimeTrackerViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (weak, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (weak, nonatomic) IBOutlet UIButton *logTimeButton;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property TaskModelController *taskController;


@end

@implementation TimeTrackerViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.taskController = [[TaskModelController alloc]init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)updateViews
{
    _clientNameTextField.text = @"";
    _summaryTextField.text = @"";
    _hoursWorkedTextField.text = @"";
    _hourlyRateTextField.text = @"";
    
}
- (IBAction)logTimeButtonTapped:(UIButton *)sender {
    
    [_taskController createTimedTaskWith:_clientNameTextField.text summaryText:_summaryTextField.text
        hourlyRate:[_hourlyRateTextField.text doubleValue]
                             hoursWorked:[_hoursWorkedTextField.text doubleValue]];
    
    [_tableView reloadData];
    
    [self updateViews];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.taskController.taskArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell"
                                                          forIndexPath:indexPath];
    
    TimedTask *task = [self.taskController.taskArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = task.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%0.2f", task.totalAmount];
    
    return cell;
}

@end
