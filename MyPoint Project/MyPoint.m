//
//  MyPoint.m
//  MyPoint Project
//
//  Created by Erica Correa on 2/12/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import "MyPoint.h"

@implementation MyPoint

- (id)init {
    return [self initWithX:0 andY:0];
}

- (id)initWithX: (double) x andY: (double) y{
    self = [super init];
    if (self) {
        [self setX: x];
        [self setY: y];
        
        return self;
    }
    return nil;
}

- (double)moveAlongX: (double)shiftX {
    self.x = self.x + shiftX;
    return self.x;
}
- (double)moveAlongY: (double)shiftY {
    self.y = self.y + shiftY;
    return self.y;
}

- (double)distanceFromOrigin{
    MyPoint *origin = [[MyPoint alloc]init];
    return [self distanceBetweenPoints:origin andY:self];
}

- (double)distanceFromThisToPoint: (id<AbstractPoint>) point{
   
    MyPoint *point2 = point;
 
    return sqrt(((point2.x - self.x) * (point2.x - self.x)) + ((point2.y - self.y) * (point2.y - self.y)));

}


@end
