//
//  ViewController.m
//  BorderDemo
//
//  Created by HSEDU on 17/4/21.
//  Copyright © 2017年 Zhui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
   
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    UIView *View = [[UIView alloc] initWithFrame:(CGRectMake(0, 0, 100, 100))];
    View.center = self.view.center;
    [self.view addSubview:View];
    View.backgroundColor = [UIColor grayColor];
    
   /*
    *实线边框
    */
    //View.layer.borderColor = [UIColor redColor].CGColor;
    //View.layer.borderWidth = 1;
    
    /*
     *虚线边框
     */
   /* CAShapeLayer *dottedLineBorder  = [[CAShapeLayer alloc] init];
    dottedLineBorder.frame = CGRectMake(0, 0, View.frame.size.width, View.frame.size.height);
    [dottedLineBorder setLineWidth:2];
    [dottedLineBorder setStrokeColor:[UIColor redColor].CGColor];
    [dottedLineBorder setFillColor:[UIColor clearColor].CGColor];
    dottedLineBorder.lineDashPattern = @[@10,@20];//10 - 线段长度 ，20 － 线段与线段间距
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:dottedLineBorder.frame];
    dottedLineBorder.path = path.CGPath;
    [View.layer addSublayer:dottedLineBorder];
   */
    /*
     *流动的虚线
     */
    /*
    __block NSNumber * i = @10;
   
    [NSTimer scheduledTimerWithTimeInterval:0.5 repeats:YES block:^(NSTimer * _Nonnull timer) {
        i = [NSNumber numberWithInt:([i intValue]+1)];
        dottedLineBorder.lineDashPattern = @[i,@10];
        if ([i intValue]>=20) {
             i = [NSNumber numberWithInt:10];
        }
    }];
    */
    
    CGRect viewRect = View.frame;
    CGFloat borderMargin = 20;//内边距
    CGSize borderOffset = CGSizeMake(0, 0);//边框x,y偏移量
    
    UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(viewRect.origin.x+borderOffset.width, viewRect.origin.y+borderOffset.height, viewRect.size.width, viewRect.size.height)];
    [self.view addSubview:lineView];
    
    CAShapeLayer *dottedLineBorder  = [[CAShapeLayer alloc] init];
    dottedLineBorder.frame = CGRectMake(-borderMargin/2, -borderMargin/2, View.frame.size.width+borderMargin*2, View.frame.size.height+borderMargin*2);
    [dottedLineBorder setLineWidth:2];
    [dottedLineBorder setStrokeColor:[UIColor redColor].CGColor];
    [dottedLineBorder setFillColor:[UIColor clearColor].CGColor];
   // dottedLineBorder.lineDashPattern = @[@10,@20];//10 - 线段长度 ，20 － 线段与线段间距
    //矩形
     UIBezierPath *path = [UIBezierPath bezierPathWithRect:dottedLineBorder.frame];
    dottedLineBorder.path = path.CGPath;
    [lineView.layer addSublayer:dottedLineBorder];
    [self.view sendSubviewToBack:lineView];
    //带圆角矩形
    // UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:dottedLineBorder.frame byRoundingCorners:UIRectCornerTopLeft|UIRectCornerTopRight cornerRadii:(CGSizeMake(10, 10))];

    /*圆形镂空边框
     UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:dottedLineBorder.frame];
     
     UIBezierPath *circlePath = [UIBezierPath bezierPathWithRect:CGRectMake(borderMargin/2, borderMargin/2, lineView.frame.size.width, lineView.frame.size.height)];
     [path appendPath:circlePath];
     [path setUsesEvenOddFillRule:YES];
     dottedLineBorder.fillRule = kCAFillRuleEvenOdd;
     dottedLineBorder.fillColor  = [UIColor redColor].CGColor;
     */
    
    /*诡异的边框
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:dottedLineBorder.frame];
    
    UIBezierPath *circlePath = [UIBezierPath bezierPathWithRect:(CGRectMake(0, 0, View.frame.size.width+borderMargin, View.frame.size.height+borderMargin))];
    [path appendPath:circlePath];
    [path setUsesEvenOddFillRule:YES];
    dottedLineBorder.fillRule = kCAFillRuleEvenOdd;
    dottedLineBorder.fillColor  = [UIColor redColor].CGColor;
     */
    
    /*诡异的边框2
     UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:dottedLineBorder.frame];
     
     UIBezierPath *circlePath = [UIBezierPath bezierPathWithRect:(CGRectMake(0, 0, View.frame.size.width+borderMargin*2, View.frame.size.height+borderMargin*2))];
     [path appendPath:circlePath];
     [path setUsesEvenOddFillRule:YES];
     dottedLineBorder.fillRule = kCAFillRuleEvenOdd;
     dottedLineBorder.fillColor  = [UIColor redColor].CGColor;
    */
    
    dottedLineBorder.path = path.CGPath;
    [lineView.layer addSublayer:dottedLineBorder];
    [self.view sendSubviewToBack:lineView];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
