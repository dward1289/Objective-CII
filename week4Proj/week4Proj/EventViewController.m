//
//  EventViewController.m
//  week4Proj
//
//  Created by Devona Ward on 2/25/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "EventViewController.h"
#import "ViewController.h"

@interface EventViewController ()

@end

@implementation EventViewController
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        delegate = nil;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onLeft:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [closer addGestureRecognizer:swipeLeft];
    
    [super viewWillAppear:animated];
}

-(void)onLeft:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        if (delegate != nil)
        {
            NSDate *dateSelected = theDate.date;
            NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];

            [dateFormat setDateFormat: @"MMMM dd, yyyy hh:mm:ss a"];
            
            NSString *txtString = txtField.text;
            NSString *dateString = [dateFormat stringFromDate:dateSelected];
            [delegate DidClose:[NSString stringWithFormat:@"Event: %@ \nDate: %@", txtString, dateString]];
        }
        
        [self dismissViewControllerAnimated:true completion:nil];

    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onKeyboard:(id)sender
{
    [txtField resignFirstResponder];
}

@end
