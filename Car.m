//
//  Car.m
//  DocumentationExamples
//
//  Created by Andrew Pereira on 2/10/14.
//  Copyright (c) 2014 Andrew Pereira. All rights reserved.
//

#import "Car.h"

@interface Car ()
@property (nonatomic, assign) CGFloat distanceDriven;
@end

@implementation Car

// FIXME: This is broken
// !!!: It should be checked
// ???: Questions about code

- (void)driveCarWithCompletion:(driveCompletion)completion {
    self.distanceDriven++;
    completion(self.distanceDriven);
}

@end
