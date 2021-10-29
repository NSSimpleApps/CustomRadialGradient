//
//  ViewController.m
//  CustomRadialGradient
//
//  Created by NSSimpleApps on 22.02.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "ViewController.h"
#import "RadialGradientView.h"
#import "RadialGradientLayer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Radial gradient";
    self.view.backgroundColor = [UIColor whiteColor];
    
    __auto_type redView = [RadialGradientView new];
    __auto_type redGradientLayer = (RadialGradientLayer *)redView.layer;
    redGradientLayer.opaque = NO;
    redGradientLayer.gradientColor = [UIColor redColor];
    redGradientLayer.startAngle = M_PI/3;
    redGradientLayer.endAngle = -M_PI/3;
    
    __auto_type greenView = [RadialGradientView new];
    __auto_type greenGradientLayer = (RadialGradientLayer *)greenView.layer;
    greenGradientLayer.opaque = NO;
    greenGradientLayer.gradientColor = [UIColor greenColor];
    greenGradientLayer.startAngle = -M_PI/3;
    greenGradientLayer.endAngle = M_PI;
    
    __auto_type blueView = [RadialGradientView new];
    __auto_type blueGradientLayer = (RadialGradientLayer *)blueView.layer;
    blueGradientLayer.opaque = NO;
    blueGradientLayer.gradientColor = [UIColor blueColor];
    blueGradientLayer.startAngle = -M_PI;
    blueGradientLayer.endAngle = M_PI/3;
    
    __auto_type stackView = [[UIStackView alloc] initWithArrangedSubviews:@[redView, greenView, blueView]];
    stackView.axis = UILayoutConstraintAxisVertical;
    stackView.distribution = UIStackViewDistributionFillEqually;
    stackView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:stackView];
    __auto_type layoutMarginsGuide = self.view.layoutMarginsGuide;
    [[stackView.topAnchor constraintEqualToAnchor:layoutMarginsGuide.topAnchor] setActive:YES];
    [[stackView.bottomAnchor constraintEqualToAnchor:layoutMarginsGuide.bottomAnchor] setActive:YES];
    [[stackView.leftAnchor constraintEqualToAnchor:layoutMarginsGuide.leftAnchor] setActive:YES];
    [[stackView.rightAnchor constraintEqualToAnchor:layoutMarginsGuide.rightAnchor] setActive:YES];
}

@end
