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
        
        NSObject *obj_a1;
        description(obj_a1);
        
        NSString *obj_a2;
        description(obj_a2);
        
        AObject *obj_a3;
        description(obj_a3);
        
        BObject *obj_a4;
        description(obj_a4);
        
        
        NSLog(@"================ alloc Object ================");
        
        NSObject *obj_b1 = [NSObject alloc];
        description(obj_b1);
        
        NSString *obj_b2 = [NSString alloc];
        description(obj_b2);
        
        AObject *obj_b3 = [AObject alloc];
        description(obj_b3);
        
        BObject *obj_b4 = [BObject alloc];
        description(obj_b4);
        
        
        NSLog(@"================ initialize Object ================");
        
        NSObject *obj_c1 = [NSObject new];
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
    
#pragma mark [NSObject isKindOfClass:]
    
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
    
    
#pragma mark [NSObject isMemberOfClass:]
    
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
    
    
#pragma mark [NSObject isSubclassOfClass:]
    
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
    
    // EN: Compare of the class object.
    // JP: クラスオブジェクトの比較
    
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
    
    
#pragma mark [NSObject isEqual:]
    
    // EN: Compare of the instance by "isEqual".
    // JP: "isEqual"によるインスタンスの比較
    
    if ([obj isEqual:obj]) {
        DLog(@"%@ is equal %@", className, className);
    } else {
        DLog(@"%@ is not equal %@", className, className);
    }
    
    
#pragma mark instance == instance
    
    // EN: Compare of the instance by "==".
    // JP: "=="によるインスタンスの比較
    
    if (obj == obj) {
        DLog(@"%@ is %@", className, className);
    } else {
        DLog(@"%@ is not %@", className, className);
    }
    
    
#pragma mark [NSObject conformsToProtocol:]
    
    // EN: Whether the receiver conforms to a given protocol.
    // JP: プロトコルに順応しているか
    
    if ([obj conformsToProtocol:@protocol(NSObject)]) {
        DLog(@"%@ conforms to protocol of NSObject.", className);
    }
    if ([obj conformsToProtocol:@protocol(NSCopying)] && [obj conformsToProtocol:@protocol(NSMutableCopying)] && [obj conformsToProtocol:@protocol(NSSecureCoding)]) {
        DLog(@"%@ conforms to protocol of NSCopying and NSMutableCopying, NSSecureCoding.", className);
    }
    if ([obj conformsToProtocol:@protocol(AProtocol)]) {
        DLog(@"%@ conforms to protocol of AProtocol.", className);
    }
    if ([obj conformsToProtocol:@protocol(BProtocol)]) {
        DLog(@"%@ conforms to protocol of BProtocol.", className);
    }
    
    
#pragma mark [NSObject respondsToSelector:]
    
    // EN: Whether the receiver implements or inherits a method.
    // JP: メソッドを実装または継承しているか
    
    if ([obj respondsToSelector:@selector(copy)]) {
        DLog(@"%@ responds to selector of copy.", className);
    }
    if ([obj respondsToSelector:@selector(length)]) {
        DLog(@"%@ responds to selector of length.", className);
    }
    if ([obj respondsToSelector:@selector(aMethod)]) {
        DLog(@"%@ responds to selector of aMethod.", className);
    }
    if ([obj respondsToSelector:@selector(bMethod)]) {
        DLog(@"%@ responds to selector of bMethod.", className);
    }
}

