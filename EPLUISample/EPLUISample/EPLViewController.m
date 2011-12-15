//
//  EPLViewController.m
//  EPLUISample
//
//  Created by Andrey Subbotin on 12/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "EPLViewController.h"

@implementation EPLViewController

@synthesize emailTextField = emailTextField_;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.emailTextField.inputValidator = [[EPLUIEmailInputValidator alloc] init];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.emailTextField = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - UI Actions

- (IBAction)endEditing:(id)sender
{
    [self.emailTextField resignFirstResponder];
}

#pragma mark - UITextFieldDelegate Implementation

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if ([textField isKindOfClass:[EPLUITextField class]]) {
        EPLUITextField *fld = (EPLUITextField *)textField;
        [fld validate];
    }
}

@end
