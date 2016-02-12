//
//  MyPoint.m
//  MyPoint Project
//
//  Created by Erica Correa on 2/12/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import "MyPoint.h"

@implementation MyPoint
-(void)setX: (double) x {
    _x = x;
}
-(void)setY: (double) y {
    _y = y;
}
-(double)getX: (double) x {
    return _x;
}
-(double)getY: (double) y {
    return _y;
}

-(double)moveAlongX: (double) shiftX {
    _x = _x + shiftX;
    return _x;
}
-(double)moveAlongY: (double) shiftY {
    _y = _y + shiftY;
    return _y;
}
@end
