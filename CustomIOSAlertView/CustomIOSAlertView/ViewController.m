//
//  ViewController.m
//  CustomIOSAlertView
//
//  Created by Richard on 20/09/2013.
//  Copyright (c) 2013-2015 Wimagguc.
//
//  Lincesed under The MIT License (MIT)
//  http://opensource.org/licenses/MIT
//

#import "ViewController.h"
#import "WGAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Just a subtle background color
    [self.view setBackgroundColor:[UIColor colorWithRed:0.8f green:0.8f blue:0.8f alpha:1.0f]];

    // A simple button to launch the demo
    UIButton *launchDialog = [UIButton buttonWithType:UIButtonTypeCustom];
    [launchDialog setFrame:CGRectMake(10, 30, self.view.bounds.size.width-20, 50)];
    [launchDialog addTarget:self action:@selector(launchDialog:) forControlEvents:UIControlEventTouchDown];
    [launchDialog setTitle:@"Launch Dialog" forState:UIControlStateNormal];
    [launchDialog setBackgroundColor:[UIColor whiteColor]];
    [launchDialog setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [launchDialog.layer setBorderWidth:0];
    [launchDialog.layer setCornerRadius:5];
    [self.view addSubview:launchDialog];
}

- (IBAction)launchDialog:(id)sender
{
    // Here we need to pass a full frame
    WGAlertView *alertView = [[WGAlertView alloc] init];
    
    alertView.useMotionEffects = YES;

    // Add some custom content to the alert view
    [alertView setContainerView:[self createDemoView]];

    // Modify the parameters
    alertView.buttonItems = @[[WGAlertViewButtonItem buttonItemWithNormalTitle:@"Close1" normalTitleColor:[UIColor blackColor]],
                              [WGAlertViewButtonItem buttonItemWithNormalTitle:@"Close2" normalTitleColor:[UIColor blackColor]],
                                [WGAlertViewButtonItem buttonItemWithNormalTitle:@"Close3" normalTitleColor:[UIColor blueColor]]
                              ];
    
    // You may use a Block.
    [alertView setButtonTouchUpInsideBlock:^(WGAlertView *alertView, NSInteger buttonIndex) {
        [alertView close];
    }];
    
    [alertView setUseMotionEffects:true];

    // And launch the dialog
    [alertView show];
}

- (void)customIOS7dialogButtonTouchUpInside: (WGAlertView *)alertView clickedButtonAtIndex: (NSInteger)buttonIndex
{
    NSLog(@"Delegate: Button at position %d is clicked on alertView %d.", (int)buttonIndex, (int)[alertView tag]);
    [alertView close];
}

- (UIView *)createDemoView
{
    UIView *demoView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 290, 200)];

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 270, 180)];
    [imageView setImage:[UIImage imageNamed:@"demo"]];
    [demoView addSubview:imageView];

    return demoView;
}

@end
