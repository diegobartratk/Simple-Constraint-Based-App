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
// Setting Up Layout
//
//



//
// Start Part 1
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


//
// End Part 1
//



//
// Start Part 2
//

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//
//    UIView *view = self.view;
//    view.backgroundColor = [UIColor colorWithRed:0.04 green:0.31 blue:0.71 alpha:1];
//
//    UIView *containerView = [[UIView alloc] init];
//    containerView.translatesAutoresizingMaskIntoConstraints = NO;
//    containerView.backgroundColor = [UIColor colorWithRed:0.40 green:0.19 blue:0.71 alpha:1];
//
//
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
//    button.translatesAutoresizingMaskIntoConstraints = NO;
//    button.backgroundColor = [UIColor orangeColor];
//    [button setTitle:@"Button" forState:UIControlStateNormal];
//    [button setTintColor:[UIColor whiteColor]];
//
//
//    UILabel *label = [[UILabel alloc] init];
//    label.translatesAutoresizingMaskIntoConstraints = NO;
//    label.textAlignment = NSTextAlignmentCenter;
//    label.backgroundColor = [UIColor colorWithRed:0.15 green:0.80 blue:0 alpha:1];
//    label.text = @"Label";
//    label.textColor = [UIColor whiteColor];
//
//
//    [view addSubview:containerView];
//    [containerView addSubview:button];
//    [view addSubview:label];
//
//
//
//    self.containerView = containerView;
//    self.button = button;
//    self.label = label;
//
//
//
//
//    [self setupConstraints];
//}
//
//- (void)setupConstraints
//{
//    UIView *view = self.view;
//    UIView *containerView = self.containerView;
//    UIButton *button = self.button;
//    UILabel *label = self.label;
//
//
//
//
//
//    //
//    // ContainerView Constraints
//    //
//
//    NSLayoutConstraint *containerViewTopConstraint = [NSLayoutConstraint constraintWithItem:containerView
//                                                                                  attribute:NSLayoutAttributeTop
//                                                                                  relatedBy:NSLayoutRelationEqual
//                                                                                     toItem:view
//                                                                                  attribute:NSLayoutAttributeTop
//                                                                                 multiplier:1
//                                                                                   constant:40.0];
//
//    NSLayoutConstraint *containerViewLeadingConstraint = [NSLayoutConstraint constraintWithItem:containerView
//                                                                                      attribute:NSLayoutAttributeLeading
//                                                                                      relatedBy:NSLayoutRelationEqual
//                                                                                         toItem:view
//                                                                                      attribute:NSLayoutAttributeLeading
//                                                                                     multiplier:1
//                                                                                       constant:40.0];
//
//    NSLayoutConstraint *containerViewTrailingConstraint = [NSLayoutConstraint constraintWithItem:containerView
//                                                                                        attribute:NSLayoutAttributeTrailing
//                                                                                        relatedBy:NSLayoutRelationEqual
//                                                                                           toItem:view
//                                                                                        attribute:NSLayoutAttributeTrailing
//                                                                                       multiplier:1
//                                                                                         constant:-40.0];
//
//    NSLayoutConstraint *containerViewHeightConstraint = [NSLayoutConstraint constraintWithItem:containerView
//                                                                                       attribute:NSLayoutAttributeHeight
//                                                                                       relatedBy:NSLayoutRelationEqual
//                                                                                          toItem:nil
//                                                                                       attribute:NSLayoutAttributeNotAnAttribute
//                                                                                      multiplier:1
//                                                                                        constant:400];
//    //
//    // Button Constraints
//    //
//
//    NSLayoutConstraint *buttonBottomConstraint = [NSLayoutConstraint constraintWithItem:button
//                                                                                     attribute:NSLayoutAttributeBottom
//                                                                                     relatedBy:NSLayoutRelationEqual
//                                                                                        toItem:containerView
//                                                                                     attribute:NSLayoutAttributeBottom
//                                                                                    multiplier:1
//                                                                                      constant:-35];
//
//    NSLayoutConstraint *buttonCenterXConstraint = [NSLayoutConstraint constraintWithItem:button
//                                                                              attribute:NSLayoutAttributeCenterX
//                                                                              relatedBy:NSLayoutRelationEqual
//                                                                                 toItem:containerView
//                                                                              attribute:NSLayoutAttributeCenterX
//                                                                             multiplier:1
//                                                                               constant:0];
//
//    NSLayoutConstraint *buttonWidthConstraint = [NSLayoutConstraint constraintWithItem:button
//                                                                               attribute:NSLayoutAttributeWidth
//                                                                               relatedBy:NSLayoutRelationEqual
//                                                                                  toItem:label
//                                                                               attribute:NSLayoutAttributeWidth
//                                                                              multiplier:1
//                                                                                constant:0];
//
//    NSLayoutConstraint *buttonHeightConstraint = [NSLayoutConstraint constraintWithItem:button
//                                                                             attribute:NSLayoutAttributeHeight
//                                                                             relatedBy:NSLayoutRelationEqual
//                                                                                toItem:nil
//                                                                             attribute:NSLayoutAttributeNotAnAttribute
//                                                                            multiplier:1
//                                                                              constant:50];
//
//    //
//    // Label Constraints
//    //
//
//    NSLayoutConstraint *labelBottomConstraint = [NSLayoutConstraint constraintWithItem:label
//                                                                             attribute:NSLayoutAttributeBottom
//                                                                             relatedBy:NSLayoutRelationEqual
//                                                                                toItem:view
//                                                                             attribute:NSLayoutAttributeBottom
//                                                                            multiplier:1
//                                                                              constant:-80];
//
//    NSLayoutConstraint *labelCenterXConstraint = [NSLayoutConstraint constraintWithItem:label
//                                                                               attribute:NSLayoutAttributeCenterX
//                                                                               relatedBy:NSLayoutRelationEqual
//                                                                                  toItem:view
//                                                                               attribute:NSLayoutAttributeCenterX
//                                                                              multiplier:1
//                                                                                constant:0];
//
//    NSLayoutConstraint *labelWidthConstraint = [NSLayoutConstraint constraintWithItem:label
//                                                                             attribute:NSLayoutAttributeWidth
//                                                                             relatedBy:NSLayoutRelationEqual
//                                                                                toItem:nil
//                                                                             attribute:NSLayoutAttributeNotAnAttribute
//                                                                            multiplier:1
//                                                                              constant:200];
//
//    NSLayoutConstraint *labelHeightConstraint = [NSLayoutConstraint constraintWithItem:label
//                                                                              attribute:NSLayoutAttributeHeight
//                                                                              relatedBy:NSLayoutRelationEqual
//                                                                                 toItem:nil
//                                                                              attribute:NSLayoutAttributeNotAnAttribute
//                                                                             multiplier:1
//                                                                               constant:50];
//    //
//    // Adding constraints to views
//    //
//
//    [view addConstraints:@[containerViewTopConstraint, containerViewLeadingConstraint, containerViewTrailingConstraint]];
//    [containerView addConstraint:containerViewHeightConstraint];
//
//    [containerView addConstraints:@[buttonBottomConstraint, buttonCenterXConstraint]];
//
//    [view addConstraints:@[labelBottomConstraint, labelCenterXConstraint]];
//    [label addConstraint:labelWidthConstraint];
//
//    [view addConstraint:buttonWidthConstraint];
//
//
//    [button addConstraint:buttonHeightConstraint];
//    [label addConstraint:labelHeightConstraint];
//
//}


