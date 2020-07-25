//
//  CLPTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Chad Parker on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CLPTimeTrackerViewController.h"

@interface CLPTimeTrackerViewController ()

@property (nonatomic) IBOutlet UITextField *clientNameTextField;
@property (nonatomic) IBOutlet UITextField *summaryTextField;
@property (nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (nonatomic) IBOutlet UITextField *hoursWorkedTextField;

@end

@implementation CLPTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)logTime:(UIButton *)sender {
    
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
