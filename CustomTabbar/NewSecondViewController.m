//
//  NewSecondViewController.m
//  CustomTabbar
//
//  Created by l on 13-6-9.
//  Copyright (c) 2013年 l. All rights reserved.
//

#import "NewSecondViewController.h"

@interface NewSecondViewController ()

@end

@implementation NewSecondViewController

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
    self.title = @"NewSecond";
    self.view.backgroundColor = [UIColor blackColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(110, 200, 100, 50);
    [button setTitle:@"NewSecond" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(popRootVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
-(void)popRootVC
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