//
// End Part 2
//








//
//
// Visual Format Language
//
//


//
// Start
//

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//
//    UIView *view = self.view;
//    view.backgroundColor = [UIColor colorWithRed:0.04 green:0.31 blue:0.71 alpha:1];
//
//    UIView *containerView = [[UIView alloc] init];
//    containerView.translatesAutoresizingMaskIntoConstraints = NO;
//    containerView.backgroundColor = [UIColor colorWithRed:0.40 green:0.19 blue:0.71 alpha:1];
//
//
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
//    button.translatesAutoresizingMaskIntoConstraints = NO;
//    button.backgroundColor = [UIColor orangeColor];
//    [button setTitle:@"Button" forState:UIControlStateNormal];
//    [button setTintColor:[UIColor whiteColor]];
//
//
//    UILabel *label = [[UILabel alloc] init];
//    label.translatesAutoresizingMaskIntoConstraints = NO;
//    label.textAlignment = NSTextAlignmentCenter;
//    label.backgroundColor = [UIColor colorWithRed:0.15 green:0.80 blue:0 alpha:1];
//    label.text = @"Label";
//    label.textColor = [UIColor whiteColor];
//
//
//    [view addSubview:containerView];
//    [containerView addSubview:button];
//    [view addSubview:label];
//
//
//
//    self.containerView = containerView;
//    self.button = button;
//    self.label = label;
//
//
//
//
//    [self setupConstraints];
//}
//
//
//- (void)setupConstraints
//{
//    UIView *view = self.view;
//    UIView *containerView = self.containerView;
//    UIButton *button = self.button;
//    UILabel *label = self.label;
//
//
//
//
//
//    NSDictionary *views = @{@"containerView" : containerView, @"button" : button, @"label" : label};
//
//
//
//    NSArray *containerViewVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(40)-[containerView(400)]"
//                                                                                         options:0
//                                                                                         metrics:nil
//                                                                                           views:views];
//
//    NSArray *containerViewHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"|-(40)-[containerView]-(40)-|"
//                                                                                         options:0
//                                                                                         metrics:nil
//                                                                                           views:views];
//
//    NSArray *buttonVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[button(50)]-(35)-|"
//                                                                                          options:0
//                                                                                          metrics:nil
//                                                                                            views:views];
//
//    NSArray *buttonWidthConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"[button(label)]"
//                                                                              options:0
//                                                                              metrics:nil
//                                                                                views:views];
//
//    NSArray *labelVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[label(50)]-(80)-|"
//                                                                                 options:0
//                                                                                 metrics:nil
//                                                                                   views:views];
//
//    NSArray *labelWidthConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"[label(150)]"
//                                                                              options:0
//                                                                              metrics:nil
//                                                                                views:views];
//
//    [view addConstraints:containerViewVerticalConstraints];
//    [view addConstraints:containerViewHorizontalConstraints];
//
//    [containerView addConstraints:buttonVerticalConstraints];
//    [view addConstraints:buttonWidthConstraints];
//
//    [view addConstraints:labelVerticalConstraints];
//    [label addConstraints:labelWidthConstraints];
//
//
//
//
//
//
//    NSLayoutConstraint *buttonCenterXConstraint = [NSLayoutConstraint constraintWithItem:button
//                                                                              attribute:NSLayoutAttributeCenterX
//                                                                              relatedBy:NSLayoutRelationEqual
//                                                                                 toItem:containerView
//                                                                              attribute:NSLayoutAttributeCenterX
//                                                                             multiplier:1
//                                                                               constant:0];
//
//    NSLayoutConstraint *labelCenterXConstraint = [NSLayoutConstraint constraintWithItem:label
//                                                                              attribute:NSLayoutAttributeCenterX
//                                                                              relatedBy:NSLayoutRelationEqual
//                                                                                 toItem:view
//                                                                              attribute:NSLayoutAttributeCenterX
//                                                                             multiplier:1
//                                                                               constant:0];
//
//    [containerView addConstraint:buttonCenterXConstraint];
//    [view addConstraint:labelCenterXConstraint];
//
//}


//
// End
//


@end
