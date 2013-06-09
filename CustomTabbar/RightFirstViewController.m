//
//  RightFirstViewController.m
//  CustomTabbar
//
//  Created by l on 13-6-9.
//  Copyright (c) 2013年 l. All rights reserved.
//

#import "RightFirstViewController.h"

@interface RightFirstViewController ()

@end

@implementation RightFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title = @"RightFirst";
    self.view.backgroundColor = [UIColor blueColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(110, 200, 100, 50);
    [button setTitle:@"RightFirst" forState:UIControlStateNormal];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
