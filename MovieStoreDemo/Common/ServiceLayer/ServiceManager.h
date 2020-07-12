//
//  ServiceManager.h
//  MovieStoreDemo
//
//  Created by Tong Yi on 7/10/20.
//  Copyright © 2020 Tong Yi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ServiceManager : NSObject 

//+ (ServiceManager *)manager;
+ (instancetype)manager; // is the same as line 15
//+(id)manager; //id in OC is the AnyObject in swift, generally, we don't use id

- (void)requestWithURL: (NSURL *)url;
    
@end

NS_ASSUME_NONNULL_END
