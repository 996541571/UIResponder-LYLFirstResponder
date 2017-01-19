//
//  UIResponder+LYLFirstResponder.m
//  SheepGroup
//
//  Created by LYL on 2017/1/18.
//  Copyright © 2017年 KEN. All rights reserved.
//

#import "UIResponder+LYLFirstResponder.h"
static __weak id LYL_currentFirstResponder;
@implementation UIResponder (LYLFirstResponder)
+ (id)LYL_currentFirstResponder {
    LYL_currentFirstResponder = nil;
    [[UIApplication sharedApplication] sendAction:@selector(LYL_findFirstResponder:) to:nil from:nil forEvent:nil];
    return LYL_currentFirstResponder;
}

- (void)LYL_findFirstResponder:(id)sender {
   LYL_currentFirstResponder = self;
}
@end
