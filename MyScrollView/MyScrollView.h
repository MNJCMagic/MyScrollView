//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Mike Cameron on 2018-04-23.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView
@property (nonatomic) CGSize contentSize;
@property (nonatomic) UIPanGestureRecognizer *panRecognizer;
@end
