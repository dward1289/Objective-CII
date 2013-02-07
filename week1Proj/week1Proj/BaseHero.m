//
//  BaseHero.m
//  week1Proj
//
//  Created by Devona Ward on 2/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "BaseHero.h"

@implementation BaseHero

//get and set created
@synthesize weakness,numPowers,strength;

-(id)init
{
    self = [super init];
    if (self !=nil)
    {
        [self setNumPowers:0];
        [self setStrength:nil];
        [self setWeakness:nil];
    }
    return self;
}

//calculate powers
-(void)countPowers
{
    NSLog(@"This hero has %i powers", numPowers);
}
@end
