//
//  MKMTaskTrackerViewController.m
//  TimeTracker
//
//  Created by Matthew Martindale on 7/26/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MKMTaskTrackerViewController.h"
#import "MKMTimedTaskController.h"
#import "MKMTimedTask.h"

@interface MKMTaskTrackerViewController ()

@property (nonatomic) MKMTimedTaskController *taskController;

@property (nonatomic) IBOutlet UITextField *clientTextField;
@property (nonatomic) IBOutlet UITextField *summaryTextField;
@property (nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MKMTaskTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.taskController = [[MKMTimedTaskController alloc] init];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (IBAction)logTimeButtonTapped:(UIButton *)sender {
}


@end
