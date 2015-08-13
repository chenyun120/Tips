//
//  NSObject+Tips.m
//  Foomoo
//
//  Created by QFish on 6/6/14.
//  Copyright (c) 2014 QFish.inc. All rights reserved.
//

#import "NSObject+Toast.h"

@implementation UIView (Toast)

- (void)showToast:(NSString *)message autoHide:(BOOL)autoHide
{
}

- (void)toastMessageTips:(NSString *)message
{
}

- (void)toastSuccessTips:(NSString *)message
{
}

- (void)toastFailureTips:(NSString *)message
{
}

- (void)toastLoadingTips:(NSString *)message
{
}

- (void)dismissToast
{
}

#pragma mark -

@end

@implementation UIViewController (Toast)

- (void)showToast:(NSString *)message autoHide:(BOOL)autoHide
{
	[[TipsView sharedInstance] showTipsWithMessage:message inViewController:self];
}

- (void)toastMessageTips:(NSString *)message
{
	[self showToast:message autoHide:NO];
}

- (void)toastSuccessTips:(NSString *)message
{
	[self showToast:message autoHide:NO];
}

- (void)toastFailureTips:(NSString *)message
{
	[self showToast:message autoHide:NO];
}

- (void)toastLoadingTips:(NSString *)message
{
	[self showToast:message autoHide:NO];
}

- (void)dismissToast
{
}

@end