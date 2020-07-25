//
//  CLPTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Chad Parker on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CLPTimeTrackerViewController.h"
#import "CLPTimedTaskController.h"
#import "CLPTimedTask.h"

@interface CLPTimeTrackerViewController ()

@property (nonatomic) IBOutlet UITextField *clientNameTextField;
@property (nonatomic) IBOutlet UITextField *summaryTextField;
@property (nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) CLPTimedTaskController *timedTaskController;

@end

@implementation CLPTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _timedTaskController = [[CLPTimedTaskController alloc] init];
    _tableView.dataSource = self;
}

- (IBAction)logTime:(UIButton *)sender {
    
}


// MARK: - UITableViewDataSource

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _timedTaskController.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TimedTaskCell" forIndexPath:indexPath];

    CLPTimedTask *timedTask = _timedTaskController.timedTasks[indexPath.row];
    cell.textLabel.text = timedTask.client;
    cell.detailTextLabel.text = [self currencyFormattedStringFrom:timedTask.total];

    return cell;
}


// MARK: - Number formatter

- (NSString *)currencyFormattedStringFrom:(NSDecimalNumber *)number {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = NSNumberFormatterCurrencyStyle;
    //formatter.currencyCode = self.comparisonCurrency;
    //formatter.usesSignificantDigits = YES;
    formatter.minimumFractionDigits = 2;
    return [formatter stringFromNumber:number];
}

@end
