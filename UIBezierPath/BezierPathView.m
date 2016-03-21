//
//  BezierPathView.m
//  UIBezierPath
//
//  Created by 陈诚 on 16/3/21.
//  Copyright © 2016年 test. All rights reserved.
//

#import "BezierPathView.h"

@implementation BezierPathView

- (void)drawRect:(CGRect)rect
{
    //[self drawTranglePath];//画三角形
    //[self drawRectPath];//画矩形
    //[self drawCiclePath];//画圆
    //[self drawOvalPath];//画椭圆
    //[self drawRoundedRectPath];//画带圆角的矩形
    //[self drawARCPath];//画弧;
    //[self drawSecondBezierPath];//画二次贝塞尔曲线
    [self drawThirdBezierPath];//画三次贝塞尔曲线
}
- (void)drawTranglePath
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(20, 20)];
    [path addLineToPoint:CGPointMake(self.frame.size.width - 40, 20)];
    [path addLineToPoint:CGPointMake(self.frame.size.width / 2, self.frame.size.height)];
    [path closePath];//加闭合线,也可以再加一条线
    
    //线宽
    path.lineWidth = 1.5;
    
    //填充色
    UIColor *fillColor = [UIColor greenColor];
    [fillColor set];
    [path fill];
    
    //画笔颜色 必须先设置填充色,在设置画笔,才不会被覆盖掉
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    //根据我们设置的各个点连线
    [path stroke];
}
- (void)drawRectPath
{
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(20, 20, self.frame.size.width - 40, self.frame.size.height - 40)];
    path.lineWidth = 1.5;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinBevel;
    
    //填充色
    UIColor *fillColor = [UIColor greenColor];
    [fillColor set];
    [path fill];
    
    //画笔颜色 必须先设置填充色,在设置画笔,才不会被覆盖掉
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    //根据我们设置的各个点连线
    [path stroke];

}
- (void)drawCiclePath
{
    //传的是正方形,因此就可以绘制出圆形了,注意:要画圆,我们要传的rect参数必须是正方形!
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 20, self.frame.size.width - 40, self.frame.size.width - 40)];
    
    //填充色
    UIColor *fillColor = [UIColor greenColor];
    [fillColor set];
    [path fill];
    
    //画笔颜色 必须先设置填充色,在设置画笔,才不会被覆盖掉
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    //根据我们设置的各个点连线
    [path stroke];

    
}
- (void)drawOvalPath
{
    //传的不是正方形,因此就可以画椭圆了
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 20, self.frame.size.width - 80, self.frame.size.height - 40)];
    
    //填充色
    UIColor *fillColor = [UIColor greenColor];
    [fillColor set];
    [path fill];
    
    //画笔颜色 必须先设置填充色,在设置画笔,才不会被覆盖掉
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    //根据我们设置的各个点连线
    [path stroke];
}
- (void)drawRoundedRectPath
{
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 20, self.frame.size.width - 40, self.frame.size.height - 40) cornerRadius:10];
    
    //填充色
    UIColor *fillColor = [UIColor greenColor];
    [fillColor set];
    [path fill];
    
    //画笔颜色 必须先设置填充色,在设置画笔,才不会被覆盖掉
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    //根据我们设置的各个点连线
    [path stroke];
}
- (void)drawARCPath
{
    const CGFloat pi = 3.14159265359;
    CGPoint center = CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2);
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:100 startAngle:0 endAngle:35 clockwise:YES];
    
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5.0;
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    [path stroke];
    
}
- (void)drawSecondBezierPath
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    //设置一个起始点
    [path moveToPoint:CGPointMake(20, self.frame.size.width - 100)];
    
    //添加二次曲线
    [path addQuadCurveToPoint:CGPointMake(self.frame.size.width - 20, self.frame.size.height - 100) controlPoint:CGPointMake(self.frame.size.width / 2, 0)];
    
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5.0;
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    [path stroke];
    /*
     总结:画二次贝塞尔曲线的步骤
     1.设置一个起始点,也就是通过-moveToPoint:设置
     2.调用-addQuadCurveToPoint:方法设置终端点和控制点,以画二次曲线
     */
}
- (void)drawThirdBezierPath
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(20, 150)];//起始点
    
    [path addCurveToPoint:CGPointMake(300, 150) controlPoint1:CGPointMake(160, 0) controlPoint2:CGPointMake(160, 250)];
    
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5.0;
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    [path stroke];    
}
@end
