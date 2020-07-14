//
//  perception.m
//  Try and figure out What The Fuck™ is going on.
//
//  Created by Kritanta on 7/13/20.
//

#import "ViewController.h"
#import "jelbrekLib.h"
#import "exploit/voucher_swap/voucher_swap.h"
#import "libjb.h"
#import "payload.h"
#import "offsetsDump.h"
#import "exploit/voucher_swap/kernel_slide.h"
#import "insert_dylib.h"
#import "vnode.h"
#import "exploit/v3ntex/exploit.h"
#import "exploit/time_waste/exploit.h"
#import <mach/mach.h>
#import <sys/stat.h>
#import <sys/utsname.h>
#import <dlfcn.h>

#import <Foundation/Foundation.h>

int csops(pid_t pid, unsigned int  ops, void * useraddr, size_t usersize);

BOOL is_platform()
{
    uint32_t flags;
    csops(getpid(), 0, &flags, 0);
    
    if ((flags & 0x4000000))  // CS_PLATFORM_BINARY https://github.com/apple/darwin-xnu/blob/master/osfmk/kern/cs_blobs.h#L63
                              // https://github.com/apple/darwin-xnu/blob/master/osfmk/kern/task.h#L256
        return YES;
    
    return NO;
}

BOOL jailbroken()
{
    return is_platform();
}
