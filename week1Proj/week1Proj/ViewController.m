//
//  ViewController.m
//  week1Proj
//
//  Created by Devona Ward on 2/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Batman!
    BatMan *darkKnight = (BatMan*)[SuperHeros createNewHero:BATMAN];
    [darkKnight countPowers];
    darkPwr = [darkKnight numPowers];
   
    //Name of hero
    batName = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 10.0f, 100.0f, 20.0f)];
    batName.text = [NSString stringWithFormat:@"Batman"];
    [self.view addSubview: batName];
    
    //Number of powers
    batPwrLbl = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 40.0f, 180.0f, 20.0f)];
    batPwrLbl.text = [NSString stringWithFormat:@"Number of powers: %d",darkPwr];
    [self.view addSubview: batPwrLbl];
    
    //Strength
    if ([darkKnight numGadgets] >= 10)
    {
        darkGadget = [darkKnight numGadgets];
        batGadgetLbl = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 60.0f, 170.0f, 20.0f)];
        batGadgetLbl.text = [NSString stringWithFormat:@"Strength: %d Gadgets",darkGadget];
        [self.view addSubview: batGadgetLbl];
    }
    else
    {
        batGadgetLbl.text = @"Batman does not have enough strength.";
        [self.view addSubview: batGadgetLbl];
    }
    
    //Weakness
    darkweak = [darkKnight numVillans];
    batWeakLbl = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 80.0f, 170.0f, 20.0f)];
    batWeakLbl.text = [NSString stringWithFormat:@"Weakness: %d Villans",darkweak];
    [self.view addSubview: batWeakLbl];
    
    
    
    //Superman
    SuperMan *steelMan = (SuperMan*)[SuperHeros createNewHero:SUPERMAN];
    [steelMan countPowers];
    
    //Name of hero
    superName = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 130.0f, 180.0f, 20.0f)];
    superName.text = [NSString stringWithFormat:@"Superman"];
    [self.view addSubview: superName];
    
    //Number of powers
    if ([steelMan numPowers] >= 1)
    {
    superPower = [steelMan numPowers];
    superPwrLbl = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 160.0f, 180.0f, 20.0f)];
    superPwrLbl.text = [NSString stringWithFormat:@"Number of powers: %d", superPower];
    [self.view addSubview: superPwrLbl];
    }
    else
    {
        superPwrLbl.text = @"Superman doesn't have any powers.";
        [self.view addSubview: superPwrLbl];
    }
    
    //Strength
    if ([steelMan flySpeed] == FAST)
    {
        superStrength = [steelMan damageDone];
        superStrengthLbl= [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 180.0f, 300.0f, 20.0f)];
        superStrengthLbl.text = [NSString stringWithFormat:@"Strength: Save over %d people at once.", superStrength];
        [self.view addSubview: superStrengthLbl];
    }
        
    //Weakness
    superWeakLbl = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 200.0f, 200.0f, 20.0f)];
    superWeakLbl.text = @"Weakness: Kryptonite";
    [self.view addSubview: superWeakLbl];
    
    //Spiderman
    SpiderMan *spider = (SpiderMan*)[SuperHeros createNewHero:SPIDERMAN];
    [spider countPowers];
    
    //Name of hero
    spiderName = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 250.0f, 180.0f, 20.0f)];
    spiderName.text = [NSString stringWithFormat:@"Spiderman"];
    [self.view addSubview: spiderName];
    
    //Number of powers
    if([spider numPowers] > 2)
    {
        spiderPower = [spider numPowers];
        spiderPwrLbl = [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 280.0f, 180.0f, 20.0f)];
        spiderPwrLbl.text = [NSString stringWithFormat:@"Number of powers: %d", spiderPower];
        [self.view addSubview: spiderPwrLbl];
    }
    else
    {
        spiderPwrLbl.text = @"Spiderman doesn't have any powers.";
        [self.view addSubview: spiderPwrLbl];
    }
    
    //Weakness
    if ([spider numWebs] <= 20)
    {
        spiderWeakLbl= [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 300.0f, 300.0f, 20.0f)];
        spiderWeakLbl.text = @"Weakness: Relies on web power.";
        [self.view addSubview: spiderWeakLbl];
    }
    else
    {
        spiderStrengthLbl.text = @"Weakness: Too many villans.";
        [self.view addSubview: spiderStrengthLbl];
    }
    
    //Strength
    NSString *MJ = [spider hostageName];
    if ([spider hostageName] == MJ)
    {
        spiderStrengthLbl= [[UILabel alloc] initWithFrame: CGRectMake(10.0f, 320.0f, 300.0f, 20.0f)];
        spiderStrengthLbl.text = [NSString stringWithFormat:@"Strength: %@ is his motivation.", MJ];
        [self.view addSubview: spiderStrengthLbl];
    }
    else
    {
        int hostages = [spider numHostages];
        spiderStrengthLbl.text = [NSString stringWithFormat:@"Strength: Saving %d hostages.", hostages];
        [self.view addSubview: spiderStrengthLbl];
    }
    
    
    
    
        
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
