//
//  TACDebugLog.h
//  TACKit
//
//  Created by masato_arai on 2015/04/21.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

// ----------------
// Thank you so much.
// http://d.hatena.ne.jp/k2_k_hei/20120511/1336750473
#ifdef DEBUG
#define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#define RLog(...)
#else
#define DLog(...)
#define RLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#endif

// ALog always displays output regardless of the DEBUG alarm
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);

// ----------------
// Thank you so much.
// http://qiita.com/yusuga_/items/3751cf2a0b0dbf2eefd8
#ifdef DEBUG
#define DLog_PRINTF(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#define DLog_METHOD NSLog(@"%s", __func__)
#define DLog_METHOD_AND_ABORT LOG_METHOD; abort()
#else
#define DLog_PRINTF(FORMAT, ...)
#define DLog_METHOD
#define DLog_METHOD_AND_ABORT
#endif

#ifdef DEBUG
#define DLog_POINT(p) NSLog(@"%f, %f", p.x, p.y)
#define DLog_SIZE(p) NSLog(@"%f, %f", p.width, p.height)
#define DLog_RECT(p) NSLog(@"%f, %f - %f, %f", p.origin.x, p.origin.y, p.size.width, p.size.height)
#else
#define DLog_POINT(p)
#define DLog_SIZE(p)
#define DLog_RECT(p)
#endif