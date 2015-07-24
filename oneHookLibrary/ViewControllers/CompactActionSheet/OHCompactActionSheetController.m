//
//  OHCompactActionSheetController.m
//  oneHookLibrary
//
//  Created by Eagle Diao on 2015-07-24.
//  Copyright (c) 2015 oneHook inc. All rights reserved.
//

#import "OHCompactActionSheetController.h"

@interface OHCompactActionSheetController() {
    NSString* _title;
    NSString* _message;
    NSArray* _options;
}

@end

@implementation OHCompactActionSheetController

- (id)initWithTitle:(NSString*)title message:(NSString*)message options:(NSArray*)options
{
    self = [super init];
    if(self) {
        _title = title;
        _message = message;
        _options = options;
    }
    return self;
}

- (void)presentInViewController:(UIViewController *)controller
{
    if([UIAlertController class]) {
        UIAlertController* alertController = [UIAlertController alertControllerWithTitle:_title message:_message preferredStyle:UIAlertControllerStyleActionSheet];
        
        for(NSString* option in _options) {
            [alertController addAction:[UIAlertAction actionWithTitle:option style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                
            }]];
        }
        [alertController addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
            
        }]];
        [controller presentViewController:alertController animated:YES completion:^{
            
        }];
    } else {
        UIActionSheet* sheet = [[UIActionSheet alloc] init];
        sheet.title = _title;
        sheet.delegate = self;
        for(NSString* option in _options) {
            [sheet addButtonWithTitle:option];
        }
        sheet.cancelButtonIndex = [sheet addButtonWithTitle:@"Cancel"];
        [sheet showInView:controller.view];
    }
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"clicked %ld", buttonIndex);
}


@end
