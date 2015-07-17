//
//  Person.h
//  KVC
//
//  Created by 王锐 on 15/4/20.
//  Copyright (c) 2015年 wangr. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Book;

@interface Person : NSObject

@property(nonatomic,copy) NSString *name;
@property(nonatomic,assign) int age;

@property (nonatomic,strong) Book *book;
@end
