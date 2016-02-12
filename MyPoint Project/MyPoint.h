//
//  MyPoint.h
//  MyPoint Project
//
//  Created by Erica Correa on 2/12/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyPoint : NSObject {
    double _x;
    double _y;
}
-(void)setX: (double) x;
-(void)setY: (double) y;
-(double)getX: (double) x;
-(double)getY: (double) y;
-(double)moveAlongX: (double) shiftX;
-(double)moveAlongY: (double) shiftY;

@end
