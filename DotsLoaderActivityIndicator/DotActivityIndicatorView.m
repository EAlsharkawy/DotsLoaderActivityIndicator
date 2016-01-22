//
//  DotActivityIndicatorView.m
//  DotsLoaderActivityIndicator
//
//  Created by EhabAlsharkawy on 1/22/16.
//  Copyright © 2016 EhabAlsharkawy. All rights reserved.
//

#import "DotActivityIndicatorView.h"
#import <QuartzCore/QuartzCore.h>

@implementation DotActivityIndicatorView
{
    BOOL isAnimating;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.translatesAutoresizingMaskIntoConstraints = NO;
}

- (void)startAnimating
{
    if (!isAnimating)
    {
        if (self.dotParms == nil)
        {
            self.dotParms = [[DotActivityIndicatorParms alloc] initWithDefaultData];
        }
        
        [self addCircles];
        
        isAnimating = YES;
    }
}

- (void)addCircles
{
    for (NSUInteger i = 0; i < self.dotParms.numberOfCircles; i++)
    {
        [self createCircleWithIndex:i];
    }
}

- (void)createCircleWithIndex:(NSUInteger)index
{
    CGFloat origonX = (index * ( self.dotParms.activityViewWidth / self.dotParms.numberOfCircles + self.dotParms.internalSpacing));
    
    CGFloat origonY = self.dotParms.activityViewHeight/2 - self.dotParms.circleWidth/2;
    
    CGFloat sizeW = self.dotParms.circleWidth - self.dotParms.internalSpacing;
    
    UIView *circle = [[UIView alloc] initWithFrame:CGRectMake(origonX, origonY,sizeW,sizeW)];
    
    circle.backgroundColor = self.dotParms.defaultColor;
    
    circle.layer.cornerRadius = sizeW/2;
    
    circle.translatesAutoresizingMaskIntoConstraints = NO;
    
    [circle setTransform:CGAffineTransformMakeScale(0, 0)];
    
    [circle.layer addAnimation:[self createAnimationWithDelay:(index * self.dotParms.animationDelay)]
                        forKey:@"scale"];
    
    [self addSubview:circle];
}

- (CABasicAnimation *)createAnimationWithDelay:(CGFloat)aDelay
{
    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    anim.delegate = self;
    
    anim.fromValue = [NSNumber numberWithFloat:self.dotParms.animationFromValue];
    
    anim.toValue = [NSNumber numberWithFloat:self.dotParms.animationToValue];
    
    anim.autoreverses = YES;
    
    anim.duration = self.dotParms.animationDuration;
    
    anim.removedOnCompletion = NO;
    
    anim.beginTime = CACurrentMediaTime()+aDelay;
    
    anim.repeatCount = INFINITY;
    
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    return anim;
}
- (void)stopAnimating
{
    if (isAnimating)
    {
        [self removeCircles];
        
        isAnimating = NO;
    }
}

- (void)removeCircles
{
    [self.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop)
     {
         
         [obj removeFromSuperview];
     }];
}

@end
