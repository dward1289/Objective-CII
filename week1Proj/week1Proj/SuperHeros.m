//
//  SuperHeros.m
//  week1Proj
//
//  Created by Devona Ward on 2/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "SuperHeros.h"

@implementation SuperHeros

+(BaseHero *)createNewHero: (int)heroType;
{
    if (heroType == BATMAN)
    {
        return [[BatMan alloc] init];
    }
    else if (heroType == SUPERMAN)
    {
        return [[SuperMan alloc] init];
    }
    else if (heroType == SPIDERMAN)
    {
        return [[SpiderMan alloc] init];
    }
    else return nil;
}
@end
