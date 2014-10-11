//
//  tutorialViewController.m
//  cripto
//
//  Created by Sivi Ab on 9/14/14.
//  Copyright (c) 2014 my self. All rights reserved.
//

#import "SATranslationViewController.h"

@interface SATranslationViewController
()

{
 //  NSArray *_dataCodePicker;
}
@property (weak, nonatomic) IBOutlet UITextField *textInTextField;
@property (weak, nonatomic) IBOutlet UITextView *textOutTextView;
- (IBAction)didPressStartButton:(id)sender;
//@property (weak, nonatomic) IBOutlet UIView *secondView;
//- (IBAction)segmentChanged:(id)sender;
//@property (weak, nonatomic) IBOutlet UIView *firstView;


@end


@implementation SATranslationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSArray *imageList = @[[UIImage imageNamed:@"heb"], [UIImage imageNamed:@"enb"], [UIImage imageNamed:@"frb"],[UIImage imageNamed:@"HEB@"]];
    sideBar = [[CDSideBarController alloc] initWithImages:imageList];
    sideBar.delegate = self;
}

- (IBAction)didPressStartButton:(id)sender {
    self.textOutTextView.text = self.textInTextField.text;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [sideBar insertMenuButtonOnView:[UIApplication sharedApplication].delegate.window atPosition:CGPointMake(self.view.frame.size.width - 70, 50)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -
#pragma mark - CDSideBarController delegate

- (void)menuButtonClicked:(int)index
{
    // Execute what ever you want
}


@end
