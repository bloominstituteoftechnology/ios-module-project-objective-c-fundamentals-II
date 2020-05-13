//
//  MKTImeTrackerViewController.m
//  TimeTracker
//
//  Created by Lambda_School_Loaner_268 on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MKTImeTrackerViewController.h"
#import "MKTimedController.h"
#import "MKTimedTask.h"

@interface MKTImeTrackerViewController () <UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UITextField *clientNameTF;
@property (strong, nonatomic) IBOutlet UITextField *summaryTF;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTF;
@property (strong, nonatomic) IBOutlet UITextField *timeWorkedTF;

@property (nonatomic) MKTimedTaskController *timeTaskController;
@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString * summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) int hoursWorked;
@property (nonatomic, readonly) double total;

@end

@implementation MKTImeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.timeTaskController = [[MKTimedTaskController alloc] init];
    self.tableView.dataSource = self;
    
}
- (IBAction)logTIme:(UIButton *)sender {
    self.clientName = _clientNameTF.text;
    self.summary = _summaryTF.text;
    self.hourlyRate = [_hourlyRateTF.text doubleValue];
    self.hoursWorked =[_timeWorkedTF.text doubleValue];
    
    
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
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"taskCell" forIndexPath:indexPath];
    MKTimedTask *task = [self.timeTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = task.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$f%.2f",  task.total];
    
    return cell;
    
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timeTaskController.timedTasks.count;
}

@end
