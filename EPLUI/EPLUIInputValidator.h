//
//  EPLUIInputValidator.h
//  EPLUISample
//
//  Created by Andrey Subbotin on 12/15/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


enum {
    EPLUIInputValidationErrorInvalidInput = 1001
};


@interface EPLUIInputValidator : NSObject

- (BOOL)validateInput:(UITextField *)input error:(NSError * __autoreleasing *)error;

@end


extern NSString * const EPLUIInputValidationErrorDomain;
