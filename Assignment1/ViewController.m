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

NSTimer *t;
//Total number of seconds 7488000

-(void)onTick:(NSTimer *)timer{
    
    _m_cost += (_m_user_salary/7488000);
    _m_currentSalary.text = [NSString stringWithFormat:@"$%f",_m_cost];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _m_cost = 0.00;
}

- (IBAction)UISliderSalaryChange:(id)sender {
    
    //read value of a slider
    _m_user_salary = self.UlSliderSalary.value;
    
    //convert slider value into int
    _m_user_salary = (int)(_m_user_salary * 1);
    
    //display slider value to user
    self.UILabelCurrentSalary.text = [NSString stringWithFormat:@"$%.f", _m_user_salary];
}
- (IBAction)startTimer:(id)sender {
    

    t = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector: @selector(onTick:) userInfo:nil repeats:YES];
    
}

- (IBAction)stopTimer:(id)sender {
    if(t){
        [t invalidate];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
