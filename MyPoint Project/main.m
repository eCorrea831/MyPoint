//
//  main.m
//  MyPoint Project
//
//  Created by Erica Correa on 2/12/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        MyPoint *p1 = [[MyPoint alloc] init];
        MyPoint *p2 = [[MyPoint alloc] init];
        
        [p1 setX: 2];
        [p1 setY: 2];
        [p2 setX: 5];
        [p2 setY: 2];
        
        NSLog(@"Point 1 is now at (%f, %f)", [p1 moveAlongX: 2], [p1 moveAlongY: 2]);
        
        
    }
    return 0;
}
