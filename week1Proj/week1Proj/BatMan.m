//
//  BatMan.m
//  week1Proj
//
//  Created by Devona Ward on 2/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "BatMan.h"

@implementation BatMan

@synthesize numGadgets,numVillans;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setNumPowers:0];
        [self setNumVillans:3];
        [self setNumGadgets:20];
    }
    return self;
};

-(void)countPowers
{
    [self setNumPowers:(numVillans * numGadgets)];
}
@end
