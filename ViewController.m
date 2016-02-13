//
//  ViewController.m
//  DocumentationExamples
//
//  Created by Andrew Pereira on 2/10/14.
//  Copyright (c) 2014 Ray Wenderlich. All rights reserved.
//

#import "ViewController.h"
#import "MathAPI.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNumberField;
@property (weak, nonatomic) IBOutlet UITextField *secondNumberField;
@property (weak, nonatomic) IBOutlet UILabel *sumLabel;
@property (weak, nonatomic) IBOutlet UILabel *funTitleLabel;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.funTitle = @"Documentation!";
    self.funTitleLabel.text = self.funTitle;
    self.car = [[Car alloc] init];
    self.car.exteriorColor = [UIColor brownColor];
    self.car.nickname = @"Ralph"; // Another nickname, perhaps?
    self.car.carType = CarTypeHatchback;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)changeCarType:(UISegmentedControl*)segmentedControl {
    self.car.carType = segmentedControl.selectedSegmentIndex;
    [self.car driveCarWithCompletion:^(CGFloat distance) {
        NSLog(@"Car has driven %f miles", distance);
    }];
}

- (IBAction)addAllTheNumbers:(id)sender {
    NSInteger numberOne = [self.firstNumberField.text integerValue];
    NSInteger numberTwo = [self.secondNumberField.text integerValue];
    NSInteger sum = [MathAPI addNumber:numberOne toNumber:numberTwo];
    self.sumLabel.text = [NSString stringWithFormat:@"%ld", sum];
}
@end
