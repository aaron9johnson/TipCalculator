//
//  ViewController.h
//  tipCalculator
//
//  Created by Aaron Johnson on 2017-08-23.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;

@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

