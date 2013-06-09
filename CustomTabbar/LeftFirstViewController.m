//
//  LeftFirstViewController.m
//  CustomTabbar
//
//  Created by l on 13-6-9.
//  Copyright (c) 2013年 l. All rights reserved.
//

#import "LeftFirstViewController.h"
#import "CustomTabbarViewController.h"
#import "CustomBarButton.h"
#import "AppDelegate.h"
@interface LeftFirstViewController ()

@end

@implementation LeftFirstViewController

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
    self.title = @"LeftFirst";
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(110, 200, 100, 50);
    [button setTitle:@"LeftFirst" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
