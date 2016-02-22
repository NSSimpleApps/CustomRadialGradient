//
//  RadialGradientLayer.m
//  CustomRadialGradient
//
//  Created by NSSimpleApps on 22.02.16.
//  Copyright © 2016 NSSimpleApps. All rights reserved.
//

#import "RadialGradientLayer.h"
#import <UIKit/UIColor.h>
#import <UIKit/UIScreen.h>


@implementation RadialGradientLayer

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        self.gradientColor = [UIColor clearColor];
        self.startAngle = 0.f;
        self.endAngle = 0.f;
        
        self.needsDisplayOnBoundsChange = YES;
        
        self.contentsScale = [UIScreen mainScreen].scale;
        self.shouldRasterize = YES;
        self.rasterizationScale = [UIScreen mainScreen].scale;
    }
    return self;
}

- (void)drawInContext:(CGContextRef)ctx {
    
    CGRect rect = CGContextGetClipBoundingBox(ctx);
    
    CGPoint center = CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect));
    
    CGFloat radius = MIN(rect.size.width, rect.size.height)/2;
    
    CGFloat *locations = (CGFloat[]){ 0.0f, 1.0f };
    
    //CGContextSaveGState(ctx);
    
    CGContextSetFillColorWithColor(ctx, self.gradientColor.CGColor);
    CGContextMoveToPoint(ctx, center.x, center.y);
    CGContextAddArc(ctx, center.x, center.y, radius, self.startAngle, self.endAngle, 1);
    CGContextClosePath(ctx);
    CGContextFillPath(ctx);
    
    //CGContextRestoreGState(ctx);
    
    //CGContextSaveGState(ctx);
    
    CGContextMoveToPoint(ctx, center.x, center.y);
    CGContextAddArc(ctx, center.x, center.y, radius, self.startAngle, self.endAngle, 0);
    CGContextClosePath(ctx);
    
    CGColorSpaceRef rgb = CGColorSpaceCreateDeviceRGB();
    
    CGGradientRef gradient = CGGradientCreateWithColors(rgb, (__bridge CFArrayRef)@[
                                                                                    (__bridge id)[UIColor whiteColor].CGColor,
                                                                                    (__bridge id)self.gradientColor.CGColor], locations);
    
    CGColorSpaceRelease(rgb);
    
    CGContextClip(ctx);
    
    CGContextDrawRadialGradient(ctx, gradient, center, 0, center, radius, kCGGradientDrawsAfterEndLocation);
    
    CGGradientRelease(gradient);
    
    //CGContextRestoreGState(ctx);
}


@end
