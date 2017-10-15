//
//  GHGuideRoomMode.h
//  ChooseRoom
//
//  Created by yangrui on 2017/10/14.
//  Copyright © 2017年 yangrui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GHGuideRoomMode : NSObject

@property(nonatomic, strong)NSString *name;
@property(nonatomic, assign)NSInteger count;

@property(nonatomic, assign)CGFloat nameOffsetX;
@property(nonatomic, assign)CGFloat nameOffsetY;

@property(nonatomic, assign)BOOL isSelected;

+(instancetype)modeWithName:(NSString *)name  count:(NSInteger)count offsetX:(CGFloat)offSetX  offsetY:(CGFloat)offSetY;


@end
