//
//  EPLUITextField.h
//  EPLUISample
//
//  Created by Andrey Subbotin on 12/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EPLUIInputValidator.h"

@interface EPLUITextField : UITextField

@property (strong, nonatomic) IBOutlet EPLUIInputValidator *inputValidator;
@property (strong, nonatomic) NSError *validationError;
@property (strong, nonatomic) IBOutlet UIView *rightErrorView;

- (BOOL)validate;

@end
