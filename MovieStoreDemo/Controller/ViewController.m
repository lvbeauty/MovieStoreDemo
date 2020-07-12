//
//  ViewController.m
//  MovieStoreDemo
//
//  Created by Tong Yi on 7/10/20.
//  Copyright © 2020 Tong Yi. All rights reserved.
//

#import "ViewController.h"
#import "ServiceManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *url = [NSURL URLWithString:@"http://www.omdbapi.com/?i=tt3896198&apikey=24275c8b"];
    [[ServiceManager manager] requestWithURL:url];
    
}


@end
