//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Mike Cameron on 2018-04-23.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)init
{
    self = [super init];
    if (self) {
        UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
        _panRecognizer = panGestureRecognizer;
        [self addGestureRecognizer:self.panRecognizer];
        NSLog(@"initialized");
    }
    return self;
}

-(void)handlePan:(UIPanGestureRecognizer*)sender {
    CGPoint point = [sender translationInView:sender.view];
    NSLog(@"%f", point.x);
    self.bounds = CGRectMake(point.x * -1, point.y * -1, self.bounds.size.width, self.bounds.size.height);
    if (self.bounds.origin.y < -20) {
        self.bounds = CGRectMake(self.bounds.origin.x, -20, self.bounds.size.width, self.bounds.size.height);
    }
    if (self.bounds.origin.x < -20) {
        self.bounds = CGRectMake(-20, self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height);
    }
    float vertical = self.contentSize.height - self.bounds.size.height;
    float horizontal = self.contentSize.width - self.bounds.size.width;
    if (self.bounds.origin.y > vertical) {
        self.bounds = CGRectMake(self.bounds.origin.x, vertical, self.bounds.size.width, self.bounds.size.height);
        }
    if (self.bounds.origin.x > horizontal) {
        self.bounds = CGRectMake(horizontal, self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height);
    }
}

@end
