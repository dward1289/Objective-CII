//
//  SuperMan.m
//  week1Proj
//
//  Created by Devona Ward on 2/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "SuperMan.h"

@implementation SuperMan

@synthesize flySpeed,damageDone,coolText;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setNumPowers:2];
        [self setFlySpeed:FAST];
        [self setCoolText:@"Up, up, and away"];
    }
    return self;
}

//overwrite count method
-(void)countPowers
{
    
    //set powers based on speed and phrase
    if (flySpeed == FAST) {
        [self setNumPowers:2];
        [self setDamageDone:(self.numPowers + ([coolText length]* 4))];
    }
    else if (flySpeed == MEDIUM)
    {
        self.numPowers= 1;
        [self setDamageDone:(self.numPowers + ([coolText length]*2))];
    }else
    {
        NSLog(@"Superman is not so super today.");
    }
}
@end
