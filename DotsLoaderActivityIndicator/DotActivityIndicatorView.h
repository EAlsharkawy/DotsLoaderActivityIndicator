//
//  DotActivityIndicatorView.h
//  DotsLoaderActivityIndicator
//
//  Created by EhabAlsharkawy on 1/22/16.
//  Copyright © 2016 EhabAlsharkawy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DotActivityIndicatorParms.h"

@interface DotActivityIndicatorView : UIView

@property (strong, nonatomic) DotActivityIndicatorParms *dotParms;

- (void)startAnimating;

- (void)stopAnimating;


@end
