//
//  AFHTTPRequestOperationManager+HttpBody.h
//  MSZX
//
//  Created by Keldon on 14-5-23.
//  Copyright (c) 2014年 Keldon. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"
#import "AFURLRequestSerialization+HttpBody.h"


@interface AFHTTPRequestOperationManager (HttpBody)

- (AFHTTPRequestOperation *)POST:(NSString *)URLString
                      parameters:(NSDictionary *)parameters
                            body:(NSString *)jsonBody
                         success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                         failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

@end
