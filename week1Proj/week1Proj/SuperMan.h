//
//  SuperMan.h
//  week1Proj
//
//  Created by Devona Ward on 2/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "BaseHero.h"

@interface SuperMan : BaseHero
{
    int speed;
}

typedef enum {
    FAST,
    MEDIUM,
    SLOW
} speed;

@property int flySpeed;
@property int damageDone;
@property NSString *coolText;

@end
