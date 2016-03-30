//
//  AObject.h
//  Compare-objc
//
//  Created by masato_arai on 2016/03/30.
//  Copyright © 2016年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AProtocol <NSObject>

@end

@interface AObject : NSObject <AProtocol>

- (void)aMethod;

@end
