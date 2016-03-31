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
    
    
#pragma mark [NSObject superclass] == [NSObject class]
    
    // EN: Compare of the super class object.
    // JP: スーパークラスオブジェクトの比較
    
    if ([obj superclass] == [NSObject class]) {
        DLog(@"Superclass of %@ is NSObject", className);
    }
    if ([obj superclass] == [NSString class]) {
        DLog(@"Superclass of %@ is NSString", className);
    }
    if ([obj superclass] == [AObject class]) {
        DLog(@"Superclass of %@ is AObject", className);
    }
    if ([obj superclass] == [BObject class]) {
        DLog(@"Superclass of %@ is BObject", className);
    }
    
    
#pragma mark [NSObject isEqual:]
    
    // EN: Compare of the instance by 'isEqual'.
    // JP: 'isEqual'によるインスタンスの比較
    
    if ([obj isEqual:obj]) {
        DLog(@"%@ is equal %@", className, className);
    } else {
        DLog(@"%@ is not equal %@", className, className);
    }
    
    
#pragma mark instance == instance
    
    // EN: Compare of the instance by '=='.
    // JP: '=='によるインスタンスの比較
    
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
    
    // EN: Whether the receiver implements or inherits a class method.
    // JP: クラスメソッドを実装または継承しているか
    
    if ([[obj class] respondsToSelector:@selector(copy)]) {
        DLog(@"%@ responds to selector of (class method) copy.", className);
    }
    if ([[obj class] respondsToSelector:@selector(length)]) {
        DLog(@"%@ responds to selector of (class method) length.", className);
    }
    if ([[obj class] respondsToSelector:@selector(aMethod)]) {
        DLog(@"%@ responds to selector of (class method) aMethod.", className);
    }
    if ([[obj class] respondsToSelector:@selector(bMethod)]) {
        DLog(@"%@ responds to selector of (class method) bMethod.", className);
    }
    
    // EN: Whether the receiver implements or inherits a instance method.
    // JP: インスタンスメソッドを実装または継承しているか
    
    if ([obj respondsToSelector:@selector(copy)]) {
        DLog(@"%@ responds to selector of (instance method) copy.", className);
    }
    if ([obj respondsToSelector:@selector(length)]) {
        DLog(@"%@ responds to selector of (instance method) length.", className);
    }
    if ([obj respondsToSelector:@selector(aMethod)]) {
        DLog(@"%@ responds to selector of (instance method) aMethod.", className);
    }
    if ([obj respondsToSelector:@selector(bMethod)]) {
        DLog(@"%@ responds to selector of (instance method) bMethod.", className);
    }
    
    
#pragma mark [NSObject instancesRespondToSelector:]
    
    // EN: Whether instances of the receiver are capable of responding to a given selector.
    // JP: 指定したセレクタに反応を示すインスタンスなのか。(インスタンスメソッドを実装または継承しているか)
    
    if ([[obj class] instancesRespondToSelector:@selector(copy)]) {
        DLog(@"%@ instances Respond To Selector of (instance method) copy.", className);
    }
    if ([[obj class] instancesRespondToSelector:@selector(length)]) {
        DLog(@"%@ instances Respond To Selector of (instance method) length.", className);
    }
    if ([[obj class] instancesRespondToSelector:@selector(aMethod)]) {
        DLog(@"%@ instances Respond To Selector of (instance method) aMethod.", className);
    }
    if ([[obj class] instancesRespondToSelector:@selector(bMethod)]) {
        DLog(@"%@ instances Respond To Selector of (instance method) bMethod.", className);
    }
}

