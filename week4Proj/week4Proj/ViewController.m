//
//  ViewController.m
//  week4Proj
//
//  Created by Devona Ward on 2/25/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "ViewController.h"
#import "EventViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize delegate;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if (defaults != nil)
    {
        NSString *eventTxt = [defaults objectForKey:@"saved"];
        
        txtView.text = eventTxt;
    }
}

-(void)viewWillAppear:(BOOL)animated
{
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onRight:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [addEvent addGestureRecognizer:rightSwipe];
    
    [super viewWillAppear:animated];
}

-(void)onRight:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        EventViewController *eventView = [[EventViewController alloc] initWithNibName:@"EventViewController" bundle:nil];
        
        if (eventView != nil)
        {
            eventView.delegate = self;
            [self presentViewController:eventView animated:true completion:nil];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onSave:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if (defaults != nil)
    {
        NSString *eventTxt = txtView.text;
        
        [defaults setObject:eventTxt forKey:@"saved"];
        
        [defaults synchronize];
    }
}

-(void)DidClose:(NSString*)nameString
{
    txtView.text = nameString;
}
@end
