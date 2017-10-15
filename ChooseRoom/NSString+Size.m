//
//  NSString+Size.m
//  YRMsgView
//
//  Created by yangrui on 2017/9/9.
//  Copyright © 2017年 yangrui. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)


-(CGSize)sizeForMaxWidth:(CGFloat)maxWidth fontSize:(CGFloat)fontSize{


    CGSize size2  = [self boundingRectWithSize:CGSizeMake(maxWidth, MAXFLOAT)
                                                        options:NSStringDrawingUsesLineFragmentOrigin
                                                     attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]}
                                                        context:nil].size;
    
    
    
    
    return  size2;
    
    
    
    
}

@end
