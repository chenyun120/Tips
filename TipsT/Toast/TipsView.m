//
//  TipsView.m
//  TipsT
//
//  Created by Chenyun on 15/8/12.
//  Copyright (c) 2015年 geek-zoo. All rights reserved.
//

#import "TipsView.h"

@interface TipsView ()
@property (nonatomic, strong) NSMutableArray * tips;
@end

@implementation TipsView

+ (instancetype)sharedInstance
{
	static dispatch_once_t once;
	static id sharedInstance;
	dispatch_once(&once, ^{
		sharedInstance = [[self alloc] init];
	});
	return sharedInstance;
}

- (instancetype)init
{
	self = [super init];
	if (self) {
		self.tips = [NSMutableArray array];
		self.textColor = [UIColor blackColor];
		self.bgColor = [UIColor grayColor];
		self.animationTime = 0.2;
		self.stopTime = 1;
		self.viewHeight = 50;
	}
	return self;
}

- (void)showTipsWithMessage:(NSString *)message inViewController:(UIViewController *)viewController
{
	if ( self.tips && self.tips.count )
		return;

	UIView * bgView = [[UIView alloc] initWithFrame:CGRectMake(0, -self.viewHeight, viewController.view.frame.size.width, self.viewHeight)];
	bgView.backgroundColor = self.bgColor;

	UILabel * titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, bgView.frame.size.width, bgView.frame.size.height)];
	titleLabel.textAlignment = NSTextAlignmentCenter;
	titleLabel.text = message;
	titleLabel.textColor = self.textColor;
	[bgView addSubview:titleLabel];
	
	[self.tips addObject:bgView];
	[viewController.view addSubview:bgView];

	// 显示出来
	[UIView animateWithDuration:self.animationTime animations:^{
		bgView.frame = CGRectMake(0, 0, viewController.view.frame.size.width, self.viewHeight);
	}];
	
	// 移动出去
	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(self.stopTime * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
		[UIView animateWithDuration:self.animationTime animations:^{
			bgView.frame = CGRectMake(0, -self.viewHeight, viewController.view.frame.size.width, self.viewHeight);
		} completion:^(BOOL finished) {
			[self.tips removeObject:bgView];
			[bgView removeFromSuperview];
		}];
	});
}

@end
