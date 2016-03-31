#[NSObject isKindOfClass:]
    
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
    
    
#[NSObject isMemberOfClass:]
    
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
    
    
#[NSObject isSubclassOfClass:]
    
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
    
    
#[NSObject class] == [NSObject class]
    
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
    
    
#[NSObject superclass] == [NSObject class]
    
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
    
    
#[NSObject isEqual:]
    
    // EN: Compare of the instance by 'isEqual'.
    // JP: 'isEqual'によるインスタンスの比較
    
    if ([obj isEqual:obj]) {
        DLog(@"%@ is equal %@", className, className);
    } else {
        DLog(@"%@ is not equal %@", className, className);
    }
    
    
#instance == instance
    
    // EN: Compare of the instance by '=='.
    // JP: '=='によるインスタンスの比較
    
    if (obj == obj) {
        DLog(@"%@ is %@", className, className);
    } else {
        DLog(@"%@ is not %@", className, className);
    }
    
    
#[NSObject conformsToProtocol:]
    
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
    
    
#[NSObject respondsToSelector:]
    
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
    
    
#[NSObject instancesRespondToSelector:]
    
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