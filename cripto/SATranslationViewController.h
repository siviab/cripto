//
//  tutorialViewController.h
//  cripto
//
//  Created by Sivi Ab on 9/14/14.
//  Copyright (c) 2014 my self. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDSideBarController.h"

@interface SATranslationViewController : UIViewController <
    CDSideBarControllerDelegate>
{
    CDSideBarController *sideBar;
}

@end
