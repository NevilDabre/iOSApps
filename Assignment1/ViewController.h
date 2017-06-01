//
//  ViewController.h
//  Assignment1
//
//  Created by Student on 2017-05-12.
//  Copyright © 2017 Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//created a slider pointer
@property (weak, nonatomic) IBOutlet UISlider *UlSliderSalary;

//created a label pointer to display selected variable
@property (weak, nonatomic) IBOutlet UILabel *UILabelCurrentSalary;

//created a label pointer to display 
@property (weak, nonatomic) IBOutlet UILabel *m_currentSalary;

@property double m_cost;
@property double m_user_salary;
@property double m_salary_per_second;

@end

