//
//  TTRTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Sal B Amer on 5/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TTRTimeTrackerViewController.h"
#import "TTRTimedTaskController.h"
#import "TTRTimedTask.h"

@interface TTRTimeTrackerViewController () <UITableViewDataSource, UITableViewDelegate> // conform to UITableView Protocol


// MARK: Private properties
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double totalHours;
@property (nonatomic) double totalCost;
@property (nonatomic) TTRTimedTaskController *timeController;
@property (nonatomic) NSInteger index;
@property (nonatomic) BOOL isEditing;


// MARK: - IBOutlets
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *totalHoursTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
//@property (weak, nonatomic) IBOutlet UIButton *logTimeButton;



// MARK: - Private methods

@end

@implementation TTRTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
  self.timeController = [[TTRTimedTaskController alloc] init];
  self.tableView.delegate = self;
  self.tableView.dataSource = self;
//  self.logTimeButton.enabled = NO;
  
}

// TO DO - Calculate Time/Cost
- (void)calculateTimeCost
{
  self.hourlyRate = self.hourlyRateTextField.text.doubleValue;
  self.totalHours = self.totalHoursTextField.text.doubleValue;
  
}

// Update Views

-(void)updateViews
{
  [self.tableView reloadData];
  
  
  
}

// Log / Save time


//  MARK: - IB Actions

- (IBAction)saveTimeBtn:(id)sender
{
  self.name = self.nameTextField.text;
  self.summary = self.summaryTextField.text;
  self.hourlyRate = [self.hourlyRateTextField.text doubleValue];
  self.totalHours = [self.totalHoursTextField.text doubleValue];
  
  [self.timeController createTimedTaskWith:self.name
                                   summary:self.summary
                                hourlyRate:self.hourlyRate
                                totalHours:self.totalHours];
  
  [self updateViews];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// MARK: - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.timeController.timedTask.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TimesCell" forIndexPath:indexPath];
  TTRTimedTask *timedTask = [self.timeController.timedTask objectAtIndex:indexPath.row];
  
  cell.textLabel.text = timedTask.name;
  cell.detailTextLabel.text = [NSString stringWithFormat:@"Total Cost:$ %g",timedTask.totalCost];
  return cell;
}


// MARK: - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  TTRTimedTask *task = [self.timeController.timedTask objectAtIndex:indexPath.row];
  self.name = task.name;
  self.summary = task.summary;
  self.hourlyRate = task.hourlyRate;
  self.totalHours = task.totalHours;
  [self updateViews];
}



// MARK: Alert Helper

@end
