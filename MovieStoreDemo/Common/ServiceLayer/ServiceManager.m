//
//  ServiceManager.m
//  MovieStoreDemo
//
//  Created by Tong Yi on 7/10/20.
//  Copyright © 2020 Tong Yi. All rights reserved.
//

#import "ServiceManager.h"

@implementation ServiceManager

+ (instancetype)manager {
    static ServiceManager *shared = nil; // static in oc, once it is signed, it will exist in the memory.
    static dispatch_once_t onceToken; // life time only execute once;
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
    });
  
    return shared;
}

- (instancetype)init {
    self = [super init];
    if (self) {}
    return self;
}

- (void)requestWithURL:(NSURL *)url {
    [[[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil) {
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
            
            NSLog(@"%@", json);
            
        } else {
            
            NSLog(@"%@", error);
        }
        
    }] resume] ;
}

@end
