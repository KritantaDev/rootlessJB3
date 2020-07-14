//
//  RJBLoggerTextView.m
//  rootlessJB
//
//  Created by Kritanta on 7/13/20.
//  Copyright © 2020 Jake James. All rights reserved.
//

#include "RJBLoggerTextView.h"

@implementation RJBLoggerTextView

-(void)logString:(NSString *)string withTick:(const char *)str
{
    self.text = [NSString stringWithFormat:@"%@%s", self.text, str];
    self.text = [NSString stringWithFormat:@"%@%@", self.text, string];
}
-(void)logCString:(const char *)str withTick:(const char *)str2
{
    self.text = [NSString stringWithFormat:@"%@%s", self.text, str2];
    self.text = [NSString stringWithFormat:@"%@%s", self.text, str];
}
-(void)splitPrintString:(NSString *)string1 andString:(NSString *)string2
{
    //TODO
}

@end
