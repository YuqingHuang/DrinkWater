//
//  YQReminderViewController.m
//  DrinkWater
//
//  Created by Huang Yuqing on 5/8/13.
//
//

#import "YQReminderViewController.h"

@interface YQReminderViewController ()

@end

@implementation YQReminderViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"YQ is here");
    [self startReminder];
	// Do any additional setup after loading the view.
}

- (void)startReminder
{
    UILocalNotification *aNotification = [[UILocalNotification alloc] init];
    aNotification.fireDate = [NSDate date];
    aNotification.timeZone = [NSTimeZone defaultTimeZone];
    aNotification.repeatInterval = NSMinuteCalendarUnit;
//    aNotification.re
    NSLog(@"YQ's notification:%@", aNotification);
    
    aNotification.alertBody = @"Notification triggered";
    aNotification.alertAction = @"Details";
    [[UIApplication sharedApplication] scheduleLocalNotification:aNotification];
}
@end
