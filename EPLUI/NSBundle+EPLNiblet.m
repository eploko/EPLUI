//
//  NSBundle+EPLNiblet.m
//  Karma World Kit
//
//  Created by Andrey Subbotin on 15.11.08.
//  Copyright 2008 Andrey Subbotin. All rights reserved.
//

#import "NSBundle+EPLNiblet.h"

@implementation NSBundle (EPLNiblet)

- (id)loadNibletOfClass:(Class)aClass
           fromNibNamed:(NSString *)name 
                  owner:(id)owner {

    NSArray *niblets = [self loadNibNamed:name
									owner:owner 
								  options:NULL];

    for (id niblet in niblets) {
        if ([niblet isKindOfClass:aClass]) {
            return niblet;
        }
    }
    
    return nil;
}

@end
