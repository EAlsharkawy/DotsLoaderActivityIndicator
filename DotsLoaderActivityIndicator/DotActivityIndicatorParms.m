//
//  DotActivityIndicatorParms.m
//  MONActivityIndicatorViewDemo
//
//  Created by EhabAlsharkawy on 1/22/16.
//  Copyright © 2016 Moaner. All rights reserved.
//

#import "DotActivityIndicatorParms.h"

@implementation DotActivityIndicatorParms

-(instancetype)initWithDefaultData
{
    self = [super init];
    
    if (self)
    {
        [self validateData];
    }
    return self;
}

-(void)setIsDataValidationEnabled:(BOOL)isDataValidationEnabled
{
    _isDataValidationEnabled = isDataValidationEnabled;
    
    [self validateData];
}

- (void)validateData
{
    self.activityViewWidth = (self.activityViewWidth == 0) ? 90 : self.activityViewWidth;
    
    self.activityViewHeight = (self.activityViewHeight == 0) ? 90 : self.activityViewHeight;
    
    self.numberOfCircles = (self.numberOfCircles == 0) ? 3 : self.numberOfCircles;

    self.circleWidth = (self.activityViewWidth / self.numberOfCircles);
    
    self.internalSpacing = (self.internalSpacing == 0) ? 5 : self.internalSpacing;
    
    self.animationDelay = ( self.animationDelay == 0) ? 0.3 : self.animationDelay;
    
    self.animationDuration = (self.animationDuration == 0) ? 0.8 : self.animationDuration;
    
    self.animationFromValue = (self.animationFromValue == 0) ? 0.2 : self.animationFromValue;
    
    self.animationToValue = (self.animationToValue == 0) ? 1.0 : self.animationToValue;

    self.defaultColor = ( self.defaultColor == nil ) ? [UIColor redColor] : self.defaultColor;
}

@end
