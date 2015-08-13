//
//  TipsView.h
//  TipsT
//
//  Created by Chenyun on 15/8/12.
//  Copyright (c) 2015年 geek-zoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TipsView : NSObject

@property (nonatomic, strong) UIColor * textColor;
@property (nonatomic, strong) UIColor * bgColor;
@property (nonatomic, assign) float animationTime;
@property (nonatomic, assign) float stopTime;
@property (nonatomic, assign) float viewHeight;

+ (instancetype)sharedInstance;

- (void)showTipsWithMessage:(NSString *)message inViewController:(UIViewController *)viewController;

@end
