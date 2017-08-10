//
//  SUSAppDelegate.m
//  SumupSDKSampleAPP
//
//  Created by Felix Lamouroux on 29.01.14.
//  Copyright (c) 2014 SumUp Payments Limited. All rights reserved.
//

#import "SUSAppDelegate.h"
#import <SumupSDK/SumupSDK.h>

@implementation SUSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
#if DEBUG
    /*
     *   Logs integration warnings in non-production code. Do not call this method in
     *   release builds.
     */
    [SumupSDK testSDKIntegration];
#endif

    /*
     *   This will setup the SumUpSDK.
     *
     *   You might consider moving this to a later point in your application's lifecycle,
     *   as this will start updating for locations.
     *
     *   Also remember to provide the necessary usage descriptions in your info.plist
     *   and to properly localize it, see:
     *   https://github.com/sumup/sumup-ios-sdk/blob/master/README.md#privacy-info-plist-keys
     *
     *   Ensure to add the Bundle Identifier of your iOS app to your
     *   API Key's Application identifiers in the SumUp developer portal.
     */
    [SumupSDK setupWithAPIKey:@"3f76e7ae-b3ce-4847-9af9-e16a39cc7fa7"];
    return YES;
}


@end
