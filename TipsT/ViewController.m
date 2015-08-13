//
//  ViewController.m
//  TipsT
//
//  Created by Chenyun on 15/8/12.
//  Copyright (c) 2015年 geek-zoo. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Toast.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
}

- (IBAction)showTips:(id)sender
{
	[self toastMessageTips:@"haha"];
}

@end