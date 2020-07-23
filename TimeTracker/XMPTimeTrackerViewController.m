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
@property BOOL isEditing;
@property NSInteger atIndex;
@end

@implementation XMPTimeTrackerViewController

// MARK: - IBActions
- (IBAction)logTime:(UIButton *)sender {
    if(_clientTF.text.length > 0 && _hourlyRateTF.text.length > 0 && _timeWorkedTF.text.length > 0) {
        if([_hourlyRateTF.text floatValue] <= 0 || [_timeWorkedTF.text floatValue] <= 0) { return; }
        
        // Input sanitized, create task
        if(!_isEditing) {
            [_timedTaskController
             createTimedTaskWithClientName:_clientTF.text
             summary:_summaryTF.text
             hourlyRate:[_hourlyRateTF.text floatValue]
             hoursWorked:[_timeWorkedTF.text floatValue]
            ];
        } else {
            // User is editing a task @ timedTasks[atIndex]
            XMPTimedTask* editedTask = [[XMPTimedTask alloc]
                initWithClientName:_clientTF.text
                summary:_summaryTF.text
                hourlyRate:[_hourlyRateTF.text floatValue]
                hoursWorked:[_timeWorkedTF.text floatValue]
            ];
            
            // Replace task @ index with editedTask
            [_timedTaskController.timedTasks replaceObjectAtIndex:_atIndex withObject:editedTask];
        }
        
        // Clear input fields
        _clientTF.text = @"";
        _summaryTF.text = @"";
        _hourlyRateTF.text = @"";
        _timeWorkedTF.text = @"";
        _isEditing = NO;
        
        [_tableView reloadData];
    }
}

// MARK: - View Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    _timedTaskController = [[XMPTimedTaskController alloc] init];
    _isEditing = NO;
}

// MARK: - TableView Stuff
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _timedTaskController.timedTasks.count;
}

// Configure Cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    XMPTimedTask* taskForCell = _timedTaskController.timedTasks[indexPath.row];
    cell.textLabel.text = taskForCell.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", taskForCell.total];
    return cell;
}

// Select row to edit object
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Selected row %ld", (long)indexPath.row);
    XMPTimedTask* selectedTask = _timedTaskController.timedTasks[indexPath.row];
    _clientTF.text = selectedTask.clientName;
    _summaryTF.text = selectedTask.summary;
    _hourlyRateTF.text = [NSString stringWithFormat:@"%.2f", selectedTask.hourlyRate];
    _timeWorkedTF.text = [NSString stringWithFormat:@"%.2f", selectedTask.hoursWorked];
    _isEditing = YES;
    _atIndex = indexPath.row;
}
@end
