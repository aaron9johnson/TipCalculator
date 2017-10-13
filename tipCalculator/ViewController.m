//
//  ViewController.m
//  tipCalculator
//
//  Created by Aaron Johnson on 2017-08-23.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _tipPercentageTextField.text = @"15";
    _billAmountTextField.text = @"0";
    [self tipPercentageText:nil]; //sets slider, shows tip amount and total bill text
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)billAmountText:(id)sender {
    [self calculateTip];
}

- (IBAction)tipPercentageText:(id)sender {
    _slider.value = [_tipPercentageTextField.text floatValue] / 100;
    [self calculateTip];
}
- (IBAction)calculateTip {
    float num3 = [_tipPercentageTextField.text floatValue] * [_billAmountTextField.text floatValue] * 0.01;
    num3 = (round (num3 * 100)) / 100;
    float num4 = num3 + [_billAmountTextField.text floatValue];
    _tipAmountLabel.numberOfLines = 0;
    _tipAmountLabel.text = [NSString stringWithFormat:@"Tip amount:\t$%.02f \nTotal amount:\t$%.02f",num3, num4];
   /*
    NSNumber *num = @([_tipPercentageTextField.text floatValue] * [_billAmountTextField.text floatValue] * 0.01);
    num = @((round ([num floatValue] * 100.0)) / 100.0); //rounds total to 2 decimal places >gives occasional float rounding errors
    NSNumber *num2 = @([_billAmountTextField.text floatValue] + [num floatValue]);
    _tipAmountLabel.numberOfLines = 0; //fixed text not showing up
    _tipAmountLabel.text = [NSString stringWithFormat:@"Tip amount:\t$%@ \nTotal amount:\t$%@",num, num2];
    */
}

- (IBAction)adjustTipPercentage:(UISlider *)sender {
    NSNumber *num = @(sender.value);
    num = @(round([num floatValue] * 100.0)); //gives integer value from 0-100
    
    _tipPercentageTextField.text = [NSString stringWithFormat:@"%@", num];
    [self calculateTip];
}

@end
