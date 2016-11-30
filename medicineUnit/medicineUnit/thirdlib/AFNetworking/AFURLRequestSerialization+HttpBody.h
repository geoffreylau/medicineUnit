//
//  AFURLRequestSerialization+HttpBody.h
//  MSZX
//
//  Created by Keldon on 14-5-27.
//  Copyright (c) 2014年 Keldon. All rights reserved.
//

/**
 *  由于Tesla后台需要POST请求的参数放到http的报文体里边，因此扩展AFNetworking类库的AFHTTPRequestSerializer方法
 */

#import "AFURLRequestSerialization.h"

@interface AFHTTPRequestSerializer (HttpBody)
- (NSMutableURLRequest *)requestWithMethod:(NSString *)method
                                 URLString:(NSString *)URLString
                                parameters:(NSDictionary *)parameters
                                  httpBody:(NSString *)jsonBody
                                     error:(NSError *__autoreleasing *)error;

// 设定网络超时时间
- (void)setAFNetworkingTimeout:(int)_timeInternal;

@end
