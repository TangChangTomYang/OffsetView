//
//  GHGuideChooseRoomView.h
//  ChooseRoom
//
//  Created by yangrui on 2017/10/15.
//  Copyright © 2017年 yangrui. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GHGuideRoomCell.h"
#import "UIView+Extension.h"
#import "GHGuideRoomMode.h"

typedef enum {
    GHGuideChooseRoomViewtype_home,
    GHGuideChooseRoomViewtype_office
}GHGuideChooseRoomViewtype;


@interface GHGuideChooseRoomView : UIView


@property(nonatomic, strong)NSMutableArray<GHGuideRoomMode *> *cellModeArrM;

@property(nonatomic, assign)GHGuideChooseRoomViewtype roomType;
@end
