//
//  ViewController.m
//  week2Proj
//
//  Created by Devona Ward on 2/13/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "ViewController.h"
#import "InfoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

-(IBAction)onChange:(id)sender
{
    UIStepper *stepOn = (UIStepper*)sender;
    
    if (stepOn != nil)
    {
        newNum = stepOn.value;
        
        numPwrLbl.text = [NSString stringWithFormat:@"%d", newNum];
    }
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    switch (button.tag) {
        case 0:
        {
            theName = @"BatMan";
            superBtn.enabled = false;
            spiderBtn.enabled = false;
        }
            break;
            
        case 1:
        {
            theName = @"SuperMan";
            batBtn.enabled = false;
            spiderBtn.enabled = false;
        }
            break;
            
        case 2:
        {
            theName = @"SpiderMan";
            batBtn.enabled = false;
            superBtn.enabled = false;
        }
            break;
            
        case 3:
        {
            NSString *thatBat = @"BatMan";
            NSString *thatSuper = @"SuperMan";
            if (theName == thatBat)
            {
                BatMan *darkKnight = (BatMan*)[SuperHeros createNewHero:BATMAN];
                [darkKnight setNumGadgets:newNum];
                [darkKnight countPowers];
                int darkPwr = [darkKnight numPowers];
                
                txtField.text = [NSString stringWithFormat:@"%@ with %i powers", theName, darkPwr];
                spiderBtn.enabled = true;
                superBtn.enabled = true;
            }
            else if (theName == thatSuper)
            {
                SuperMan *steel = (SuperMan*)[SuperHeros createNewHero:SUPERMAN];
                [steel setNumPowers:newNum];
                [steel countPowers];
                int superPwr = [steel damageDone];
                
                txtField.text = [NSString stringWithFormat:@"%@ with %i powers", theName, superPwr];
                batBtn.enabled = true;
                spiderBtn.enabled = true;
            }
            else
            {
                SpiderMan *spider = (SpiderMan*)[SuperHeros createNewHero:SPIDERMAN];
                [spider setNumHostages:newNum];
                [spider countPowers];
                int spiderPwr = [spider numPowers];
                
                txtField.text = [NSString stringWithFormat:@"%@ with %i powers", theName, spiderPwr];
                batBtn.enabled = true;
                superBtn.enabled = true;
            }

        }
            break;
        
        default:
            break;
    }
}

-(IBAction)onColor:(id)sender
{
    if (segControl.selectedSegmentIndex == 0)
    {
        self.view.backgroundColor = [UIColor yellowColor];
    }
    if (segControl.selectedSegmentIndex == 1)
    {
        self.view.backgroundColor = [UIColor blueColor];
    }
    if (segControl.selectedSegmentIndex == 2)
    {
        self.view.backgroundColor = [UIColor redColor];
    }
    
}

-(IBAction)onNewView:(id)sender
{
    InfoViewController *viewCtrl = [[InfoViewController alloc] initWithNibName:@"InfoView" bundle:nil];
    if (viewCtrl != nil)
    {
        [self presentViewController:viewCtrl animated:true completion:nil];
    }
}
@end
