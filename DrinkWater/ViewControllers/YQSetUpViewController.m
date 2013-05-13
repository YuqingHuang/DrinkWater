#import "YQSetUpViewController.h"

@interface YQSetUpViewController ()

@end

@implementation YQSetUpViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[YQReminderViewController class]]) {
        YQReminderViewController *asker = (YQReminderViewController *) segue.destinationViewController;
        asker.timeInterval = self.timeInterval.countDownDuration;
    }
}

@end
