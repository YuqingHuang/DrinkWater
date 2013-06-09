#import "YQSetUpViewController.h"

@interface YQSetUpViewController ()

@end

@implementation YQSetUpViewController {
    NSArray *timeDisplayStrs;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    timeDisplayStrs = @[@"30", @"40", @"50", @"60"];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    _timePicker.delegate = self;
    _timePicker.dataSource = self;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[YQReminderViewController class]]) {
        YQReminderViewController *reminderViewController = (YQReminderViewController *) segue.destinationViewController;

        reminderViewController.timeInterval = ([timeDisplayStrs[[self.timePicker selectedRowInComponent:0]] doubleValue]);
    }
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return timeDisplayStrs.count;
}

- (NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSMutableAttributedString *title = [[NSMutableAttributedString alloc] initWithString:timeDisplayStrs[row]];
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    style.alignment = NSTextAlignmentCenter;
    [title addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0,title.length)];
    return title;
}


@end
