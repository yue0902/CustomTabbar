//
//  MainViewController.m
//  CustomTabbar
//
//  Created by l on 13-6-9.
//  Copyright (c) 2013年 l. All rights reserved.
//

#import "MainViewController.h"
#import "NewFirstViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

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
    self.title = @"Main";
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(110, 200, 100, 50);
    [button setTitle:@"Main" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushNewVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
-(void)pushNewVC
{
    NewFirstViewController *newFirstVC = [[NewFirstViewController alloc] init];
    [self.navigationController pushViewController:newFirstVC animated:YES];
    [newFirstVC release];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
