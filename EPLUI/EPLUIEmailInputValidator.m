//
//  EPLUIEmailInputValidator.m
//  EPLUISample
//
//  Created by Andrey Subbotin on 12/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <RegexKitLite/RegexKitLite.h>

#import "EPLUIEmailInputValidator.h"

@implementation EPLUIEmailInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError * __autoreleasing *)error 
{
    NSString *text = input.text;
    text = [text stringByReplacingOccurrencesOfRegex:@"\\s*" withString:@""];
    text = [text stringByReplacingOccurrencesOfRegex:@"\\.+" withString:@"."];
    input.text = text;
    
    if ([text length] == 0) {
        NSString *description = NSLocalizedString(@"Invalid e-mail address", @"");
        NSString *reason = NSLocalizedString(@"The e-mail address can't be blank.", @"");
        
        NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil]; 
        NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
        NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
        *error = [NSError errorWithDomain:EPLUIInputValidationErrorDomain 
                                     code:EPLUIInputValidationErrorInvalidInput 
                                 userInfo:userInfo];        
    }
    
    BOOL matched = [text isMatchedByRegex:@"^[A-Z0-9._%+-]+@(?:[A-Z0-9-]+\\.)+(?:[A-Z]{2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|asia|jobs|museum)$" 
                                  options:RKLCaseless 
                                  inRange:NSMakeRange(0, [text length]) 
                                    error:nil];
    if (matched) {
        if (error) {
            *error = nil;
        }
        return YES;
    }
    
    NSString *description = NSLocalizedString(@"Invalid e-mail address", @"");
    NSString *reason = NSLocalizedString(@"Please provide a valid e-mail address.", @"");
    
    NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil]; 
    NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
    NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
    *error = [NSError errorWithDomain:EPLUIInputValidationErrorDomain 
                                 code:EPLUIInputValidationErrorInvalidInput 
                             userInfo:userInfo];
    
    return NO;
}

@end
