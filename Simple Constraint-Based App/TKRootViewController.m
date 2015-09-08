//
//  TKRootViewController.m
//  Simple Constraint-Based App
//
//  Created by Diego Bartra on 4/21/15.
//  Copyright (c) 2015 Tekton Labs. All rights reserved.
//

#import "TKRootViewController.h"

@interface TKRootViewController ()

@property (nonatomic, weak) UIButton *button;

@end


@implementation TKRootViewController


//
//
// Setting Up Layout - Part 1
//
//



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [button setTitle:@"Button" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor greenColor];
    self.button = button;
    
    [self.view addSubview:button];
    
    
    
    [self setupConstraints];
}


- (void)setupConstraints
{
    UIView *view = self.view;
    UIButton *button = self.button;
    
    
    
    
    
    
    NSLayoutConstraint *constraint1 = [NSLayoutConstraint constraintWithItem:button
                                                                   attribute:NSLayoutAttributeTop
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:view
                                                                   attribute:NSLayoutAttributeTop
                                                                  multiplier:1
                                                                    constant:20.0];
    
    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:button
                                                                   attribute:NSLayoutAttributeCenterX
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:view
                                                                   attribute:NSLayoutAttributeCenterX
                                                                  multiplier:1
                                                                    constant:0.0];
    
    [view addConstraint:constraint1];
    [view addConstraint:constraint2];
}




@end
