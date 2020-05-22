//
//  SKITimeTrackerViewController.m
//  TimeTracker
//
//  Created by Joshua Rutkowski on 5/22/20.
//  Copyright © 2020 Rutkowski. All rights reserved.
//

#import "SKITimeTrackerViewController.h"
#import "Model Controller/SKITimedTaskController.h" // Stupid Xcode
#import "SKITimedTask.h"

@interface SKITimeTrackerViewController ()
// MARK: - Private Properties
@property (nonatomic) SKITimedTaskController *timedTaskController;

// Private IBOutlets
@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation SKITimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _timedTaskController = [[SKITimedTaskController alloc] init];
    _tableView.delegate = self;
    _tableView.dataSource = self;
}
//MARK: - Actions
- (IBAction)logTime:(id)sender {
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
