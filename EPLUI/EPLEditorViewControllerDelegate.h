//
//  EPLEditorViewControllerDelegate.h
//  karizma
//
//  Created by Andrey Subbotin on 2/23/11.
//  Copyright 2011 Andrey Subbotin. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol EPLEditorViewControllerDelegate

- (void)editorViewControllerDidSucceed:(UIViewController *)controller;
- (void)editorViewControllerDidCancel:(UIViewController *)controller;

@end
