//
//  EPLUITextField.m
//  EPLUISample
//
//  Created by Andrey Subbotin on 12/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "EPLUITextField.h"


@interface EPLUITextField ()

- (IBAction)displayValidationError:(id)sender;

@end


@implementation EPLUITextField

@synthesize inputValidator = inputValidator_;
@synthesize validationError = validationError_;
@synthesize rightErrorView = rightErrorView_;

#pragma mark - Behaviors

- (BOOL)validate
{
    NSError *error = nil;
    BOOL isValid = [self.inputValidator validateInput:self error:&error];
    if (isValid == NO) {
        self.validationError = error;
        self.rightView = self.rightErrorView;
        self.rightViewMode = UITextFieldViewModeUnlessEditing;
    } else {
        self.rightView = nil;
        self.rightViewMode = UITextFieldViewModeNever;        
    }
    return isValid;
}

- (IBAction)displayValidationError:(id)sender
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:[self.validationError localizedDescription] 
                                                        message:[self.validationError localizedFailureReason]
                                                       delegate:nil
                                              cancelButtonTitle:nil 
                                              otherButtonTitles:NSLocalizedString(@"Okay", @"The title for the Okay button in the input validation error alert view."), nil];
    [alertView show];
}

#pragma mark - Properties

- (UIView *)rightErrorView
{
    if (rightErrorView_ == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(0, 0, 24, 24);
        [button setImage:[UIImage imageNamed:@"epl-right-view-error.png"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(displayValidationError:) forControlEvents:UIControlEventTouchUpInside];
        rightErrorView_ = button;
    }
    return rightErrorView_;
}

@end
