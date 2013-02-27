//
//  EventViewController.h
//  week4Proj
//
//  Created by Devona Ward on 2/25/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol EventViewDelegate <NSObject>

@required
-(void)DidClose:(NSString*)nameString;

@end


@interface EventViewController : UIViewController
{
    IBOutlet UILabel *closer;
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UITextField *txtField;
    IBOutlet UIDatePicker *theDate;
    
    UISwipeGestureRecognizer *swipeLeft;
}

-(IBAction)onKeyboard:(id)sender;

@property (strong) id<EventViewDelegate> delegate;
@end
