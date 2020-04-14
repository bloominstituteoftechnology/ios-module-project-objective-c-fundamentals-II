//
//  MBMTimedTrackViewController.m
//  TimeTracker
//
//  Created by Enrique Gongora on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MBMTimedTrackViewController.h"
#import "MBMTimedTask.h"
#import "MBMTimedTaskController.h"

@interface MBMTimedTrackViewController () <UITableViewDataSource, UITableViewDelegate>

// MARK: - Properties
@property (nonatomic) MBMTimedTaskController *timedTaskController;
@property (nonatomic) NSNumberFormatter *formatter;
@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summaryOfWork;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;
@property (nonatomic, readonly) double total;
@property (nonatomic) int index;
@property (nonatomic) MBMTimedTask *taskToUpdate;

// MARK: - IBOutlets
@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MBMTimedTrackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _timedTaskController = [[MBMTimedTaskController alloc] init];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

@end
