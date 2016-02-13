//
//  Car.h
//  DocumentationExamples
//
//  Created by Andrew Pereira on 2/10/14.
//  Copyright (c) 2014 Andrew Pereira. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  <#Description#>
 */
typedef NS_ENUM(NSInteger, CarType) {
    /**
     *  <#Description#>
     */
    CarTypeHatchback,
    /**
     *  <#Description#>
     */
    CarTypeSedan,
    /**
     *  <#Description#>
     */
    CarTypeEstate,
    /**
     *  <#Description#>
     */
    CarTypeSport
};

/*!
 * @typedef Oldcartype
 * @brief A list of Old car Types
 * @constant OldCarTypeModelT A cool Old car
 * @constant OldCarTypeModelA A Sophisticated old car
 */
typedef enum {
    /// A cool old car
    OldCarTypeModelT,
    /// A sophisticated old car
    OldCarTypeModelA
} OldCarType;

/*!
 * @brief A Block to makes the car drive
 * @param distance distance the car covers when the block is reay to execute
 */
typedef void(^driveCompletion)(CGFloat distance);

@interface Car : NSObject
/// A property for exterior car colour
@property (nonatomic) UIColor *exteriorColor;
/// A property for nick name
@property (nonatomic) NSString *nickname;

/// Indicates the cartype from cartype enum
@property (nonatomic, assign) CarType carType;


/*!
 * @brief The car will drive, and then execute the drive block
 * @param completion A driveCompletion block
 * @code [car driveCarWithCompletion:^(CGFloat distance){
 NSLog(@"Distance driven %f", distance);
 }];
 */
- (void)driveCarWithCompletion:(driveCompletion)completion;















@end
