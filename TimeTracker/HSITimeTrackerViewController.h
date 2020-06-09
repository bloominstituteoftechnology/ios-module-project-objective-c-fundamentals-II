//
//  HSITimeTrackerViewController.h
//  TimeTracker
//
//  Created by Kenny on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class HSITimedTaskController;

@interface HSITimeTrackerViewController : UIViewController

@property (nonatomic) HSITimedTaskController *taskController;

@end

NS_ASSUME_NONNULL_END
