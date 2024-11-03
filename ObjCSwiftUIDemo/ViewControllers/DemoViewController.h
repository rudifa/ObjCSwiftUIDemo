// DemoViewController.h
#import <UIKit/UIKit.h>

@interface DemoViewController : UIViewController

@property (nonatomic, strong) NSString *message;
- (void)updateMessage:(NSString *)newMessage;

@end
