//
//  ViewController.m
//  week3Proj
//
//  Created by Devona Ward on 2/19/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "ViewController.h"
#import "DateViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize delegate;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

    //When 2nd view closes, text view displays event
-(void)DidClose:(NSString *)nameString
{
    txtView.text = nameString;
}

    //Display view 2
-(IBAction)onNewView:(id)sender
{
    DateViewController *view2 = [[DateViewController alloc] initWithNibName:@"DateView" bundle:nil];
    if (view2 != nil)
    {
        view2.delegate = self;
        [self presentViewController:view2 animated:true completion:nil];
        
    }
    
}
@end
