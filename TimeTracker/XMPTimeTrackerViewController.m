//
//  XMPTimeTrackerViewController.m
//  TimeTracker
//
//  Created by conner on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "XMPTimeTrackerViewController.h"
#import "XMPTimedTaskController.h"
#import "XMPTimedTask.h"

@interface XMPTimeTrackerViewController ()
// MARK: - IBOutlets, Properties
@property (weak, nonatomic) IBOutlet UITextField *clientTF;
@property (weak, nonatomic) IBOutlet UITextField *summaryTF;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTF;
@property (weak, nonatomic) IBOutlet UITextField *timeWorkedTF;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property XMPTimedTaskController* timedTaskController;
@end

@implementation XMPTimeTrackerViewController

// MARK: - IBActions
- (IBAction)logTime:(UIButton *)sender {
    if(_clientTF.text.length > 0 && _hourlyRateTF.text.length > 0 && _timeWorkedTF.text.length > 0) {
        if([_hourlyRateTF.text floatValue] <= 0 || [_timeWorkedTF.text floatValue] <= 0) { return; }
        // Input sanitized, create task
        [_timedTaskController
         createTimedTaskWithClientName:_clientTF.text
         summary:_summaryTF.text
         hourlyRate:[_hourlyRateTF.text floatValue]
         hoursWorked:[_timeWorkedTF.text floatValue]
        ];
        
        // Clear input fields
        _clientTF.text = @"";
        _summaryTF.text = @"";
        _hourlyRateTF.text = @"";
        _timeWorkedTF.text = @"";
        
        [_tableView reloadData];
    }
}

// MARK: - View Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.timedTaskController = [[XMPTimedTaskController alloc] init];
}

// MARK: - TableView Stuff
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    XMPTimedTask* taskForCell = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = taskForCell.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", taskForCell.total];
    return cell;
}

@end
