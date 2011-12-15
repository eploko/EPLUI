//
//  EPLViewController.h
//  EPLUISample
//
//  Created by Andrey Subbotin on 12/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EPLUI.h"

@interface EPLViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet EPLUITextField *emailTextField;

- (IBAction)endEditing:(id)sender;

@end
