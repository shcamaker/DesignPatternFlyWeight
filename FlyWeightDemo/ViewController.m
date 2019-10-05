//
//  ViewController.m
//  FlyWeightDemo
//
//  Created by 沈海超 on 2017/12/5.
//  Copyright © 2017年 沈海超. All rights reserved.
//

#import "ViewController.h"
#import "FlowerFactory.h"
#import "Flower.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 初始化工厂
    FlowerFactory *factory = [[FlowerFactory alloc] init];
    
    NSMutableArray *arrayFlowers = [[NSMutableArray alloc] init];
    // for循环调用
    for (int i = 0; i < 5; ++i) {
        FlowerType flowerType = arc4random_uniform(kTotalNumberFlower);
        
        // 使用缓存池工厂方法来调用.类型是随机的
        Flower *flower = [factory flowerViewWithType:flowerType];
        // 简单的创建方式
//        Flower *flower = [[Flower alloc] init];
        
        [arrayFlowers addObject:flower];
        
        // 打印详情
        [factory detailsType];
    }
}

@end
