//
//  DotActivityIndicatorParms.h
//  MONActivityIndicatorViewDemo
//
//  Created by EhabAlsharkawy on 1/22/16.
//  Copyright © 2016 Moaner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DotActivityIndicatorParms : NSObject

@property (nonatomic) NSUInteger numberOfCircles;

@property (nonatomic) CGFloat internalSpacing;

// Width per circle
@property (nonatomic) CGFloat circleWidth;

// Animation delay per circle
@property (nonatomic) CGFloat animationDelay;

// Animation Duration per circle
@property (nonatomic) CGFloat animationDuration;

@property (nonatomic) CGFloat animationFromValue;

@property (nonatomic) CGFloat animationToValue;

@property (nonatomic) CGFloat activityViewWidth;

@property (nonatomic) CGFloat activityViewHeight;

@property (strong, nonatomic) UIColor *defaultColor;

@property (nonatomic) BOOL isDataValidationEnabled;

-(instancetype)initWithDefaultData;
@end