/**
 2016-03-30 17:05:21.776 Compare-objc[51082:2277081] ================ nil object ================
 2016-03-30 17:05:21.777 Compare-objc[51082:2277081] void description(__strong id) [Line 152] (null) is not equal (null)
 2016-03-30 17:05:21.777 Compare-objc[51082:2277081] void description(__strong id) [Line 162] (null) is (null)
 2016-03-30 17:05:21.777 Compare-objc[51082:2277081] void description(__strong id) [Line 152] (null) is not equal (null)
 2016-03-30 17:05:21.777 Compare-objc[51082:2277081] void description(__strong id) [Line 162] (null) is (null)
 2016-03-30 17:05:21.777 Compare-objc[51082:2277081] void description(__strong id) [Line 152] (null) is not equal (null)
 2016-03-30 17:05:21.778 Compare-objc[51082:2277081] void description(__strong id) [Line 162] (null) is (null)
 2016-03-30 17:05:21.778 Compare-objc[51082:2277081] void description(__strong id) [Line 152] (null) is not equal (null)
 2016-03-30 17:05:21.778 Compare-objc[51082:2277081] void description(__strong id) [Line 162] (null) is (null)
 2016-03-30 17:05:21.778 Compare-objc[51082:2277081] ================ alloc Object ================
 2016-03-30 17:05:21.778 Compare-objc[51082:2277081] void description(__strong id) [Line 74] NSObject is kind of NSObject
 2016-03-30 17:05:21.778 Compare-objc[51082:2277081] void description(__strong id) [Line 93] NSObject is member of NSObject
 2016-03-30 17:05:21.778 Compare-objc[51082:2277081] void description(__strong id) [Line 112] NSObject is subclass of NSObject
 2016-03-30 17:05:21.832 Compare-objc[51082:2277081] void description(__strong id) [Line 131] NSObject is NSObject
 2016-03-30 17:05:21.832 Compare-objc[51082:2277081] void description(__strong id) [Line 150] NSObject is equal NSObject
 2016-03-30 17:05:21.832 Compare-objc[51082:2277081] void description(__strong id) [Line 162] NSObject is NSObject
 2016-03-30 17:05:21.832 Compare-objc[51082:2277081] void description(__strong id) [Line 174] NSObject conforms to protocol of NSObject.
 2016-03-30 17:05:21.832 Compare-objc[51082:2277081] void description(__strong id) [Line 193] NSObject responds to selector of hash.
 2016-03-30 17:05:21.832 Compare-objc[51082:2277081] void description(__strong id) [Line 74] NSPlaceholderString is kind of NSObject
 2016-03-30 17:05:21.832 Compare-objc[51082:2277081] void description(__strong id) [Line 77] NSPlaceholderString is kind of NSString
 2016-03-30 17:05:21.832 Compare-objc[51082:2277081] void description(__strong id) [Line 112] NSPlaceholderString is subclass of NSObject
 2016-03-30 17:05:21.859 Compare-objc[51082:2277081] void description(__strong id) [Line 115] NSPlaceholderString is subclass of NSString
 2016-03-30 17:05:21.859 Compare-objc[51082:2277081] void description(__strong id) [Line 150] NSPlaceholderString is equal NSPlaceholderString
 2016-03-30 17:05:21.859 Compare-objc[51082:2277081] void description(__strong id) [Line 162] NSPlaceholderString is NSPlaceholderString
 2016-03-30 17:05:21.859 Compare-objc[51082:2277081] void description(__strong id) [Line 174] NSPlaceholderString conforms to protocol of NSObject.
 2016-03-30 17:05:21.860 Compare-objc[51082:2277081] void description(__strong id) [Line 177] NSPlaceholderString conforms to protocol of NSCopying and NSMutableCopying, NSSecureCoding.
 2016-03-30 17:05:21.860 Compare-objc[51082:2277081] void description(__strong id) [Line 193] NSPlaceholderString responds to selector of hash.
 2016-03-30 17:05:21.860 Compare-objc[51082:2277081] void description(__strong id) [Line 196] NSPlaceholderString responds to selector of length.
 2016-03-30 17:05:21.874 Compare-objc[51082:2277081] void description(__strong id) [Line 74] AObject is kind of NSObject
 2016-03-30 17:05:21.874 Compare-objc[51082:2277081] void description(__strong id) [Line 80] AObject is kind of AObject
 2016-03-30 17:05:21.874 Compare-objc[51082:2277081] void description(__strong id) [Line 99] AObject is member of AObject
 2016-03-30 17:05:21.875 Compare-objc[51082:2277081] void description(__strong id) [Line 112] AObject is subclass of NSObject
 2016-03-30 17:05:21.875 Compare-objc[51082:2277081] void description(__strong id) [Line 118] AObject is subclass of AObject
 2016-03-30 17:05:21.875 Compare-objc[51082:2277081] void description(__strong id) [Line 137] AObject is AObject
 2016-03-30 17:05:21.875 Compare-objc[51082:2277081] void description(__strong id) [Line 150] AObject is equal AObject
 2016-03-30 17:05:21.875 Compare-objc[51082:2277081] void description(__strong id) [Line 162] AObject is AObject
 2016-03-30 17:05:21.875 Compare-objc[51082:2277081] void description(__strong id) [Line 174] AObject conforms to protocol of NSObject.
 2016-03-30 17:05:21.875 Compare-objc[51082:2277081] void description(__strong id) [Line 180] AObject conforms to protocol of AProtocol.
 2016-03-30 17:05:21.875 Compare-objc[51082:2277081] void description(__strong id) [Line 193] AObject responds to selector of hash.
 2016-03-30 17:05:21.876 Compare-objc[51082:2277081] void description(__strong id) [Line 199] AObject responds to selector of aMethod.
 2016-03-30 17:05:21.876 Compare-objc[51082:2277081] void description(__strong id) [Line 74] BObject is kind of NSObject
 2016-03-30 17:05:21.876 Compare-objc[51082:2277081] void description(__strong id) [Line 80] BObject is kind of AObject
 2016-03-30 17:05:21.876 Compare-objc[51082:2277081] void description(__strong id) [Line 83] BObject is kind of BObject
 2016-03-30 17:05:21.876 Compare-objc[51082:2277081] void description(__strong id) [Line 102] BObject is member of BObject
 2016-03-30 17:05:21.876 Compare-objc[51082:2277081] void description(__strong id) [Line 112] BObject is subclass of NSObject
 2016-03-30 17:05:21.881 Compare-objc[51082:2277081] void description(__strong id) [Line 118] BObject is subclass of AObject
 2016-03-30 17:05:21.881 Compare-objc[51082:2277081] void description(__strong id) [Line 121] BObject is subclass of BObject
 2016-03-30 17:05:21.881 Compare-objc[51082:2277081] void description(__strong id) [Line 140] BObject is BObject
 2016-03-30 17:05:21.881 Compare-objc[51082:2277081] void description(__strong id) [Line 150] BObject is equal BObject
 2016-03-30 17:05:21.881 Compare-objc[51082:2277081] void description(__strong id) [Line 162] BObject is BObject
 2016-03-30 17:05:21.881 Compare-objc[51082:2277081] void description(__strong id) [Line 174] BObject conforms to protocol of NSObject.
 2016-03-30 17:05:21.881 Compare-objc[51082:2277081] void description(__strong id) [Line 180] BObject conforms to protocol of AProtocol.
 2016-03-30 17:05:21.881 Compare-objc[51082:2277081] void description(__strong id) [Line 183] BObject conforms to protocol of BProtocol.
 2016-03-30 17:05:21.882 Compare-objc[51082:2277081] void description(__strong id) [Line 193] BObject responds to selector of hash.
 2016-03-30 17:05:21.883 Compare-objc[51082:2277081] void description(__strong id) [Line 199] BObject responds to selector of aMethod.
 2016-03-30 17:05:21.883 Compare-objc[51082:2277081] void description(__strong id) [Line 202] BObject responds to selector of bMethod.
 2016-03-30 17:05:21.883 Compare-objc[51082:2277081] ================ initialize Object ================
 2016-03-30 17:05:21.883 Compare-objc[51082:2277081] void description(__strong id) [Line 74] NSObject is kind of NSObject
 2016-03-30 17:05:21.883 Compare-objc[51082:2277081] void description(__strong id) [Line 93] NSObject is member of NSObject
 2016-03-30 17:05:21.883 Compare-objc[51082:2277081] void description(__strong id) [Line 112] NSObject is subclass of NSObject
 2016-03-30 17:05:21.883 Compare-objc[51082:2277081] void description(__strong id) [Line 131] NSObject is NSObject
 2016-03-30 17:05:21.883 Compare-objc[51082:2277081] void description(__strong id) [Line 150] NSObject is equal NSObject
 2016-03-30 17:05:21.900 Compare-objc[51082:2277081] void description(__strong id) [Line 162] NSObject is NSObject
 2016-03-30 17:05:21.900 Compare-objc[51082:2277081] void description(__strong id) [Line 174] NSObject conforms to protocol of NSObject.
 2016-03-30 17:05:21.900 Compare-objc[51082:2277081] void description(__strong id) [Line 193] NSObject responds to selector of hash.
 2016-03-30 17:05:21.900 Compare-objc[51082:2277081] void description(__strong id) [Line 74] __NSCFConstantString is kind of NSObject
 2016-03-30 17:05:21.901 Compare-objc[51082:2277081] void description(__strong id) [Line 77] __NSCFConstantString is kind of NSString
 2016-03-30 17:05:21.901 Compare-objc[51082:2277081] void description(__strong id) [Line 112] __NSCFConstantString is subclass of NSObject
 2016-03-30 17:05:21.901 Compare-objc[51082:2277081] void description(__strong id) [Line 115] __NSCFConstantString is subclass of NSString
 2016-03-30 17:05:21.901 Compare-objc[51082:2277081] void description(__strong id) [Line 150] __NSCFConstantString is equal __NSCFConstantString
 2016-03-30 17:05:21.925 Compare-objc[51082:2277081] void description(__strong id) [Line 162] __NSCFConstantString is __NSCFConstantString
 2016-03-30 17:05:21.925 Compare-objc[51082:2277081] void description(__strong id) [Line 174] __NSCFConstantString conforms to protocol of NSObject.
 2016-03-30 17:05:21.925 Compare-objc[51082:2277081] void description(__strong id) [Line 177] __NSCFConstantString conforms to protocol of NSCopying and NSMutableCopying, NSSecureCoding.
 2016-03-30 17:05:21.925 Compare-objc[51082:2277081] void description(__strong id) [Line 193] __NSCFConstantString responds to selector of hash.
 2016-03-30 17:05:21.928 Compare-objc[51082:2277081] void description(__strong id) [Line 196] __NSCFConstantString responds to selector of length.
 2016-03-30 17:05:21.931 Compare-objc[51082:2277081] void description(__strong id) [Line 74] AObject is kind of NSObject
 2016-03-30 17:05:21.931 Compare-objc[51082:2277081] void description(__strong id) [Line 80] AObject is kind of AObject
 2016-03-30 17:05:21.931 Compare-objc[51082:2277081] void description(__strong id) [Line 99] AObject is member of AObject
 2016-03-30 17:05:21.932 Compare-objc[51082:2277081] void description(__strong id) [Line 112] AObject is subclass of NSObject
 2016-03-30 17:05:21.932 Compare-objc[51082:2277081] void description(__strong id) [Line 118] AObject is subclass of AObject
 2016-03-30 17:05:21.969 Compare-objc[51082:2277081] void description(__strong id) [Line 137] AObject is AObject
 2016-03-30 17:05:21.969 Compare-objc[51082:2277081] void description(__strong id) [Line 150] AObject is equal AObject
 2016-03-30 17:05:21.969 Compare-objc[51082:2277081] void description(__strong id) [Line 162] AObject is AObject
 2016-03-30 17:05:21.969 Compare-objc[51082:2277081] void description(__strong id) [Line 174] AObject conforms to protocol of NSObject.
 2016-03-30 17:05:21.969 Compare-objc[51082:2277081] void description(__strong id) [Line 180] AObject conforms to protocol of AProtocol.
 2016-03-30 17:05:21.969 Compare-objc[51082:2277081] void description(__strong id) [Line 193] AObject responds to selector of hash.
 2016-03-30 17:05:21.969 Compare-objc[51082:2277081] void description(__strong id) [Line 199] AObject responds to selector of aMethod.
 2016-03-30 17:05:21.969 Compare-objc[51082:2277081] void description(__strong id) [Line 74] BObject is kind of NSObject
 2016-03-30 17:05:21.970 Compare-objc[51082:2277081] void description(__strong id) [Line 80] BObject is kind of AObject
 2016-03-30 17:05:21.970 Compare-objc[51082:2277081] void description(__strong id) [Line 83] BObject is kind of BObject
 2016-03-30 17:05:21.970 Compare-objc[51082:2277081] void description(__strong id) [Line 102] BObject is member of BObject
 2016-03-30 17:05:21.970 Compare-objc[51082:2277081] void description(__strong id) [Line 112] BObject is subclass of NSObject
 2016-03-30 17:05:21.970 Compare-objc[51082:2277081] void description(__strong id) [Line 118] BObject is subclass of AObject
 2016-03-30 17:05:21.970 Compare-objc[51082:2277081] void description(__strong id) [Line 121] BObject is subclass of BObject
 2016-03-30 17:05:21.970 Compare-objc[51082:2277081] void description(__strong id) [Line 140] BObject is BObject
 2016-03-30 17:05:21.970 Compare-objc[51082:2277081] void description(__strong id) [Line 150] BObject is equal BObject
 2016-03-30 17:05:21.970 Compare-objc[51082:2277081] void description(__strong id) [Line 162] BObject is BObject
 2016-03-30 17:05:21.970 Compare-objc[51082:2277081] void description(__strong id) [Line 174] BObject conforms to protocol of NSObject.
 2016-03-30 17:05:21.972 Compare-objc[51082:2277081] void description(__strong id) [Line 180] BObject conforms to protocol of AProtocol.
 2016-03-30 17:05:21.972 Compare-objc[51082:2277081] void description(__strong id) [Line 183] BObject conforms to protocol of BProtocol.
 2016-03-30 17:05:21.972 Compare-objc[51082:2277081] void description(__strong id) [Line 193] BObject responds to selector of hash.
 2016-03-30 17:05:21.972 Compare-objc[51082:2277081] void description(__strong id) [Line 199] BObject responds to selector of aMethod.
 2016-03-30 17:05:21.972 Compare-objc[51082:2277081] void description(__strong id) [Line 202] BObject responds to selector of bMethod.
 Program ended with exit code: 0
 */
