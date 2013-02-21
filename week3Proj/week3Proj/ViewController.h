//
//  ViewController.h
//  week3Proj
//
//  Created by Devona Ward on 2/19/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DateViewController.h"

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <DateViewDelegate>
{
    IBOutlet UIButton *addBtn;
    IBOutlet UITextView *txtView;
    id<DateViewDelegate> delegate;
}

@property (strong) id<DateViewDelegate> delegate;
-(IBAction)onNewView:(id)sender;
@end
