//
//  ViewController.h
//  week1Proj
//
//  Created by Devona Ward on 2/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SuperHeros.h"

@interface ViewController : UIViewController
{
    UILabel *batName;
    UILabel *batPwrLbl;
    UILabel *batGadgetLbl;
    UILabel *batWeakLbl;
    int darkGadget;
    int darkPwr;
    int darkweak;
    
    UILabel *superName;
    UILabel *superPwrLbl;
    UILabel *superStrengthLbl;
    UILabel *superWeakLbl;
    int superPower;
    int superStrength;
    int superweak;
    
    UILabel *spiderName;
    UILabel *spiderPwrLbl;
    UILabel *spiderStrengthLbl;
    UILabel *spiderWeakLbl;
    int spiderPower;
    int spiderStrength;
    int spiderweak;
}


@end
