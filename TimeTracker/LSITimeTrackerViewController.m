//
//  LSITimeTrackerViewController.m
//  TimeTracker
//
//  Created by Kelson Hartle on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITimeTrackerViewController.h"
#import "timerTaskController.h"
#import "LSITimedTask.h"

@interface LSITimeTrackerViewController ()


// Private Properties
@property timerTaskController *timeTrackerController;
@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString *workSummary;
@property (nonatomic) int hourlyRate;
@property (nonatomic) int amountOfHoursWorked;


// Private IBOutlets
@property (weak, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (weak, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


// Private Methods
- (void)saveTaskNamed:(NSString *)clientName;



@end

@implementation LSITimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*
     In order to be able to access the TimedTaskController property you created, we must give it an instance of the model controller. Defining the property does not give it a value. In the viewDidLoad, set the property to a new instance of your model controller.
     */
    self.timeTrackerController = [[timerTaskController alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}

- (void)saveTaskNamed:(NSString *)clientName {
    self.clientName = _clientNameTextField.text;
    self.workSummary = _summaryTextField.text;
    self.hourlyRate = [self.hourlyRateTextField.text intValue];
    self.amountOfHoursWorked = [self.timeWorkedTextField.text intValue];

    LSITimedTask *task = [[LSITimedTask alloc] initWithClientName:clientName workSummary:self.workSummary hourlyRate:self.hourlyRate amountOfHoursWorked:self.amountOfHoursWorked];
    
    [self.timeTrackerController createTimedTask:task];
    [self.tableView reloadData];
}



- (IBAction)logTimeButtonTapped:(UIButton *)sender {
    NSString *name = _clientNameTextField.text;
    
    [self saveTaskNamed:name];
    [self.tableView reloadData];
}




// MARK: - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timeTrackerController.tasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    
    LSITimedTask *task = [self.timeTrackerController.tasks objectAtIndex:indexPath.row];
    cell.textLabel.text = task.clientName;
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%.2f", task.totalPrice]; //TODO: add other attributes or a custom 
    
    return cell;
}



@end
