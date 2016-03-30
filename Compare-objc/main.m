//
//  main.m
//  Compare-objc
//
//  Created by masato_arai on 2016/03/30.
//  Copyright © 2016年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AObject.h"
#import "BObject.h"
#import "DebugLog.h"

void description(id obj);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id obj;
        //        NSString *obj;
        //        AObject *obj;
        //        BObject *obj;
        //
        //        id obj = [NSObject alloc];
        //        NSString *obj = [NSString alloc];
        //        AObject *obj = [AObject alloc];
        //        BObject *obj = [BObject alloc];
        //
        //        id obj = [NSObject new];
        //        NSString *obj = [NSString string];
        //        AObject *obj = [AObject new];
        //        BObject *obj = [BObject new];
        
        description(obj);
    }
    return 0;
}

void description(id obj) {
#pragma mark [NSObject isKindOfClass]
    
    if ([obj isKindOfClass:[NSObject class]]) {
        DLog(@"obj is kind of NSObject");
    }
    if ([obj isKindOfClass:[NSString class]]) {
        DLog(@"obj is kind of NSString");
    }
    if ([obj isKindOfClass:[AObject class]]) {
        DLog(@"obj is kind of AObject");
    }
    if ([obj isKindOfClass:[BObject class]]) {
        DLog(@"obj is kind of BObject");
    }
    
    
#pragma mark [NSObject isMemberOfClass]
    
    if ([obj isMemberOfClass:[NSObject class]]) {
        DLog(@"obj is member of NSObject");
    }
    if ([obj isMemberOfClass:[NSString class]]) {
        DLog(@"obj is member of NSString");
    }
    if ([obj isMemberOfClass:[AObject class]]) {
        DLog(@"obj is member of AObject");
    }
    if ([obj isMemberOfClass:[BObject class]]) {
        DLog(@"obj is member of BObject");
    }
    
    
#pragma mark [NSObject isSubclassOfClass]
    
    if ([[obj class] isSubclassOfClass:[NSObject class]]) {
        DLog(@"obj is subclass of NSObject");
    }
    if ([[obj class] isSubclassOfClass:[NSString class]]) {
        DLog(@"obj is subclass of NSString");
    }
    if ([[obj class] isSubclassOfClass:[AObject class]]) {
        DLog(@"obj is subclass of AObject");
    }
    if ([[obj class] isSubclassOfClass:[BObject class]]) {
        DLog(@"obj is subclass of BObject");
    }
    
    
#pragma mark [NSObject class] == [NSObject class]
    
    // Compare class object. クラスオブジェクトで比較する
    if ([obj class] == [NSObject class]) {
        DLog(@"obj is NSObject");
    }
    if ([obj class] == [NSString class]) {
        DLog(@"obj is NSString");
    }
    if ([obj class] == [AObject class]) {
        DLog(@"obj is AObject");
    }
    if ([obj class] == [BObject class]) {
        DLog(@"obj is BObject");
    }
}
