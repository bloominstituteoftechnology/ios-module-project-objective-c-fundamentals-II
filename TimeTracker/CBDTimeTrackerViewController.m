//
//  CBDTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Christopher Devito on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CBDTimeTrackerViewController.h"
#import "CBDTimedTaskController.h"
#import "CBDTimedTask.h"

@interface CBDTimeTrackerViewController ()

// MARK: - Private Properties
@property (nonatomic) CBDTimedTaskController *timedTaskController;

// MARK: - IBOutlets
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (weak, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

// MARK: - Private Methods

@end

@implementation CBDTimeTrackerViewController

// MARK: - Properties

// MARK: - IBActions
- (IBAction)logTime:(UIButton *)sender {
}

// MARK: - Initializer
- (void)viewDidLoad {
    [super viewDidLoad];
    self.timedTaskController = [[CBDTimedTaskController alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// MARK: - TableView Data Source
//- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
//    <#code#>
//}
//
//- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    <#code#>
//}

@end
