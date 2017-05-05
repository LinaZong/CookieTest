//
//  ViewController.m
//  CookieTest
//
//  Created by 宗丽娜 on 17/5/5.
//  Copyright © 2017年 宗丽娜. All rights reserved.
//

#import "ViewController.h"
#import <SafariServices/SafariServices.h>
@interface ViewController ()
@property (nonatomic, strong) SFSafariViewController *sfVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.sfVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:@"http://127.0.0.1/test.html"]];
    [self addChildViewController:self.sfVC];
    [self.sfVC didMoveToParentViewController:self];
    [self.sfVC.view setFrame:CGRectMake(0, 0,400, 400)];
    [self.view addSubview:self.sfVC.view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
