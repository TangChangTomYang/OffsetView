//
//  GHGuideChooseRoomView.m
//  ChooseRoom
//
//  Created by yangrui on 2017/10/15.
//  Copyright © 2017年 yangrui. All rights reserved.
//

#import "GHGuideChooseRoomView.h"


#define  _LEADING_MARGIN 30
#define  _CONTENT_HEIGHT 300


@interface GHGuideChooseRoomView()<GHGuideRoomCellDelegate>


@property(nonatomic, strong)NSMutableArray<GHGuideRoomCell *> *roomCellArrM;



@property(nonatomic, strong)NSMutableArray<GHGuideRoomMode *> *homeCellModeArrM;
@property(nonatomic, strong)NSMutableArray<GHGuideRoomMode *> *officeCellModeArrM;
@end

@implementation GHGuideChooseRoomView

-(NSMutableArray<GHGuideRoomMode *> *)homeCellModeArrM{

    if (!_homeCellModeArrM) {
        
        NSMutableArray *modeArrM = [NSMutableArray array];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"活动室" count:100 offsetX:-30 offsetY:-15 ]];
        [modeArrM addObject:[GHGuideRoomMode modeWithName:@"卧室" count:0 offsetX:0 offsetY:0 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"吸烟室2" count:0 offsetX:10 offsetY:-8 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"车库3" count:0 offsetX:5 offsetY:-8 ]];
        
        
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"办公区4" count:0 offsetX:5 offsetY:-10 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"会议室5" count:0 offsetX:15 offsetY:-5 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"多功能室6" count:0 offsetX:10 offsetY:15]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"值班室7" count:0 offsetX:12 offsetY:-5 ]];
        
        
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"男洗手间8" count:0 offsetX:0 offsetY:5 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"休息室9" count:0 offsetX:0 offsetY:-5 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"女洗手间10" count:0 offsetX:0 offsetY:10 ] ];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"更衣室11" count:0 offsetX:10 offsetY:-15 ]];
        
        
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"接待室12" count:0 offsetX:-10 offsetY:0 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"健身房13" count:0 offsetX:0 offsetY:5 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"其他14" count:0 offsetX:10 offsetY:-10 ]];
        
        _homeCellModeArrM = modeArrM;
    }
    return _homeCellModeArrM;
}
-(NSMutableArray<GHGuideRoomMode *> *)officeCellModeArrM{
    
    if (!_officeCellModeArrM) {
        
        NSMutableArray *modeArrM = [NSMutableArray array];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"活动室--" count:100 offsetX:-30 offsetY:-15 ]];
        [modeArrM addObject:[GHGuideRoomMode modeWithName:@"卧室" count:0 offsetX:0 offsetY:0]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"吸烟室2" count:0 offsetX:10 offsetY:-8 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"车库3" count:0 offsetX:5 offsetY:-8 ]];
        
        
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"办公区4" count:0 offsetX:5 offsetY:-10 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"会议室5" count:0 offsetX:15 offsetY:-5]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"多功能室6" count:0 offsetX:10 offsetY:15 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"值班室7" count:0 offsetX:12 offsetY:-5 ]];
        
        
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"男洗手间8" count:0 offsetX:0 offsetY:5 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"休息室9" count:0 offsetX:0 offsetY:-5 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"女洗手间10" count:0 offsetX:0 offsetY:10 ] ];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"更衣室11" count:0 offsetX:10 offsetY:-15 ]];
        
        
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"接待室12" count:0 offsetX:-10 offsetY:0 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"健身房13" count:0 offsetX:0 offsetY:5 ]];
        [modeArrM addObject: [GHGuideRoomMode modeWithName:@"其他14" count:0 offsetX:10 offsetY:-10 ]];
        
        _officeCellModeArrM = modeArrM;
    }
    return _officeCellModeArrM;
}


-(NSMutableArray *)roomCellArrM{
    if (!_roomCellArrM) {
        _roomCellArrM = [NSMutableArray array];
    }
    return _roomCellArrM;
}

@synthesize cellModeArrM = _cellModeArrM;
-(NSMutableArray *)cellModeArrM{
    if (!_cellModeArrM) {
        _cellModeArrM = [NSMutableArray array];
    }
   return  _cellModeArrM;
}

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.borderColor= [UIColor orangeColor].CGColor;
        self.layer.borderWidth = 2.0;
        [self setCellModeArrM:self.cellModeArrM];

    }
    
    return self;
}

-(void)setRoomType:(GHGuideChooseRoomViewtype)roomType{

    _roomType = roomType;
    if (roomType == GHGuideChooseRoomViewtype_home) {
        
        self.cellModeArrM = self.homeCellModeArrM;
    }
    else if(roomType == GHGuideChooseRoomViewtype_office) {
        self.cellModeArrM = self.officeCellModeArrM;
    }
}

-(void)setCellModeArrM:(NSMutableArray<GHGuideRoomMode *> *)cellModeArrM{

    _cellModeArrM = cellModeArrM;
    if (self.roomCellArrM.count > 0) {
        [self.roomCellArrM makeObjectsPerformSelector:@selector(removeFromSuperview)];
        self.roomCellArrM = nil;
    }
    for (int i = 0 ; i < self.cellModeArrM.count; i ++) {
        GHGuideRoomCell *cell = [GHGuideRoomCell cellWithMode:self.cellModeArrM[i]];
        cell.delegate = self;
        [self.roomCellArrM addObject:cell];
        [self addSubview:cell];;
        
    }
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat width = (self.width - (2 * _LEADING_MARGIN)) / 4.0;
    CGFloat height = (_CONTENT_HEIGHT - (2 * _LEADING_MARGIN))/ 4;
    
    for (int i = 0 ; i < self.roomCellArrM.count; i ++) {
        NSInteger perRowCount = 4;
        NSInteger row = i / perRowCount;
        NSInteger index = i % perRowCount;
        UIView *view = self.roomCellArrM[i];
        
        if(i >= 12){
            width = (self.width - (2 * _LEADING_MARGIN)) / 3.0;
        }
        
        CGRect frame = CGRectMake((index * width + _LEADING_MARGIN), row * height + _LEADING_MARGIN, width, height);
        view.frame = frame;
        
    }
    
}

#pragma mark-
-(void)didClickRoomCell:(GHGuideRoomCell *)roomCell{

//    roomCell.isSelected = YES;
    roomCell.mode.count += 10;
    roomCell.selectedCount += 10;
}

@end
