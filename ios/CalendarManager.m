//
//  CalendarManager.m
//  NativeModulePlayground
//
//  Created by Charlie von Lehe on 9/17/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "CalendarManager.h"
#import <Foundation/Foundation.h>
#import "React/RCTLog.h"

@implementation CalendarManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location) {
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}


@end
