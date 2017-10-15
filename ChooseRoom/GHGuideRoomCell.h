//
//  GHGuideRoomCell.h
//  ChooseRoom
//
//  Created by yangrui on 2017/10/14.
//  Copyright © 2017年 yangrui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GHGuideRoomMode.h"


//颜色
#define GHColorRGBA(r,g,b,a)  [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]
#define GHColor(r,g,b)        GHColorRGBA(r,g,b,255.0)
#define GHRandomColor         GHColor((arc4random_uniform(255)),(arc4random_uniform(255)),(arc4random_uniform(255)))


@class GHGuideRoomCell;
@protocol GHGuideRoomCellDelegate <NSObject>

-(void)didClickRoomCell:(GHGuideRoomCell *)roomCell;

@end


@interface GHGuideRoomCell : UIView

@property(nonatomic, strong)GHGuideRoomMode *mode;
@property(nonatomic, assign)NSInteger selectedCount;


@property(nonatomic, weak)id<GHGuideRoomCellDelegate> delegate;
+(instancetype)cellWithMode:(GHGuideRoomMode*)mode ;


@end
