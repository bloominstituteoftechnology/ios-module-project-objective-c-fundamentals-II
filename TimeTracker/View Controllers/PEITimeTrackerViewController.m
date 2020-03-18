//
//  PEITimeTrackerViewController.m
//  TimeTracker
//
//  Created by Austin Potts on 3/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "PEITimeTrackerViewController.h"
#import "PEITimedTask.h"
#import "PEITimedTaskController.h"

//Adopt the UITableViewDataSource protocol in the header file of this view controller. Protocol adoption goes in between pair of angle brackets (<and >) after the subclass.
@interface PEITimeTrackerViewController () <UITableViewDelegate, UITableViewDataSource>

// Private Properties
//In the same @interface add a property of type TimedTaskController.
@property (nonatomic) PEITimedTaskController *timedTaskController;
@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString *workSummary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double timeWorked;
@property (readonly, nonatomic) double total;

@property (nonatomic) NSNumberFormatter *formatter;

@property (strong, nonatomic) IBOutlet UITextField *clientNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *summaryTextField;
@property (strong, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation PEITimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
   // In order to be able to access the TimedTaskController property you created, we must give it an instance of the model controller. Defining the property does not give it a value. In the viewDidLoad, set the property to a new instance of your model controller.
    _timedTaskController = [[PEITimedTaskController alloc] init];
    
    PEITimedTask *task = [[PEITimedTask alloc] initWithClientName:@"Billy Dude" workSummary:@"Creepy dude man" hourlyRate:20.10 timeWorked:8];
    
    [self.timedTaskController addTask:task];
     
      self.tableView.delegate = self;
      self.tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTask.count;
}

- (NSNumberFormatter *)formatter{
    if (!_formatter) {
        _formatter = [[NSNumberFormatter alloc] init];
        _formatter.numberStyle = NSNumberFormatterCurrencyStyle;
    }
    return _formatter;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    
    PEITimedTask *task = self.timedTaskController.timedTask[indexPath.row];
    cell.textLabel.text = task.clientName;
    cell.detailTextLabel.text = [self.formatter stringFromNumber:@(task.total)]; //Number literal syntax
    
    return cell;
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)logTime:(id)sender {

    
    _clientName = _clientNameTextField.text;
    _workSummary = _summaryTextField.text;
    _hourlyRate = [_hourlyRateTextField.text doubleValue];
    _timeWorked = [_hoursWorkedTextField.text doubleValue];
    
    [self.timedTaskController initWithClientName:_clientName workSummary:_workSummary hourlyRate:_hourlyRate timeWorked:_timeWorked];
    
    [self.tableView reloadData];
    
}


@end
