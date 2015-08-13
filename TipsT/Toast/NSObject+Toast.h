//
//  NSObject+Tips.h
//  Foomoo
//
//  Created by QFish on 6/6/14.
//  Copyright (c) 2014 QFish.inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TipsView.h"

#pragma mark - UIView

@interface UIView (Toast)

- (void)toastMessageTips:(NSString *)message;
- (void)toastSuccessTips:(NSString *)message;
- (void)toastFailureTips:(NSString *)message;
- (void)toastLoadingTips:(NSString *)message;

- (void)dismissToast;

@end

#pragma mark - UIViewController

@interface UIViewController (Toast)

- (void)toastMessageTips:(NSString *)message;
- (void)toastSuccessTips:(NSString *)message;
- (void)toastFailureTips:(NSString *)message;
- (void)toastLoadingTips:(NSString *)message;

- (void)dismissToast;

@end