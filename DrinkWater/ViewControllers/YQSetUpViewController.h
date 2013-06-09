#import <UIKit/UIKit.h>
#import "YQReminderViewController.h"

@interface YQSetUpViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (strong, nonatomic) IBOutlet UIPickerView *timePicker;

@end
