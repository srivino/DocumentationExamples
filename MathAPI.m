//
//  MathAPI.m
//  DocumentationExamples
//
//  Created by Andrew Pereira on 2/10/14.
//  Copyright (c) 2014 Ray Wenderlich. All rights reserved.
//

#import "MathAPI.h"

@implementation MathAPI
+ (NSInteger)addNumber:(NSInteger)firstNumber toNumber:(NSInteger)secondNumber {
    return ABS(firstNumber) + ABS(secondNumber);
}
@end
