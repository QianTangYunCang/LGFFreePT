//
//  MainViewController.m
//  LGFFreePTDemo
//
//  Created by apple on 2019/4/29.
//  Copyright © 2019年 来国锋. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"
#import "MainViewControllerCell.h"
#import "VerticalViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *listCV;
@property (strong, nonatomic) NSArray *listArray;
@end

@implementation MainViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.listArray = @[
  @{@"title" : @"普通",
    @"array" : @[@"1", @"22", @"333", @"4444", @"55555", @"666666", @"77", @"88888888"]},
  @{@"title" : @"普通-底部线对准 title",
    @"array" : @[@"1", @"22", @"333", @"4444", @"55555", @"666666", @"77", @"88888888"]},
  @{@"title" : @"普通-选中放大/缩小",
    @"array" : @[@"1", @"22", @"333", @"4444", @"55555", @"666666", @"77", @"88888888"]},
  @{@"title" : @"毛毛虫",
    @"array" : @[@"1", @"22", @"333", @"4444", @"55555", @"666666", @"77", @"88888888"]},
  @{@"title" : @"毛毛虫-底部线对准 title",
    @"array" : @[@"1", @"22", @"333", @"4444", @"55555", @"666666", @"77", @"88888888"]},
  @{@"title" : @"毛毛虫-选中放大/缩小",
    @"array" : @[@"1", @"22", @"333", @"4444", @"55555", @"666666", @"77", @"88888888"]},
  @{@"title" : @"根据需求添加左图片",
    @"array" : @[@"1", @"22", @"333", @"4444", @"55555", @"666666", @"77", @"88888888"]},
  @{@"title" : @"根据需求添加上下左右图片",
    @"array" : @[@"1", @"22", @"333", @"4444", @"55555", @"666666", @"77", @"88888888"]},
  @{@"title" : @"默认选中 index 5",
    @"array" :  @[@"1", @"22", @"333", @"4444", @"55555", @"666666", @"77", @"88888888"]},
  @{@"title" : @"父子标题-普通",
    @"array" : @[@"主标题/副标题", @"22/7", @"333/6", @"4444/55", @"55555/444", @"666666/33333333", @"77/222222", @"88888888/1111"]},
  @{@"title" : @"父子标题-加图片",
    @"array" : @[@"主标题/副标题", @"22/7", @"333/6", @"4444/55", @"55555/444", @"666666/33333333", @"77/222222", @"88888888/1111"]},
  @{@"title" : @"父子标题-放大缩小",
    @"array" : @[@"主标题/副标题", @"22/7", @"333/6", @"4444/55", @"55555/444", @"666666/33333333", @"77/222222", @"88888888/1111"]},
  @{@"title" : @"少标的时候默认居中",
    @"array" : @[@"1", @"22"]},
  @{@"title" : @"line 占满",
      @"array" : @[@"1", @"22", @"333", @"4444", @"55555", @"666666", @"77", @"88888888"]},
  @{@"title" : @"line 占满-图片",
    @"array" : @[@"1", @"22", @"333", @"4444", @"55555", @"666666", @"77", @"88888888"]},
  @{@"title" : @"line 占满-图片-毛毛虫",
    @"array" : @[@"1", @"22", @"333", @"4444", @"55555", @"666666", @"77", @"88888888"]},
  @{@"title" : @"模拟系统 UISegmentedControl",
    @"array" : @[@"第一项", @"第二项", @"第三项", @"第四项"]},
  @{@"title" : @"指定部分 index 添加特殊 title",
    @"array" : @[@"第一项", @"第二项", @"特殊占位用字符串可设置为空字符串", @"第四项", @"第一项", @"特殊占位用字符串可设置为空字符串", @"第三项", @"第四项"]},
  @{@"title" : @"模拟支付宝编辑页效果",
    @"array" : @[@"便民生活", @"财富管理", @"资金往来", @"购物娱乐", @"教育公益", @"第三方服务"]},
  @{@"title" : @"部分需求效果",
    @"array" : @[@"04.27/已开抢", @"04.28/已开抢", @"04.29/已开抢", @"04.30/抢购进行中", @"04.30/抢购进行中", @"05.01/即将开场", @"05.02/即将开场", @"05.03/即将开场"]}
  ];
    [self.listCV reloadData];
}

#pragma mark - Collection View DataSource And Delegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.listArray.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(collectionView.lgf_width, 60);
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MainViewControllerCell *cell = lgf_CVGetCell(collectionView, MainViewControllerCell, indexPath);
    cell.title.text = self.listArray[indexPath.item][@"title"];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.item == self.listArray.count - 2) {
        VerticalViewController *vc = [VerticalViewController lgf];
        vc.type = self.listArray[indexPath.item][@"title"];
        vc.titles = self.listArray[indexPath.item][@"array"];
        [self.navigationController pushViewController:vc animated:YES];
    } else {
        ViewController *vc = [ViewController lgf];
        vc.type = self.listArray[indexPath.item][@"title"];
        vc.titles = self.listArray[indexPath.item][@"array"];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

@end
