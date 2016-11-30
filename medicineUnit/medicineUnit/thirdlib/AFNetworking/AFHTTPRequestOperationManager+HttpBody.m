//
//  AFHTTPRequestOperationManager+HttpBody.m
//  MSZX
//
//  Created by Keldon on 14-5-23.
//  Copyright (c) 2014年 Keldon. All rights reserved.
//

#import "AFHTTPRequestOperationManager+HttpBody.h"

@implementation AFHTTPRequestOperationManager (HttpBody)

- (AFHTTPRequestOperation *)POST:(NSString *)URLString
                      parameters:(NSDictionary *)parameters
                            body:(NSString *)jsonBody
                         success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                         failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure
{
//    NSMutableURLRequest *request = [self.requestSerializer requestWithMethod:@"POST" URLString:[[NSURL URLWithString:URLString relativeToURL:self.baseURL] absoluteString] parameters:parameters error:nil];
    
    NSMutableURLRequest *request = [self.requestSerializer requestWithMethod:@"POST" URLString:[[NSURL URLWithString:URLString relativeToURL:self.baseURL]absoluteString] parameters:parameters httpBody:jsonBody error:nil];
    
    AFHTTPRequestOperation *operation = [self HTTPRequestOperationWithRequest:request success:success failure:failure];
    [self.operationQueue addOperation:operation];
    
    return operation;
}

@end
