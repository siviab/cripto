//
//  tutorialViewController.m
//  cripto
//
//  Created by Sivi Ab on 9/14/14.
//  Copyright (c) 2014 my self. All rights reserved.
//

#import "SATranslationViewController.h"

@interface SATranslationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textInTextField;
@property (weak, nonatomic) IBOutlet UITextView *textOutTextView;
- (IBAction)didPressStartButton:(id)sender;

@end

@implementation SATranslationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.textInTextField.text = @"shalom";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didPressStartButton:(id)sender {
    self.textOutTextView.text = self.textInTextField.text;
}
@end
