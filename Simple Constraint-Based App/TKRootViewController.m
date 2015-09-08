//
//  TKRootViewController.m
//  Simple Constraint-Based App
//
//  Created by Diego Bartra on 4/21/15.
//  Copyright (c) 2015 Tekton Labs. All rights reserved.
//

#import "TKRootViewController.h"

@interface TKRootViewController ()

@property (nonatomic, weak) UIView *containerView;
@property (nonatomic, weak) UIButton *button;
@property (nonatomic, weak) UILabel *label;

@end


@implementation TKRootViewController




//
//
// Visual Format Language
//
//




- (void)viewDidLoad
{
    [super viewDidLoad];

    UIView *view = self.view;
    view.backgroundColor = [UIColor colorWithRed:0.04 green:0.31 blue:0.71 alpha:1];

    UIView *containerView = [[UIView alloc] init];
    containerView.translatesAutoresizingMaskIntoConstraints = NO;
    containerView.backgroundColor = [UIColor colorWithRed:0.40 green:0.19 blue:0.71 alpha:1];


    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    button.backgroundColor = [UIColor orangeColor];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setTintColor:[UIColor whiteColor]];


    UILabel *label = [[UILabel alloc] init];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor colorWithRed:0.15 green:0.80 blue:0 alpha:1];
    label.text = @"Label";
    label.textColor = [UIColor whiteColor];


    [view addSubview:containerView];
    [containerView addSubview:button];
    [view addSubview:label];



    self.containerView = containerView;
    self.button = button;
    self.label = label;




    [self setupConstraints];
}


- (void)setupConstraints
{
    UIView *view = self.view;
    UIView *containerView = self.containerView;
    UIButton *button = self.button;
    UILabel *label = self.label;





    NSDictionary *views = @{@"containerView" : containerView, @"button" : button, @"label" : label};



    NSArray *containerViewVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(40)-[containerView(400)]"
                                                                                         options:0
                                                                                         metrics:nil
                                                                                           views:views];

    NSArray *containerViewHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"|-(40)-[containerView]-(40)-|"
                                                                                         options:0
                                                                                         metrics:nil
                                                                                           views:views];

    NSArray *buttonVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[button(50)]-(35)-|"
                                                                                          options:0
                                                                                          metrics:nil
                                                                                            views:views];

    NSArray *buttonWidthConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"[button(label)]"
                                                                              options:0
                                                                              metrics:nil
                                                                                views:views];

    NSArray *labelVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[label(50)]-(80)-|"
                                                                                 options:0
                                                                                 metrics:nil
                                                                                   views:views];

    NSArray *labelWidthConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"[label(150)]"
                                                                              options:0
                                                                              metrics:nil
                                                                                views:views];

    [view addConstraints:containerViewVerticalConstraints];
    [view addConstraints:containerViewHorizontalConstraints];

    [containerView addConstraints:buttonVerticalConstraints];
    [view addConstraints:buttonWidthConstraints];

    [view addConstraints:labelVerticalConstraints];
    [label addConstraints:labelWidthConstraints];






    NSLayoutConstraint *buttonCenterXConstraint = [NSLayoutConstraint constraintWithItem:button
                                                                              attribute:NSLayoutAttributeCenterX
                                                                              relatedBy:NSLayoutRelationEqual
                                                                                 toItem:containerView
                                                                              attribute:NSLayoutAttributeCenterX
                                                                             multiplier:1
                                                                               constant:0];

    NSLayoutConstraint *labelCenterXConstraint = [NSLayoutConstraint constraintWithItem:label
                                                                              attribute:NSLayoutAttributeCenterX
                                                                              relatedBy:NSLayoutRelationEqual
                                                                                 toItem:view
                                                                              attribute:NSLayoutAttributeCenterX
                                                                             multiplier:1
                                                                               constant:0];

    [containerView addConstraint:buttonCenterXConstraint];
    [view addConstraint:labelCenterXConstraint];

}




@end
