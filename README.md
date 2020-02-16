# Objective-C Fundamentals II Module Project - TimeTracker

## Introduction

You will be creating an app that tracks the amount of time you are working on a particular job for a client to accurately invoice them for based on how much you charge per hour.

Please look at the screen recording below to get an idea of how the finished project should look and function:

![](https://tk-assets.lambdaschool.com/03b80929-4338-4f29-91b4-8664a6d73af9_Obj-CFundamentalsModuleProjectScreenRecording.gif)

## Instructions

Please fork and clone this repository. It contains a starter project with the storyboard already completed for you.

**Be regularly committing and pushing your code as appropriate.**

### Part 1 - TimedTask

1. Create a new `NSObject` subclass and call it `TimedTask` with (your personal 3 letter prefix at the beginning).

2. In the header, create properties for the following and remember to add the `*` to the ones that need it:

    - The client
    - The summary of the work you did
    - The hourly rate charged
    - The amount of hours worked
    - The total

3. Think about which property attributes each of these should have and add them. For example, we can calculate the total from the hourly rate multiplied by the hours worked. We could make the total have a `readonly` property so it doesn't create a setter. Later on in the getter, you can just perform that math in the getter. Think of it as the Objective-C version of a Swift computed property.

4. Still in the header, define a standard memberwise initializer that takes in the four non-read only properties.

5. In the .m file of the `TimedTask` implement the initializer by:
    - Calling the super initializer
    - Checking if self isn't nil
    - Setting the `_` version of your four `readwrite` properties (`_client`, etc.)
    - Returning self.
6. Implement the getter method for your total property by multiplying the timed task's hourly rate with the hours worked. This method should autocomplete if you start typing out the name of the property. For example, it should look something like this `- (double)total`.

### Part 2 - TimedTaskController

Create a new Cocoa Touch `NSObject` subclass called `TimedTaskController` (again with your prefix).

1. In the header file, Create a property that is an `NSMutableArray` of your `TimedTask`s. What property attributes should this have?

2. Also in the header define a `createTimedTaskWith` function that takes in each of the 4  settable properties of a `TimedTask`.

3. Going to the .m file of this `TimedTaskController`, call the basic `init` initializer. Follow the same pattern for implementing an initializer. Set the `_timedTasks` to a new instance of `NSMutableArray`.

4. Implement the `createTimedTaskWith` method. This should initialize a `TimedTask`, then add it to the `timedTasks` array. Remember that there is no `append` method in Objective-C, but the function that does the same thing is called something else.

### Part 3 - TimeTrackerViewController

Create a new Cocoa Touch subclass of `UIViewController` called `TimeTrackerViewController` (with your prefix attached).

1. Adopt the `UITableViewDataSource` protocol in the header file of this view controller. Protocol adoption goes in between pair of angle brackets (`<`and `>`) after the subclass. For example: 

```
@interface LSITimeTrackerViewController : UIViewController <YourProtocolHere>
```

In the .m file of this view controller, you'll notice that there is an `@interface` here as well. You will learn about these in greater detail later on, but this is where you should add the outlets to your UI elements and any other properties you'd like to be private and only accessible to this class.

2. Add outlets from the four text fields and your table view in this `@interface`. Add an action from the button in the storyboard to the `@implementation` called `logTime`.

3. In the same `@interface` add a property of type `TimedTaskController`.

4. In order to be able to access the `TimedTaskController` property you created, we must give it an instance of the model controller. Defining the property _does not_ give it a value. In the `viewDidLoad`, set the property to a new instance of your model controller.

5. Also in the `viewDidLoad` set the view controller as the data source for the table view.

6. Implement the `numberOfRowsInSection` and `cellForRowAtIndexPath` methods just as you would in Swift. The cell's text label should show the `TimedTask`'s client, and the detail text label should show the total. Try to format the total so it has the same format as `$231.40`.

7. In the `logTime` action, pull out each value from the 4 text fields and pass them in to the model controller's `createTimedTaskWith` method. After that, reload the table view and set the text fields' text to be an empty string.

8. Test the app to make sure it works.

## Go Further

- Commit your final working version with the above requirements, then add the ability to tap on a saved `TimedTask` and have it fill in the text fields to allow you to update it, making sure you do not create a new timed task.
