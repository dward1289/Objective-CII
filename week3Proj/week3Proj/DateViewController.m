//
//  DateViewController.m
//  week3Proj
//
//  Created by Devona Ward on 2/19/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "DateViewController.h"
#import "ViewController.h"

@interface DateViewController ()

@end

@implementation DateViewController
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        delegate = nil;
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

    //Keypad removed
-(IBAction)onRemove:(id)sender
{
    [txtField resignFirstResponder];
}

    //Save date and event
-(IBAction)onDateChange:(id)sender
{

    if (delegate != nil)
    {
        
        dateP = pickerVw.date;
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat: @"MMMM dd, yyyy"];
        txtString =  txtField.text;
        dateString = [dateFormatter stringFromDate: dateP];
        [delegate DidClose:[NSString stringWithFormat:@"Event: %@ \nDate: %@",txtField.text, dateString]];
        
    }

    [self dismissViewControllerAnimated:true completion:nil];
    
    
    
}
@end
