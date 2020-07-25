//
//  CLMTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Claudia Maciel on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CLMTimeTrackerViewController.h"

@interface CLMTimeTrackerViewController ()

// MARK: - IBOutlets
@property (nonatomic) IBOutlet UITextField *client;
@property (nonatomic) IBOutlet UITextField *summary;
@property (nonatomic) IBOutlet UITextField *hourlyRate;
@property (nonatomic) IBOutlet UITextField *hoursWorked;
@property (nonatomic) IBOutlet UITableView *tableView;

@end

@implementation CLMTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// MARK: - IBAction
- (IBAction)logTime:(id)sender
{
    [self logTime];
}

// MARK: - Functions
- (void) logTime {
    
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
