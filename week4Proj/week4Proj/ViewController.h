//
//  ViewController.h
//  week4Proj
//
//  Created by Devona Ward on 2/25/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventViewController.h"

@interface ViewController : UIViewController <EventViewDelegate>
{
    IBOutlet UILabel *addEvent;
    IBOutlet UITextView *txtView;
    IBOutlet UIButton *saveBtn;
    
    UISwipeGestureRecognizer *rightSwipe;
    id <EventViewDelegate> delegate;
}

-(IBAction)onSave:(id)sender;

@property (strong) id <EventViewDelegate> delegate;
@end
