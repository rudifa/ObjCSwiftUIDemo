#import "DemoViewController.h"

@interface DemoViewController ()
@property(nonatomic, strong) UILabel *messageLabel;
@property(nonatomic, strong) UIButton *actionButton;
@end

@implementation DemoViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor whiteColor];

  // Initialize message label
  self.messageLabel = [[UILabel alloc] init];
  self.messageLabel.translatesAutoresizingMaskIntoConstraints = NO;
  self.messageLabel.text = self.message ?: @"Hello from Objective-C!";
  self.messageLabel.textAlignment = NSTextAlignmentCenter;
  [self.view addSubview:self.messageLabel];

  // Initialize action button
  self.actionButton = [UIButton buttonWithType:UIButtonTypeSystem];
  self.actionButton.translatesAutoresizingMaskIntoConstraints = NO;
  [self.actionButton setTitle:@"Change Message" forState:UIControlStateNormal];
  [self.actionButton addTarget:self
                        action:@selector(changeMessage)
              forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:self.actionButton];

  // Setup constraints
  [NSLayoutConstraint activateConstraints:@[
    [self.messageLabel.centerXAnchor
        constraintEqualToAnchor:self.view.centerXAnchor],
    [self.messageLabel.centerYAnchor
        constraintEqualToAnchor:self.view.centerYAnchor],

    [self.actionButton.centerXAnchor
        constraintEqualToAnchor:self.view.centerXAnchor],
    [self.actionButton.topAnchor
        constraintEqualToAnchor:self.messageLabel.bottomAnchor
                       constant:20]
  ]];
}

- (void)changeMessage {
  NSArray *messages = @[
    @"Hello from Objective-C!", @"Greetings from iOS!", @"Welcome to the app!",
    @"Objective-C is fun!"
  ];
  NSString *newMessage = messages[arc4random_uniform((uint32_t)messages.count)];
  [self updateMessage:newMessage];
}

- (void)updateMessage:(NSString *)newMessage {
  self.message = newMessage;
  self.messageLabel.text = newMessage;
}

@end
