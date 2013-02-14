//
//  ViewController.h
//  week2Proj
//
//  Created by Devona Ward on 2/13/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SuperHeros.h"

@interface ViewController : UIViewController
{
    IBOutlet UIButton *batBtn;
    IBOutlet UIButton *superBtn;
    IBOutlet UIButton *spiderBtn;
    IBOutlet UILabel *numPwrLbl;
    IBOutlet UITextField *txtField;
    IBOutlet UIButton *calBtn;
    IBOutlet UIStepper *theStep;
    IBOutlet UISegmentedControl *segControl;
    IBOutlet UIButton *info;
    NSString *theName;
    int newNum;
    
}

-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;
-(IBAction)onColor:(id)sender;
-(IBAction)onNewView:(id)sender;
@end
