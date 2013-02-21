//
//  DateViewController.h
//  week3Proj
//
//  Created by Devona Ward on 2/19/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DateViewDelegate <NSObject>

@required
-(void)DidClose:(NSString*)nameString;

@end

@interface DateViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UIButton *saveBtn;
    IBOutlet UITextField *txtField;
    IBOutlet UIDatePicker *pickerVw;
    NSString *txtString;
    NSString *dateString;
    NSDate *dateP;
    id<DateViewDelegate> delegate;
}

-(IBAction)onRemove:(id)sender;
-(IBAction)onDateChange:(id)sender;

@property (strong) id<DateViewDelegate> delegate;
@end

