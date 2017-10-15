//
//  GHGuideRoomCell.m
//  ChooseRoom
//
//  Created by yangrui on 2017/10/14.
//  Copyright © 2017年 yangrui. All rights reserved.
//

#import "GHGuideRoomCell.h"
#import "UIView+Extension.h"
#import "NSString+Size.h"

#define SelectedFontSize   20
#define UnselectedFontSize   14


@interface GHGuideRoomCell()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *backGroundBtnTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *backGroundBtnBottomConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *backGroundBtnLeadingConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *backGroundBtnTrailingConstrint;

@property (weak, nonatomic) IBOutlet UIButton *backGroundBtn;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nameLbXConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nameLbYConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nameLbWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nameLbHeightConstraint;


@property (weak, nonatomic) IBOutlet UILabel *nameLb;
@property (weak, nonatomic) IBOutlet UILabel *countLb;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *countLbWidthConstraint;


@property(nonatomic, assign)BOOL isSelected;


@end



@implementation GHGuideRoomCell

+(instancetype)cellWithMode:(GHGuideRoomMode*)mode {
    GHGuideRoomCell *cell =  [[[NSBundle mainBundle] loadNibNamed:@"GHGuideRoomCell" owner:nil options:nil] lastObject];

    cell.isSelected = mode.isSelected;
    cell.mode = mode;
    
    return cell;
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    self.backgroundColor = [UIColor clearColor];
    
//    self.backGroundBtn.layer.borderWidth = 2.0;
    
    
   
    self.countLb.font = [UIFont systemFontOfSize:12];
    self.countLb.layer.cornerRadius = self.nameLb.height * 0.5;
    self.countLb.layer.masksToBounds = YES;
}

-(void)setMode:(GHGuideRoomMode *)mode {
    _mode = mode;
    self.nameLb.text = mode.name;
    self.selectedCount = mode.count;
//    self.isSelected = mode.isSelected;
    [self setOffSetX:mode.nameOffsetX];
    [self setOffSetY: mode.nameOffsetY];
    self.layer.masksToBounds = NO;
    
}


-(void)setSelectedCount:(NSInteger)selectedCount{
    _selectedCount = selectedCount;
    
    self.countLb.text = [NSString stringWithFormat:@"%ld",selectedCount];
    
    CGSize countSize = [self.countLb.text sizeForMaxWidth:50 fontSize:12];
    self.countLbWidthConstraint.constant = countSize.width < countSize.height ? countSize.height: countSize.width+2;
    
    self.countLb.layer.cornerRadius = countSize.height * 0.5;
    
    self.countLb.hidden = selectedCount <= 0;
    
    self.isSelected = selectedCount > 0;

    [self setNeedsLayout];
    [self layoutIfNeeded];
}

-(void)setIsSelected:(BOOL)isSelected{
    _isSelected = isSelected;
    
    CGFloat fontSize = isSelected == YES ? SelectedFontSize : UnselectedFontSize;
    CGSize contentSize = [self.mode.name sizeForMaxWidth:self.width fontSize:fontSize];
    
    self.nameLbWidthConstraint.constant = (contentSize.width + 2) > self.width ? self.width :  (contentSize.width + 2);
     self.nameLbHeightConstraint.constant = (contentSize.height +2) > self.height ? self.height : (contentSize.height +2);
    
   self.nameLb.font = [UIFont systemFontOfSize:fontSize];
}

-(void)setOffSetX:(CGFloat)offsetX{
    
    self.nameLbXConstraint.constant = offsetX;
   
    self.backGroundBtnLeadingConstraint.constant = offsetX;
    self.backGroundBtnTrailingConstrint.constant = - offsetX;

}

-(void)setOffSetY:(CGFloat)offsetY{
    
    self.nameLbYConstraint.constant = offsetY;
    self.backGroundBtnTopConstraint.constant =  offsetY;
    self.backGroundBtnBottomConstraint.constant = - offsetY;
}





- (IBAction)backGroundBtnClick:(id)sender {
    NSLog(@"%@", self.nameLb);
    
    self.isSelected = !self.isSelected;
    
    
    if ([self.delegate respondsToSelector:@selector(didClickRoomCell:)]) {
        [self.delegate didClickRoomCell:self];
    }
    
}



-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    if (CGRectContainsPoint(self.backGroundBtn.frame, point)) {
        return self.backGroundBtn;
    }
    else{
        return [super hitTest:point withEvent:event];
    }

}














@end
