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

@property (weak, nonatomic) IBOutlet RadialGradientView *redView;
@property (weak, nonatomic) IBOutlet RadialGradientView *greenView;
@property (weak, nonatomic) IBOutlet RadialGradientView *blueView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    RadialGradientLayer *redGradientLayer = (RadialGradientLayer *)self.redView.layer;
    redGradientLayer.gradientColor = [UIColor redColor];
    redGradientLayer.startAngle = M_PI/3;
    redGradientLayer.endAngle = -M_PI/3;
    
    RadialGradientLayer *greenGradientLayer = (RadialGradientLayer *)self.greenView.layer;
    greenGradientLayer.gradientColor = [UIColor greenColor];
    greenGradientLayer.startAngle = -M_PI/3;
    greenGradientLayer.endAngle = M_PI;
    
    RadialGradientLayer *blueGradientLayer = (RadialGradientLayer *)self.blueView.layer;
    blueGradientLayer.gradientColor = [UIColor blueColor];
    blueGradientLayer.startAngle = -M_PI;
    blueGradientLayer.endAngle = M_PI/3;
}

@end
