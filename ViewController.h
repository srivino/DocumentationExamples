//
//  ViewController.h
//  DocumentationExamples
//
//  Created by Andrew Pereira on 2/10/14.
//  Copyright (c) 2014 Ray Wenderlich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Car.h"

@interface ViewController : UIViewController
/*!
 * @brief The ViewController class' car object.
 */
@property (nonatomic) Car *car;
/*!
 * @brief Title for car that is to be Funny.
 */
@property (nonatomic) NSString *funTitle;
@end
