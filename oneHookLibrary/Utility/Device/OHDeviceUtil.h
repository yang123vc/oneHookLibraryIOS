//
//  DeviceUtil.h
//  oneHookLibrary
//
//  Created by Eagle Diao on 2016-06-15.
//  Copyright © 2016 oneHook inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OHDeviceUtil : NSObject

+ (NSString*)appVersion;
+ (NSString*)deviceSystemName;
+ (NSString*)devicePlatformVersion;
+ (NSString*)deviceModel;

@end