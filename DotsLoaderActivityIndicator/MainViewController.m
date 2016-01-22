//
//  MainViewController.m
//  DotsLoaderActivityIndicator
//
//  Created by EhabAlsharkawy on 1/22/16.
//  Copyright © 2016 EhabAlsharkawy. All rights reserved.
//

#import "MainViewController.h"
#import "DotActivityIndicatorParms.h"

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.indicatorView.dotParms = [self loadDotActivityIndicatorParms];
}

- (DotActivityIndicatorParms *)loadDotActivityIndicatorParms
{
    DotActivityIndicatorParms *dotParms = [DotActivityIndicatorParms new];
    dotParms.activityViewWidth = self.indicatorView.frame.size.width;
    dotParms.activityViewHeight = self.indicatorView.frame.size.height;
    dotParms.numberOfCircles = 3;
    dotParms.internalSpacing = 5;
    dotParms.animationDelay = 0.2;
    dotParms.animationDuration = 0.6;
    dotParms.animationFromValue = 0.3;
    dotParms.defaultColor = [UIColor redColor];
    dotParms.isDataValidationEnabled = YES;
    return dotParms;
}

-(IBAction)startAnimation:(id)sender
{
    [self.indicatorView startAnimating];
}

-(IBAction)stopAnimation:(id)sender
{
    [self.indicatorView stopAnimating];
}

@end
