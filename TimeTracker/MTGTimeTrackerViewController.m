//
//  MTGTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Mark Gerrior on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MTGTimeTrackerViewController.h"
#import "MTGTimedTaskController.h"
#import "MTGTimedTask.h"

@interface MTGTimeTrackerViewController () <UITableViewDelegate, UITableViewDataSource>

// Private IBOutlets

// Prefer strong with Outlets
@property (strong, nonatomic) IBOutlet UITextField *clientTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *timeWorkedTextField;

@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation MTGTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.timedTaskController = [[MTGTimedTaskController alloc] init];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

// MARK: - IBActions
- (IBAction)logTime:(UIButton *)sender {
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

    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TimedTaskCell" forIndexPath:indexPath];

    MTGTimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = timedTask.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", timedTask.total];

    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.timedTaskController.timedTasks.count;
}

@end
