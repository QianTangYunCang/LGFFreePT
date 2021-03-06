//
//  LGFFreePTTitle.h
//  OptimalLive
//
//  Created by apple on 2019/4/23.
//  Copyright © 2019年 QT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LGFFreePTStyle.h"

NS_ASSUME_NONNULL_BEGIN

@interface LGFFreePTTitle : UIView
@property (weak, nonatomic) IBOutlet UILabel *lgf_Title;// 标
@property (weak, nonatomic) IBOutlet UILabel *lgf_SubTitle;// 子标
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_TitleWidth;// 标宽度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_TitleHeight;// 标高度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_SubTitleTop;// 子标相对于标距离
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_SubTitleWidth;// 标宽度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_SubTitleHeight;// 子标高度（子标宽度暂时于标共享取两者MAX值）
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_TitleCenterX;// 标中心X
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_TitleCenterY;// 标中心Y

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_TopImageSpace;// 标上图片相对于标距离
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_BottomImageSpace;// 标下图片相对于标距离
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_LeftImageSpace;// 标左图片相对于标距离
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_RightImageSpace;// 标右图片相对于标距离

@property (weak, nonatomic) IBOutlet UIImageView *lgf_TopImage;// 标上图片
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_TopImageWidth;// 标上图片宽度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_TopImageHeight;// 标上图片高度

@property (weak, nonatomic) IBOutlet UIImageView *lgf_BottomImage;// 标下图片
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_BottomImageWidth;// 标下图片宽度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_BottomImageHeight;// 标下图片高度

@property (weak, nonatomic) IBOutlet UIImageView *lgf_LeftImage;// 标左图片
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_LeftImageWidth;// 标左图片宽度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_LeftImageHeight;// 标左图片高度

@property (weak, nonatomic) IBOutlet UIImageView *lgf_RightImage;// 标右图片
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_RightImageWidth;// 标右图片宽度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lgf_RightImageHeight;// 标右图片高度

@property (strong, nonatomic) NSMutableArray *lgf_SelectImageNames;// 选中图片数组
@property (strong, nonatomic) NSMutableArray *lgf_UnSelectImageNames;// 未选中图片数组

@property (assign, nonatomic) BOOL lgf_IsHaveImage;// 是否有标图片
@property (strong, nonatomic) LGFFreePTStyle *lgf_Style;// 配置用模型
@property (assign, nonatomic) CGFloat lgf_CurrentTransformSX;// 放大缩小倍数
@property (assign, nonatomic) CGFloat lgf_MainTitleCurrentTransformSX;// 主标题放大缩小倍数
@property (assign, nonatomic) CGFloat lgf_MainTitleCurrentTransformTY;// 主标题上下位移
@property (assign, nonatomic) CGFloat lgf_SubTitleCurrentTransformSX;// 子标题放大缩小倍数
@property (assign, nonatomic) CGFloat lgf_SubTitleCurrentTransformTY;// 子标题上下位移

#pragma mark - 标初始化
/**
 @param titleText 标文字
 @param index 在 LGFFreePT 中的位置下标
 @param style 配置用模型
 @return LGFFreePTTitle
 */
+ (instancetype)lgf_AllocTitle:(NSString *)titleText index:(NSInteger)index style:(LGFFreePTStyle *)style;
@end

NS_ASSUME_NONNULL_END
