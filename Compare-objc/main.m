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
        NSLog(@"================ nil object ================");
        
        id obj_a1;
        description(obj_a1);
        
        NSString *obj_a2;
        description(obj_a2);
        
        AObject *obj_a3;
        description(obj_a3);
        
        BObject *obj_a4;
        description(obj_a4);
        
        
        NSLog(@"================ alloc Object ================");
        
        id obj_b1 = [NSObject alloc];
        description(obj_b1);
        
        NSString *obj_b2 = [NSString alloc];
        description(obj_b2);
        
        AObject *obj_b3 = [AObject alloc];
        description(obj_b3);
        
        BObject *obj_b4 = [BObject alloc];
        description(obj_b4);
        
        
        NSLog(@"================ initialize Object ================");
        
        id obj_c1 = [NSObject new];
        description(obj_c1);
        
        NSString *obj_c2 = [NSString string];
        description(obj_c2);
        
        AObject *obj_c3 = [AObject new];
        description(obj_c3);
        
        BObject *obj_c4 = [BObject new];
        description(obj_c4);
    }
    return 0;
}

void description(id obj) {
    NSString *className = NSStringFromClass([obj class]);
    
#pragma mark [NSObject isKindOfClass]
    
    // EN: An instance of given class or an instance of any class that inherits from that class.
    // JP: 指定したクラスのインスタンスまたは、そのクラスを継承するクラスのインスタンス
    
    if ([obj isKindOfClass:[NSObject class]]) {
        DLog(@"%@ is kind of NSObject", className);
    }
    if ([obj isKindOfClass:[NSString class]]) {
        DLog(@"%@ is kind of NSString", className);
    }
    if ([obj isKindOfClass:[AObject class]]) {
        DLog(@"%@ is kind of AObject", className);
    }
    if ([obj isKindOfClass:[BObject class]]) {
        DLog(@"%@ is kind of BObject", className);
    }
    
    
#pragma mark [NSObject isMemberOfClass]
    
    // EN: An instance of a given class.
    // JP: 指定したクラスのインスタンス
    
    if ([obj isMemberOfClass:[NSObject class]]) {
        DLog(@"%@ is member of NSObject", className);
    }
    if ([obj isMemberOfClass:[NSString class]]) {
        DLog(@"%@ is member of NSString", className);
    }
    if ([obj isMemberOfClass:[AObject class]]) {
        DLog(@"%@ is member of AObject", className);
    }
    if ([obj isMemberOfClass:[BObject class]]) {
        DLog(@"%@ is member of BObject", className);
    }
    
    
#pragma mark [NSObject isSubclassOfClass]
    
    // EN: A subclass of, or identical to, a given class.
    // JP: サブクラスまたは、同一の指定したクラス
    
    if ([[obj class] isSubclassOfClass:[NSObject class]]) {
        DLog(@"%@ is subclass of NSObject", className);
    }
    if ([[obj class] isSubclassOfClass:[NSString class]]) {
        DLog(@"%@ is subclass of NSString", className);
    }
    if ([[obj class] isSubclassOfClass:[AObject class]]) {
        DLog(@"%@ is subclass of AObject", className);
    }
    if ([[obj class] isSubclassOfClass:[BObject class]]) {
        DLog(@"%@ is subclass of BObject", className);
    }
    
    
#pragma mark [NSObject class] == [NSObject class]
    
    // EN: Identical to, a given class.
    // JP: 同一の指定したクラス
    
    if ([obj class] == [NSObject class]) {
        DLog(@"%@ is NSObject", className);
    }
    if ([obj class] == [NSString class]) {
        DLog(@"%@ is NSString", className);
    }
    if ([obj class] == [AObject class]) {
        DLog(@"%@ is AObject", className);
    }
    if ([obj class] == [BObject class]) {
        DLog(@"%@ is BObject", className);
    }
}
