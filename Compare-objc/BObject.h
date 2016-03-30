//
//  BObject.h
//  Compare-objc
//
//  Created by masato_arai on 2016/03/30.
//  Copyright © 2016年 Tea and Coffee. All rights reserved.
//

#import "AObject.h"

@protocol BProtocol <NSObject>

@end

@interface BObject : AObject <BProtocol>

- (void)bMethod;

@end
