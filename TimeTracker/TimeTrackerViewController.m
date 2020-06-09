//
//  TimeTrackerViewController.m
//  TimeTracker
//
//  Created by Bhawnish Kumar on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TimeTrackerViewController.h"
#import "LSITimeTask.h"
#import "TimedTaskController.h"

@interface TimeTrackerViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation TimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.timeTaskController = [[TimedTaskController alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self updateViews];
}
- (IBAction)logTimeTapped:(UIButton *)sender {
    NSString *client;
    NSString *summary;
    double hourlyTotal;
    double timeWorked;
    
    client = self.clientNameTextField.text;
    summary = self.summaryTextField.text;
    hourlyTotal = [self.hourlyRateTextField.text doubleValue];
    timeWorked = [self.timeWorkedTextField.text doubleValue];
    
    [self.timeTaskController createTimedTaskWith:client
                                         summary:summary
                                      hourlyRate:hourlyTotal
                                      timeWorked:timeWorked];
    
    [self updateViews];
}

- (void)updateViews {
    [self.tableView reloadData];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timeTaskController.timeTask.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TimedTaskCell" forIndexPath:indexPath];
    
    LSITimeTask *timeTask = [self.timeTaskController.timeTask objectAtIndex:indexPath.row];
    cell.textLabel.text = timeTask.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", timeTask.total];
    
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
