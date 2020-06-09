//
//  CMDTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Chris Dobek on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CMDTimeTrackerViewController.h"
#import "CMDTimedTaskController.h"
#import "CMDTimedTask.h"

@interface CMDTimeTrackerViewController ()

// MARK: - Private Properties
@property (nonatomic) CMDTimedTaskController *timedTaskController;
@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString *workDescription;
@property (nonatomic) double hourlyRateCharged;
@property (nonatomic) double amountHoursWorked;
@property (nonatomic) BOOL isEditing;
@property (nonatomic) NSInteger index;

// MARK: Private IBOutlets
@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIButton *logTimeButton;

//MARK: Private Methods
- (void)updateViews;

@end

@implementation CMDTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _timedTaskController = [[CMDTimedTaskController alloc] init];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _logTimeButton.enabled = NO;
    [self setUpTextFields];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];

    [self.view addGestureRecognizer:tap];
}
//MARK: - Actions
- (IBAction)logTime:(id)sender {
    
    self.clientName = self.clientNameTextField.text;
    self.workDescription = self.summaryTextField.text;
    self.hourlyRateCharged = [self.hourlyRateTextField.text doubleValue];
    self.amountHoursWorked = [self.timeWorkedTextField.text doubleValue];
    if (self.isEditing) {
        [self.timedTaskController updateTimedTaskAt:self.index
                                         clientName:self.clientName
                                      workDescription:self.workDescription
                                    hourlyRateCharged:self.hourlyRateCharged
                                    amountHoursWorked:self.amountHoursWorked];
    } else {
        [self.timedTaskController createTimedTaskWith:self.clientName
                                      workDescription:self.workDescription
                                    hourlyRateCharged:self.hourlyRateCharged
                                    amountHoursWorked:self.amountHoursWorked];

    }

    [self updateViews];
}
// MARK: Methods

- (void)updateViews
{
    [self.tableView reloadData];
    self.clientNameTextField.text = @"";
    self.summaryTextField.text = @"";
    self.hourlyRateTextField.text =  @"";
    self.timeWorkedTextField.text = @"";
    _logTimeButton.enabled = NO;
    self.isEditing = NO;
}

- (void)textFieldDidChange:(UITextField *)textField
{
    if (_clientNameTextField.text.length > 0 && _summaryTextField.text.length > 0 && _hourlyRateTextField.text.length > 0 && _timeWorkedTextField.text.length > 0)
    {
        _logTimeButton.enabled = YES;
    } else {
        _logTimeButton.enabled = NO;
    }
}

- (void)setUpTextFields
{
    [_clientNameTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    [_summaryTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    [_hourlyRateTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    [_timeWorkedTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
}

-(void)dismissKeyboard
{
    [_clientNameTextField resignFirstResponder];
    [_summaryTextField resignFirstResponder];
    [_hourlyRateTextField resignFirstResponder];
    [_timeWorkedTextField resignFirstResponder];
}

// MARK: - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.timedTaskController.timedTasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    CMDTimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
    cell.textLabel.text = timedTask.clientName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", timedTask.totalAmount];
    return cell;
    
}

// Adds a "Delete" and "Edit" button
- (UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {
    UIContextualAction *delete = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleDestructive
                                                                         title:@"Delete"
                                                                       handler:^(UIContextualAction * _Nonnull action,
                                                                                 __kindof UIView * _Nonnull sourceView,
                                                                                 void (^ _Nonnull completionHandler)(BOOL))
    {
        // Deletes cell at indexPath.row
        [self.timedTaskController.timedTasks removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        completionHandler(YES);
    }];
    
    UIContextualAction *edit = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal
                                                                       title:@"Edit"
                                                                     handler:^(UIContextualAction * _Nonnull action,
                                                                                 __kindof UIView * _Nonnull sourceView,
                                                                                 void (^ _Nonnull completionHandler)(BOOL))
    {
        CMDTimedTask *timedTask = [self.timedTaskController.timedTasks objectAtIndex:indexPath.row];
        self.clientNameTextField.text = timedTask.clientName;
        self.summaryTextField.text = timedTask.workDescription;
        self.hourlyRateTextField.text = [NSString stringWithFormat:@"$%.2f", timedTask.hourlyRateCharged];
        self.timeWorkedTextField.text = [NSString stringWithFormat:@"%.2f", timedTask.amountHoursWorked];
        self.isEditing = YES;
        self.index = indexPath.row;
        NSLog(@"index path of rename: %@", indexPath);
        completionHandler(YES);
    }];
    
    UISwipeActionsConfiguration *swipeActionConfig = [UISwipeActionsConfiguration configurationWithActions:@[edit, delete]];
    swipeActionConfig.performsFirstActionWithFullSwipe = NO;
    
    return swipeActionConfig;
}

@end
