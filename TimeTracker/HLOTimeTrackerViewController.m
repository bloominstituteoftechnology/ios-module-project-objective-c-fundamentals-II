//
//  HLOTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Karen Rodriguez on 5/11/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "HLOTimeTrackerViewController.h"
#import "HLOTimedTaskController.h"

@interface HLOTimeTrackerViewController () <UITableViewDataSource>

// MARK:- Outlets
@property (weak, nonatomic) IBOutlet UITextField *clientField;
@property (weak, nonatomic) IBOutlet UITextField *summaryField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyField;
@property (weak, nonatomic) IBOutlet UITextField *hoursField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

// MARK:- Actions
- (IBAction)logTime:(UIButton *)sender;

// MARK:- Properties
@property HLOTimedTaskController *taskController;

@end

@implementation HLOTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (!_taskController) {
        _taskController = [[HLOTimedTaskController alloc] init];
    }
    self.tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.taskController.tasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];

    HLOTimedTask *task = self.taskController.tasks[indexPath.row];

    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%0.02f", task.total] ;

    return cell;
}

- (IBAction)logTime:(UIButton *)sender {
}
@end
