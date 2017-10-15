//
//  ViewController.m
//  ChooseRoom
//
//  Created by yangrui on 2017/10/14.
//  Copyright © 2017年 yangrui. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Extension.h"
#import "GHGuideRoomCell.h"
#import "GHGuideRoomMode.h"
#import "GHGuideChooseRoomView.h"


#define  LEADING_MARGIN 30
#define  CONTENT_HEIGHT 300
@interface ViewController ()

@property(nonatomic, strong)NSMutableArray *homeCellModeArrM;

@property(nonatomic, strong)GHGuideChooseRoomView *roomView ;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
//    [self touches];
    
    
    GHGuideChooseRoomView *roomView = [[GHGuideChooseRoomView alloc]initWithFrame:CGRectMake(0, 100, self.view.width, CONTENT_HEIGHT)];
    
    [self.view addSubview:roomView];
    self.roomView = roomView;
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    static int i = 0;
    
    if (i == 0) {
        i = 1;
          self.roomView.roomType = GHGuideChooseRoomViewtype_home;
    }
    else{
        i = 0;
         self.roomView.roomType =  GHGuideChooseRoomViewtype_office;
    }
   
}




@end
