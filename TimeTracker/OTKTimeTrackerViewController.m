//
//  OTKTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Tobi Kuyoro on 12/05/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "OTKTimeTrackerViewController.h"
#import "OTKTimedTaskController.h"
#import "OTKTimedTask.h"

@interface OTKTimeTrackerViewController () <UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;

@end

@implementation OTKTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)logTime:(UIButton *)sender {
}

@end
