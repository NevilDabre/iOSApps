//
//  ViewController.m
//  Assignment1
//
//  Created by Student on 2017-05-12.
//  Copyright © 2017 Student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (IBAction)UISliderSalaryChange:(id)sender {
    
    //self.UILabelCurrentSalary.text = [NSString stringWithFormat:@"%f", self.UlSliderSalary.value];
    
    float number = self.UlSliderSalary.value;
    int value = (int)(number * 1);
    
    self.UILabelCurrentSalary.text = [NSString stringWithFormat:@"%i", value];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
