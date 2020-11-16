//
//  CMBTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Craig Belinfante on 11/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CMBTimeTrackerViewController.h"
#import "CMBTimedTaskController.h"

@interface CMBTimeTrackerViewController () <UITableViewDataSource, UITableViewDelegate>

//properties
@property (nonatomic) double amount;
@property (nonatomic) double total;
@property (nonatomic) int rate;
@property (nonatomic) CMBTimedTaskController *taskController;


//Outlets
@property (weak, nonatomic) IBOutlet UITextField *clientName;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *rateHourly;
@property (weak, nonatomic) IBOutlet UITextField *amountOfHours;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


//methods


@end

@implementation CMBTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.taskController = [[CMBTimedTaskController alloc] init];
    self.tableView.delegate = self;
 //   [[self tableView] setDelegate:self];
    self.tableView.dataSource = self;
    
}

- (void)logTimeNamed:(NSString *)name
{
    
}

//Action
- (IBAction)logTime:(id)sender
{
  //  [self asdfasdf]
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
