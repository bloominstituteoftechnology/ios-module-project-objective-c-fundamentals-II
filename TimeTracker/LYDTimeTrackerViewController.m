//
//  LYDTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Lydia Zhang on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LYDTimeTrackerViewController.h"
#import "LYDTimedTask.h"
#import "LYDTimedTaskController.h"

@interface LYDTimeTrackerViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hrRate;
@property (nonatomic) double hrs;
@property (nonatomic, readonly) double total;

@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hrRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hrsTextField;
@property (strong, nonatomic) IBOutlet UITableView *taskTableView;


@end

@implementation LYDTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.taskTableView.delegate = self;
    self.taskTableView.dataSource = self;
    self.timedTaskController = [[LYDTimedTaskController alloc]init];
    
}
- (IBAction)logTimeTapped:(id)sender {
    _client = _clientNameTextField.text;
    _summary = _summaryTextField.text;
    _hrRate = [_hrRateTextField.text doubleValue];
    _hrs = [_hrsTextField.text doubleValue];
    
    [self.timedTaskController createTaskWithClient:_client summary:_summary hrRate:_hrRate hrs:_hrs];
    [self.taskTableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTaskArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.taskTableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    
    LYDTimedTask *task = [self.timedTaskController.timedTaskArray objectAtIndex:indexPath.row];
    cell.textLabel.text = task.client;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f",task.total];
    
    return cell;
}



@end
