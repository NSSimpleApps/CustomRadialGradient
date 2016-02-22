//
//  RadialGradientLayer.h
//  CustomRadialGradient
//
//  Created by NSSimpleApps on 22.02.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@class UIColor;

@interface RadialGradientLayer : CALayer

@property (nonatomic, strong) UIColor *gradientColor; // default is [UIColor clearColor]

@property (nonatomic, assign) CGFloat startAngle; // default is 0
@property (nonatomic, assign) CGFloat endAngle; // default is 0

@end
