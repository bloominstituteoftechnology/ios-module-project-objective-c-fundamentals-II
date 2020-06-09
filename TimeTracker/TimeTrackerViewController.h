//
//  TimeTrackerViewController.h
//  TimeTracker
//
//  Created by Bhawnish Kumar on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TimedTaskController;
NS_ASSUME_NONNULL_BEGIN

@interface TimeTrackerViewController : UIViewController

@property (nonatomic) TimedTaskController *timeTaskController;

@end

NS_ASSUME_NONNULL_END
