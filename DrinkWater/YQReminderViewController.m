#import "YQReminderViewController.h"

@interface YQReminderViewController ()

@end

@implementation YQReminderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *text = [NSString stringWithFormat:@"From now on, every %d minutes, we will remind you to drink water", (int) self.timeInterval];
    self.reminderText.text = text;
    [self startReminder];
}

- (void)startReminder
{
    NSLog(@"interval:%f", self.timeInterval);
    UILocalNotification *aNotification = [[UILocalNotification alloc] init];
    NSDate *aFireDate = [[NSDate alloc] initWithTimeInterval:self.timeInterval*60 sinceDate:[NSDate date]];
    NSLog(@"YQ's fireDate:%@",aFireDate);
    aNotification.fireDate = aFireDate;
    aNotification.timeZone = [NSTimeZone defaultTimeZone];
    aNotification.repeatInterval = NSMinuteCalendarUnit;
    aNotification.alertBody = @"Go Drinking";
    aNotification.alertAction = @"Hi";

    NSLog(@"YQ's notification:%@", aNotification);
    [[UIApplication sharedApplication] scheduleLocalNotification:aNotification];
}
@end
