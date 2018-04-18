//
//  ViewController.m
//  NSSetPractice
//
//  Created by Алексей on 18.04.2018.
//  Copyright © 2018 Алексей. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create own autorelease pool
    @autoreleasepool {
        
        // Create new array with duplicate items
        NSArray *newArray = @[@1, @4, @3, @4, @2, @6, @1, @9, @7, @11, @99, @3];
        
        NSLog(@"%@", newArray);
        
        // Use NSSet to exclude duplicates from array
        NSSet *newSet = [NSSet setWithArray:newArray];
        
        NSLog(@"%@", newSet);
        
        // Create an array of 100 numbers
        NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 100; i++) {
            [mutableArray addObject:[NSNumber numberWithInt:i]];
        }
        
        // Check whether number 74 is contained inside an array
        
        NSDate *startTime = [NSDate date];
        
        if ([mutableArray containsObject:@74]) {
            NSLog(@"Array contains 74");
        } else {
            NSLog(@"Array doesn't contain 74");
        }
        
        NSDate *finishTime = [NSDate date];
        NSLog(@"Execution time in array = %f", [finishTime timeIntervalSinceDate:startTime]);
        
        
        // Transform array into NSSet and check whether number 74 is contained inside NSSet
        NSSet *setFromArray = [NSSet setWithArray:mutableArray];
        
        startTime = [NSDate date];
        
        if ([setFromArray containsObject:@74]) {
            NSLog(@"Set contains 74");
        } else {
            NSLog(@"Set doesn't contain 74");
        }
        
        finishTime = [NSDate date];
        NSLog(@"Execution time in set = %f", [finishTime timeIntervalSinceDate:startTime]);
        
        [mutableArray release];
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
