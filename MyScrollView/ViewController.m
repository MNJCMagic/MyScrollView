//
//  ViewController.m
//  MyScrollView
//
//  Created by Mike Cameron on 2018-04-23.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MyScrollView *containerView = [[MyScrollView alloc] init];
    containerView.frame = self.view.bounds;
    [self.view addSubview:containerView];

    containerView.contentSize = CGSizeMake(320, 770);
    
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [containerView addSubview:greenView];
    [containerView addSubview:redView];
    [containerView addSubview:blueView];
    [containerView addSubview:yellowView];
    
}

-(void) viewDidAppear:(BOOL)animated {
//    self.view.bounds = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y + 100, self.view.bounds.size.width, self.view.bounds.size.height);
}



@end
