//
//  EPLUIInputValidator.m
//  EPLUISample
//
//  Created by Andrey Subbotin on 12/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "EPLUIInputValidator.h"


NSString * const EPLUIInputValidationErrorDomain = @"EPLUIInputValidationErrorDomain";


@implementation EPLUIInputValidator

// A stub for any actual validation strategy
- (BOOL)validateInput:(UITextField *)input error:(NSError **)error 
{
    if (error) {
        *error = nil;
    }
    return NO; 
}

@end
