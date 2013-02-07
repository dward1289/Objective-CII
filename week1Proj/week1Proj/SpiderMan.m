//
//  SpiderMan.m
//  week1Proj
//
//  Created by Devona Ward on 2/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "SpiderMan.h"

@implementation SpiderMan

@synthesize numWebs,numHostages, hostageName;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setNumPowers:4];
        [self setNumWebs:4];
        [self setNumHostages:10];
        [self setHostageName:@"MaryJane"];
    }
    return self;
};

-(void)countPowers
{
    [self setNumPowers:(numWebs * numHostages)];
}
@end
