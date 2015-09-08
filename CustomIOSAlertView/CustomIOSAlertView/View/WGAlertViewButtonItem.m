//
//  WGAlertViewButtonItem.m
//  CustomIOSAlertView
//
//  Created by Aidian on 15/9/8.
//  Copyright (c) 2015年 Wimagguc. All rights reserved.
//

#import "WGAlertViewButtonItem.h"

@interface WGAlertViewButtonItem ()

@property (nonatomic, strong) NSMutableDictionary *titleDictionary;
@property (nonatomic, strong) NSMutableDictionary *titleColorDictionary;

@end

@implementation WGAlertViewButtonItem

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.titleFont = [UIFont boldSystemFontOfSize:14];
    }
    return self;
}

#pragma mark -
#pragma mark - Getter

- (NSMutableDictionary *)titleDictionary
{
    if (!_titleDictionary) {
        _titleDictionary = [NSMutableDictionary dictionary];
    }
    return _titleDictionary;
}

- (NSMutableDictionary *)titleColorDictionary
{
    if (!_titleColorDictionary) {
        _titleColorDictionary = [NSMutableDictionary dictionary];
    }
    return _titleColorDictionary;
}

#pragma mark -
#pragma mark - Member Methods

+ (instancetype)buttonItemWithNormalTitle:(NSString *)normalTitle normalTitleColor:(UIColor *)normalTitleColor
{
    WGAlertViewButtonItem *alertViewButtonItem = [[WGAlertViewButtonItem alloc] init];
    [alertViewButtonItem setTitle:normalTitle forState:UIControlStateNormal];
    [alertViewButtonItem setTitleColor:normalTitleColor forState:UIControlStateNormal];
    return alertViewButtonItem;
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state
{
    if (title) {
        [self.titleDictionary setObject:title forKey:@(state)];
    }
}

- (NSString *)titleForState:(UIControlState)state
{
    return [self.titleDictionary objectForKey:@(state)];
}

- (void)setTitleColor:(UIColor *)titleColor forState:(UIControlState)state
{
    if (titleColor) {
        [self.titleColorDictionary setObject:titleColor forKey:@(state)];
    }
}

- (UIColor *)titleColorForState:(UIControlState)state
{
    return [self.titleColorDictionary objectForKey:@(state)];
}

@end
