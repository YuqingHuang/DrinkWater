#import "YQSetUpViewController.h"

@interface YQSetUpViewController ()

@end

@implementation YQSetUpViewController

- (void)viewDidLoad {
    (UIDatePickerView *)self.timeInterval.subviews[0]
    NSLog(@"subviews:%@",self.timeInterval.subviews);
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[YQReminderViewController class]]) {
        YQReminderViewController *reminderViewController = (YQReminderViewController *) segue.destinationViewController;
        reminderViewController.timeInterval = self.timeInterval.countDownDuration;
    }
}

@end
