//
//  GHGuideRoomMode.m
//  ChooseRoom
//
//  Created by yangrui on 2017/10/14.
//  Copyright © 2017年 yangrui. All rights reserved.
//

#import "GHGuideRoomMode.h"

@implementation GHGuideRoomMode

+(instancetype)modeWithName:(NSString *)name  count:(NSInteger)count offsetX:(CGFloat)offSetX  offsetY:(CGFloat)offSetY{

    GHGuideRoomMode *mode = [[self alloc]init];
    mode.name = name;
    mode.count = count;
    mode.nameOffsetX = offSetX;
    mode.nameOffsetY = offSetY;
    
    
    return mode;
    
}




@end
