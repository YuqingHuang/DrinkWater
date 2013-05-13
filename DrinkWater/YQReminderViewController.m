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
    [self startReminder];
}

- (void)startReminder
{
    NSLog(@"interval:%f", self.timeInterval);
    UILocalNotification *aNotification = [[UILocalNotification alloc] init];
    NSDate *aFireDate = [[NSDate alloc] initWithTimeInterval:2*60 sinceDate:[NSDate date]];
    NSLog(@"YQ's fireDate:%@",aFireDate);
    aNotification.fireDate = aFireDate;
    aNotification.timeZone = [NSTimeZone defaultTimeZone];
    aNotification.repeatInterval = NSMinuteCalendarUnit;
    aNotification.alertBody = @"Go Drinking";
    aNotification.alertAction = @"Hi";

    NSLog(@"YQ's notification:%@", aNotification);
    
    aNotification.alertBody = @"Notification triggered";
    aNotification.alertAction = @"Details";
    [[UIApplication sharedApplication] scheduleLocalNotification:aNotification];
}
@end
