//
//  OptimizelyHelper.m
//  NativeModulePlayground
//
//  Created by Charlie von Lehe on 9/18/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "OptimizelyHelper.h"
#import <OptimizelySDKiOS/OptimizelySDKiOS.h>
#import <Foundation/Foundation.h>
#import "React/RCTLog.h"

@implementation OptimizelyHelper

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(getVariation:(RCTResponseSenderBlock)callback) {
  RCTLogInfo(@"START_OPTIMIZELY1");

  // Build a manager
  OPTLYManager *manager = [[OPTLYManager alloc] initWithBuilder:[OPTLYManagerBuilder  builderWithBlock:^(OPTLYManagerBuilder * _Nullable builder) {
    builder.sdkKey = @"Wnjm8Romn7vp6Hiq3xwXXL";
  }]];

  // Or, instantiate it asynchronously with a callback
  [manager initializeWithCallback:^(NSError * _Nullable error,
                                    OPTLYClient * _Nullable client) {
      OPTLYVariation *variation = [client activate:@"test_variation" userId:@"sdfsdfsaf1"];
//      RCTLogInfo(@"TEST %@ - VARIATION 1", variation);
      NSNumber *var1 = [NSNumber numberWithInteger:1];
      NSNumber *var2 = [NSNumber numberWithInteger:2];
      NSNumber *defaultValue = [NSNumber numberWithInteger:0];
      if ([variation.variationKey isEqualToString:@"var_1"]) {
        // execute code for var_1
        callback(@[[NSNull null], var1]);
      } else if ([variation.variationKey isEqualToString:@"var_2"]) {
        // execute code for var_2
        callback(@[[NSNull null], var2]);

      } else {
        // execute default code
        callback(@[[NSNull null], defaultValue]);
      }

  }];
}

@end
