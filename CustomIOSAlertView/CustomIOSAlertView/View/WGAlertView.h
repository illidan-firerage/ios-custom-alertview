//
//  CustomIOSAlertView.h
//  CustomIOSAlertView
//
//  Created by Richard on 20/09/2013.
//  Copyright (c) 2013-2015 Wimagguc.
//
//  Lincesed under The MIT License (MIT)
//  http://opensource.org/licenses/MIT
//

#import <UIKit/UIKit.h>
#import "WGAlertViewButtonItem.h"

@interface WGAlertView : UIView

@property (nonatomic, strong) UIView *dialogView;    // Dialog's container view
@property (nonatomic, strong) UIView *containerView; // Container within the dialog (place your ui elements here)

@property (nonatomic, strong) NSArray *buttonItems;
@property (nonatomic, assign) BOOL useMotionEffects;

@property (nonatomic, copy) void (^buttonTouchUpInsideBlock)(WGAlertView *alertView, NSInteger buttonIndex) ;

- (id)init;

- (void)setButtonTouchUpInsideBlock:(void (^)(WGAlertView *alertView, NSInteger buttonIndex))buttonTouchUpInsideBlock;

- (void)show;

- (void)close;

- (void)deviceOrientationDidChange: (NSNotification *)notification;

- (void)dealloc;

@end
