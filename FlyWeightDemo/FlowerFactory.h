//
//  FlowerFactory.h
//  FlyWeightDemo
//
//  Created by 沈海超 on 2017/12/5.
//  Copyright © 2017年 沈海超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flower.h"

typedef enum {
    kRedFlower, // 0
    kBlueFlower, // 1
    kYellowFlower, // 2
    kTotalNumberFlower  // 用于计数的.
}FlowerType;

@interface FlowerFactory : NSObject
// 缓存池, 存放享元对象
@property (nonatomic, strong) NSMutableDictionary *flowerPools;

// 创建花的工厂方法
- (Flower *)flowerViewWithType:(FlowerType)type;

- (void)detailsType;
@end
