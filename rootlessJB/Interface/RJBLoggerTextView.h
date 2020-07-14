//
//  RJBLoggerTextView.h
//  rootlessJB
//
//  Created by Kritanta on 7/13/20.
//  Copyright © 2020 Jake James. All rights reserved.
//

#ifndef RJBLoggerTextView_h
#define RJBLoggerTextView_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface RJBLoggerTextView : UITextView
-(void)logString:(NSString *)string withTick:(const char *)str;
-(void)logCString:(const char *)str withTick:(const char *)str;
-(void)splitPrintString:(NSString *)string1 andString:(NSString *)string2;
@end

#endif /* RJBLoggerTextView_h */