/**
 2016-03-31 12:25:42.442 Compare-objc[53491:2353751] ================ nil object ================
 2016-03-31 12:25:42.443 Compare-objc[53491:2353751] void description(__strong id) [Line 171] (null) is not equal (null)
 2016-03-31 12:25:42.443 Compare-objc[53491:2353751] void description(__strong id) [Line 181] (null) is (null)
 2016-03-31 12:25:42.443 Compare-objc[53491:2353751] void description(__strong id) [Line 171] (null) is not equal (null)
 2016-03-31 12:25:42.443 Compare-objc[53491:2353751] void description(__strong id) [Line 181] (null) is (null)
 2016-03-31 12:25:42.443 Compare-objc[53491:2353751] void description(__strong id) [Line 171] (null) is not equal (null)
 2016-03-31 12:25:42.443 Compare-objc[53491:2353751] void description(__strong id) [Line 181] (null) is (null)
 2016-03-31 12:25:42.443 Compare-objc[53491:2353751] void description(__strong id) [Line 171] (null) is not equal (null)
 2016-03-31 12:25:42.443 Compare-objc[53491:2353751] void description(__strong id) [Line 181] (null) is (null)
 2016-03-31 12:25:42.443 Compare-objc[53491:2353751] ================ alloc Object ================
 2016-03-31 12:25:42.444 Compare-objc[53491:2353751] void description(__strong id) [Line 74] NSObject is kind of NSObject
 2016-03-31 12:25:42.465 Compare-objc[53491:2353751] void description(__strong id) [Line 93] NSObject is member of NSObject
 2016-03-31 12:25:42.465 Compare-objc[53491:2353751] void description(__strong id) [Line 112] NSObject is subclass of NSObject
 2016-03-31 12:25:42.465 Compare-objc[53491:2353751] void description(__strong id) [Line 131] NSObject is NSObject
 2016-03-31 12:25:42.465 Compare-objc[53491:2353751] void description(__strong id) [Line 169] NSObject is equal NSObject
 2016-03-31 12:25:42.465 Compare-objc[53491:2353751] void description(__strong id) [Line 181] NSObject is NSObject
 2016-03-31 12:25:42.466 Compare-objc[53491:2353751] void description(__strong id) [Line 193] NSObject conforms to protocol of NSObject.
 2016-03-31 12:25:42.466 Compare-objc[53491:2353751] void description(__strong id) [Line 212] NSObject responds to selector of (class method) copy.
 2016-03-31 12:25:42.466 Compare-objc[53491:2353751] void description(__strong id) [Line 228] NSObject responds to selector of (instance method) copy.
 2016-03-31 12:25:42.500 Compare-objc[53491:2353751] void description(__strong id) [Line 247] NSObject instances Respond To Selector of (instance method) copy.
 2016-03-31 12:25:42.500 Compare-objc[53491:2353751] void description(__strong id) [Line 74] NSPlaceholderString is kind of NSObject
 2016-03-31 12:25:42.500 Compare-objc[53491:2353751] void description(__strong id) [Line 77] NSPlaceholderString is kind of NSString
 2016-03-31 12:25:42.500 Compare-objc[53491:2353751] void description(__strong id) [Line 112] NSPlaceholderString is subclass of NSObject
 2016-03-31 12:25:42.500 Compare-objc[53491:2353751] void description(__strong id) [Line 115] NSPlaceholderString is subclass of NSString
 2016-03-31 12:25:42.501 Compare-objc[53491:2353751] void description(__strong id) [Line 153] Superclass of NSPlaceholderString is NSString
 2016-03-31 12:25:42.501 Compare-objc[53491:2353751] void description(__strong id) [Line 169] NSPlaceholderString is equal NSPlaceholderString
 2016-03-31 12:25:42.608 Compare-objc[53491:2353751] void description(__strong id) [Line 181] NSPlaceholderString is NSPlaceholderString
 2016-03-31 12:25:42.608 Compare-objc[53491:2353751] void description(__strong id) [Line 193] NSPlaceholderString conforms to protocol of NSObject.
 2016-03-31 12:25:42.608 Compare-objc[53491:2353751] void description(__strong id) [Line 196] NSPlaceholderString conforms to protocol of NSCopying and NSMutableCopying, NSSecureCoding.
 2016-03-31 12:25:42.608 Compare-objc[53491:2353751] void description(__strong id) [Line 212] NSPlaceholderString responds to selector of (class method) copy.
 2016-03-31 12:25:42.608 Compare-objc[53491:2353751] void description(__strong id) [Line 228] NSPlaceholderString responds to selector of (instance method) copy.
 2016-03-31 12:25:42.608 Compare-objc[53491:2353751] void description(__strong id) [Line 231] NSPlaceholderString responds to selector of (instance method) length.
 2016-03-31 12:25:42.616 Compare-objc[53491:2353751] void description(__strong id) [Line 247] NSPlaceholderString instances Respond To Selector of (instance method) copy.
 2016-03-31 12:25:42.616 Compare-objc[53491:2353751] void description(__strong id) [Line 250] NSPlaceholderString instances Respond To Selector of (instance method) length.
 2016-03-31 12:25:42.616 Compare-objc[53491:2353751] void description(__strong id) [Line 74] AObject is kind of NSObject
 2016-03-31 12:25:42.616 Compare-objc[53491:2353751] void description(__strong id) [Line 80] AObject is kind of AObject
 2016-03-31 12:25:42.616 Compare-objc[53491:2353751] void description(__strong id) [Line 99] AObject is member of AObject
 2016-03-31 12:25:42.616 Compare-objc[53491:2353751] void description(__strong id) [Line 112] AObject is subclass of NSObject
 2016-03-31 12:25:42.616 Compare-objc[53491:2353751] void description(__strong id) [Line 118] AObject is subclass of AObject
 2016-03-31 12:25:42.617 Compare-objc[53491:2353751] void description(__strong id) [Line 137] AObject is AObject
 2016-03-31 12:25:42.648 Compare-objc[53491:2353751] void description(__strong id) [Line 150] Superclass of AObject is NSObject
 2016-03-31 12:25:42.649 Compare-objc[53491:2353751] void description(__strong id) [Line 169] AObject is equal AObject
 2016-03-31 12:25:42.650 Compare-objc[53491:2353751] void description(__strong id) [Line 181] AObject is AObject
 2016-03-31 12:25:42.650 Compare-objc[53491:2353751] void description(__strong id) [Line 193] AObject conforms to protocol of NSObject.
 2016-03-31 12:25:42.650 Compare-objc[53491:2353751] void description(__strong id) [Line 199] AObject conforms to protocol of AProtocol.
 2016-03-31 12:25:42.650 Compare-objc[53491:2353751] void description(__strong id) [Line 212] AObject responds to selector of (class method) copy.
 2016-03-31 12:25:42.651 Compare-objc[53491:2353751] void description(__strong id) [Line 228] AObject responds to selector of (instance method) copy.
 2016-03-31 12:25:42.651 Compare-objc[53491:2353751] void description(__strong id) [Line 234] AObject responds to selector of (instance method) aMethod.
 2016-03-31 12:25:42.674 Compare-objc[53491:2353751] void description(__strong id) [Line 247] AObject instances Respond To Selector of (instance method) copy.
 2016-03-31 12:25:42.674 Compare-objc[53491:2353751] void description(__strong id) [Line 253] AObject instances Respond To Selector of (instance method) aMethod.
 2016-03-31 12:25:42.674 Compare-objc[53491:2353751] void description(__strong id) [Line 74] BObject is kind of NSObject
 2016-03-31 12:25:42.674 Compare-objc[53491:2353751] void description(__strong id) [Line 80] BObject is kind of AObject
 2016-03-31 12:25:42.674 Compare-objc[53491:2353751] void description(__strong id) [Line 83] BObject is kind of BObject
 2016-03-31 12:25:42.674 Compare-objc[53491:2353751] void description(__strong id) [Line 102] BObject is member of BObject
 2016-03-31 12:25:42.674 Compare-objc[53491:2353751] void description(__strong id) [Line 112] BObject is subclass of NSObject
 2016-03-31 12:25:42.674 Compare-objc[53491:2353751] void description(__strong id) [Line 118] BObject is subclass of AObject
 2016-03-31 12:25:42.681 Compare-objc[53491:2353751] void description(__strong id) [Line 121] BObject is subclass of BObject
 2016-03-31 12:25:42.681 Compare-objc[53491:2353751] void description(__strong id) [Line 140] BObject is BObject
 2016-03-31 12:25:42.681 Compare-objc[53491:2353751] void description(__strong id) [Line 156] Superclass of BObject is AObject
 2016-03-31 12:25:42.681 Compare-objc[53491:2353751] void description(__strong id) [Line 169] BObject is equal BObject
 2016-03-31 12:25:42.682 Compare-objc[53491:2353751] void description(__strong id) [Line 181] BObject is BObject
 2016-03-31 12:25:42.682 Compare-objc[53491:2353751] void description(__strong id) [Line 193] BObject conforms to protocol of NSObject.
 2016-03-31 12:25:42.682 Compare-objc[53491:2353751] void description(__strong id) [Line 199] BObject conforms to protocol of AProtocol.
 2016-03-31 12:25:42.682 Compare-objc[53491:2353751] void description(__strong id) [Line 202] BObject conforms to protocol of BProtocol.
 2016-03-31 12:25:42.713 Compare-objc[53491:2353751] void description(__strong id) [Line 212] BObject responds to selector of (class method) copy.
 2016-03-31 12:25:42.714 Compare-objc[53491:2353751] void description(__strong id) [Line 228] BObject responds to selector of (instance method) copy.
 2016-03-31 12:25:42.714 Compare-objc[53491:2353751] void description(__strong id) [Line 234] BObject responds to selector of (instance method) aMethod.
 2016-03-31 12:25:42.714 Compare-objc[53491:2353751] void description(__strong id) [Line 237] BObject responds to selector of (instance method) bMethod.
 2016-03-31 12:25:42.714 Compare-objc[53491:2353751] void description(__strong id) [Line 247] BObject instances Respond To Selector of (instance method) copy.
 2016-03-31 12:25:42.714 Compare-objc[53491:2353751] void description(__strong id) [Line 253] BObject instances Respond To Selector of (instance method) aMethod.
 2016-03-31 12:25:42.714 Compare-objc[53491:2353751] void description(__strong id) [Line 256] BObject instances Respond To Selector of (instance method) bMethod.
 2016-03-31 12:25:42.740 Compare-objc[53491:2353751] ================ initialize Object ================
 2016-03-31 12:25:42.740 Compare-objc[53491:2353751] void description(__strong id) [Line 74] NSObject is kind of NSObject
 2016-03-31 12:25:42.740 Compare-objc[53491:2353751] void description(__strong id) [Line 93] NSObject is member of NSObject
 2016-03-31 12:25:42.740 Compare-objc[53491:2353751] void description(__strong id) [Line 112] NSObject is subclass of NSObject
 2016-03-31 12:25:42.740 Compare-objc[53491:2353751] void description(__strong id) [Line 131] NSObject is NSObject
 2016-03-31 12:25:42.740 Compare-objc[53491:2353751] void description(__strong id) [Line 169] NSObject is equal NSObject
 2016-03-31 12:25:42.740 Compare-objc[53491:2353751] void description(__strong id) [Line 181] NSObject is NSObject
 2016-03-31 12:25:42.740 Compare-objc[53491:2353751] void description(__strong id) [Line 193] NSObject conforms to protocol of NSObject.
 2016-03-31 12:25:42.741 Compare-objc[53491:2353751] void description(__strong id) [Line 212] NSObject responds to selector of (class method) copy.
 2016-03-31 12:25:42.742 Compare-objc[53491:2353751] void description(__strong id) [Line 228] NSObject responds to selector of (instance method) copy.
 2016-03-31 12:25:42.742 Compare-objc[53491:2353751] void description(__strong id) [Line 247] NSObject instances Respond To Selector of (instance method) copy.
 2016-03-31 12:25:42.742 Compare-objc[53491:2353751] void description(__strong id) [Line 74] __NSCFConstantString is kind of NSObject
 2016-03-31 12:25:42.742 Compare-objc[53491:2353751] void description(__strong id) [Line 77] __NSCFConstantString is kind of NSString
 2016-03-31 12:25:42.742 Compare-objc[53491:2353751] void description(__strong id) [Line 112] __NSCFConstantString is subclass of NSObject
 2016-03-31 12:25:42.742 Compare-objc[53491:2353751] void description(__strong id) [Line 115] __NSCFConstantString is subclass of NSString
 2016-03-31 12:25:42.742 Compare-objc[53491:2353751] void description(__strong id) [Line 169] __NSCFConstantString is equal __NSCFConstantString
 2016-03-31 12:25:42.742 Compare-objc[53491:2353751] void description(__strong id) [Line 181] __NSCFConstantString is __NSCFConstantString
 2016-03-31 12:25:42.742 Compare-objc[53491:2353751] void description(__strong id) [Line 193] __NSCFConstantString conforms to protocol of NSObject.
 2016-03-31 12:25:42.742 Compare-objc[53491:2353751] void description(__strong id) [Line 196] __NSCFConstantString conforms to protocol of NSCopying and NSMutableCopying, NSSecureCoding.
 2016-03-31 12:25:42.742 Compare-objc[53491:2353751] void description(__strong id) [Line 212] __NSCFConstantString responds to selector of (class method) copy.
 2016-03-31 12:25:42.751 Compare-objc[53491:2353751] void description(__strong id) [Line 228] __NSCFConstantString responds to selector of (instance method) copy.
 2016-03-31 12:25:42.752 Compare-objc[53491:2353751] void description(__strong id) [Line 231] __NSCFConstantString responds to selector of (instance method) length.
 2016-03-31 12:25:42.752 Compare-objc[53491:2353751] void description(__strong id) [Line 247] __NSCFConstantString instances Respond To Selector of (instance method) copy.
 2016-03-31 12:25:42.752 Compare-objc[53491:2353751] void description(__strong id) [Line 250] __NSCFConstantString instances Respond To Selector of (instance method) length.
 2016-03-31 12:25:42.752 Compare-objc[53491:2353751] void description(__strong id) [Line 74] AObject is kind of NSObject
 2016-03-31 12:25:42.752 Compare-objc[53491:2353751] void description(__strong id) [Line 80] AObject is kind of AObject
 2016-03-31 12:25:42.752 Compare-objc[53491:2353751] void description(__strong id) [Line 99] AObject is member of AObject
 2016-03-31 12:25:42.778 Compare-objc[53491:2353751] void description(__strong id) [Line 112] AObject is subclass of NSObject
 2016-03-31 12:25:42.779 Compare-objc[53491:2353751] void description(__strong id) [Line 118] AObject is subclass of AObject
 2016-03-31 12:25:42.779 Compare-objc[53491:2353751] void description(__strong id) [Line 137] AObject is AObject
 2016-03-31 12:25:42.779 Compare-objc[53491:2353751] void description(__strong id) [Line 150] Superclass of AObject is NSObject
 2016-03-31 12:25:42.779 Compare-objc[53491:2353751] void description(__strong id) [Line 169] AObject is equal AObject
 2016-03-31 12:25:42.779 Compare-objc[53491:2353751] void description(__strong id) [Line 181] AObject is AObject
 2016-03-31 12:25:42.779 Compare-objc[53491:2353751] void description(__strong id) [Line 193] AObject conforms to protocol of NSObject.
 2016-03-31 12:25:42.780 Compare-objc[53491:2353751] void description(__strong id) [Line 199] AObject conforms to protocol of AProtocol.
 2016-03-31 12:25:42.780 Compare-objc[53491:2353751] void description(__strong id) [Line 212] AObject responds to selector of (class method) copy.
 2016-03-31 12:25:42.809 Compare-objc[53491:2353751] void description(__strong id) [Line 228] AObject responds to selector of (instance method) copy.
 2016-03-31 12:25:42.809 Compare-objc[53491:2353751] void description(__strong id) [Line 234] AObject responds to selector of (instance method) aMethod.
 2016-03-31 12:25:42.809 Compare-objc[53491:2353751] void description(__strong id) [Line 247] AObject instances Respond To Selector of (instance method) copy.
 2016-03-31 12:25:42.809 Compare-objc[53491:2353751] void description(__strong id) [Line 253] AObject instances Respond To Selector of (instance method) aMethod.
 2016-03-31 12:25:42.809 Compare-objc[53491:2353751] void description(__strong id) [Line 74] BObject is kind of NSObject
 2016-03-31 12:25:42.809 Compare-objc[53491:2353751] void description(__strong id) [Line 80] BObject is kind of AObject
 2016-03-31 12:25:42.809 Compare-objc[53491:2353751] void description(__strong id) [Line 83] BObject is kind of BObject
 2016-03-31 12:25:42.840 Compare-objc[53491:2353751] void description(__strong id) [Line 102] BObject is member of BObject
 2016-03-31 12:25:42.840 Compare-objc[53491:2353751] void description(__strong id) [Line 112] BObject is subclass of NSObject
 2016-03-31 12:25:42.840 Compare-objc[53491:2353751] void description(__strong id) [Line 118] BObject is subclass of AObject
 2016-03-31 12:25:42.840 Compare-objc[53491:2353751] void description(__strong id) [Line 121] BObject is subclass of BObject
 2016-03-31 12:25:42.840 Compare-objc[53491:2353751] void description(__strong id) [Line 140] BObject is BObject
 2016-03-31 12:25:42.840 Compare-objc[53491:2353751] void description(__strong id) [Line 156] Superclass of BObject is AObject
 2016-03-31 12:25:42.840 Compare-objc[53491:2353751] void description(__strong id) [Line 169] BObject is equal BObject
 2016-03-31 12:25:42.840 Compare-objc[53491:2353751] void description(__strong id) [Line 181] BObject is BObject
 2016-03-31 12:25:42.872 Compare-objc[53491:2353751] void description(__strong id) [Line 193] BObject conforms to protocol of NSObject.
 2016-03-31 12:25:42.872 Compare-objc[53491:2353751] void description(__strong id) [Line 199] BObject conforms to protocol of AProtocol.
 2016-03-31 12:25:42.872 Compare-objc[53491:2353751] void description(__strong id) [Line 202] BObject conforms to protocol of BProtocol.
 2016-03-31 12:25:42.872 Compare-objc[53491:2353751] void description(__strong id) [Line 212] BObject responds to selector of (class method) copy.
 2016-03-31 12:25:42.872 Compare-objc[53491:2353751] void description(__strong id) [Line 228] BObject responds to selector of (instance method) copy.
 2016-03-31 12:25:42.872 Compare-objc[53491:2353751] void description(__strong id) [Line 234] BObject responds to selector of (instance method) aMethod.
 2016-03-31 12:25:42.872 Compare-objc[53491:2353751] void description(__strong id) [Line 237] BObject responds to selector of (instance method) bMethod.
 2016-03-31 12:25:42.872 Compare-objc[53491:2353751] void description(__strong id) [Line 247] BObject instances Respond To Selector of (instance method) copy.
 2016-03-31 12:25:42.904 Compare-objc[53491:2353751] void description(__strong id) [Line 253] BObject instances Respond To Selector of (instance method) aMethod.
 2016-03-31 12:25:42.904 Compare-objc[53491:2353751] void description(__strong id) [Line 256] BObject instances Respond To Selector of (instance method) bMethod.
 Program ended with exit code: 0
 */
