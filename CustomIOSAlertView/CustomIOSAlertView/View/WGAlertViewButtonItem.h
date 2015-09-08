//
//  WGAlertViewButtonItem.h
//  CustomIOSAlertView
//
//  Created by Aidian on 15/9/8.
//  Copyright (c) 2015年 Wimagguc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WGAlertViewButtonItem : NSObject

@property (nonatomic, strong) UIFont *titleFont;

+ (instancetype)buttonItemWithNormalTitle:(NSString *)normalTitle normalTitleColor:(UIColor *)normalTitleColor;

- (void)setTitle:(NSString *)title forState:(UIControlState)state;
- (NSString *)titleForState:(UIControlState)state;

- (void)setTitleColor:(UIColor *)titleColor forState:(UIControlState)state;
- (UIColor *)titleColorForState:(UIControlState)state;

@end
