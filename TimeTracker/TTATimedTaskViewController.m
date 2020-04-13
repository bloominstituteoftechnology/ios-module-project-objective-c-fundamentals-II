//
//  TTATimedTaskViewController.m
//  TimeTracker
//
//  Created by Dillon P on 4/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TTATimedTaskViewController.h"
#import "TTATimedTaskController.h"
#import "TTATimeTracker.h"

@interface TTATimedTaskViewController ()

// Private Properties
@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double numberOfHours;
//@property (nonatomic) double total;

@property (nonatomic) TTATimedTaskController *timedTaskController;

// Private IBOutlets
@property (nonatomic) IBOutlet UITextField *clientTextField;
@property (nonatomic) IBOutlet UITextField *summaryTextField;
@property (nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (nonatomic) IBOutlet UITextField *numberOfHoursTextField;
@property (nonatomic) IBOutlet UITableView *tableView;

//Private methods
//- (void)logTask;

@end

@implementation TTATimedTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
