//
//  Student.m
//  数据存储归档
//
//  Created by 王锐 on 15/6/8.
//  Copyright (c) 2015年 wangr. All rights reserved.
//

#import "Student.h"

@implementation Student

//存储数据的时候调用
-(void)encodeWithCoder:(NSCoder *)encode
{
    [super encodeWithCoder:encode];
    [encode encodeFloat:self.score forKey:@"score"];
}

//读取数据的时候调用
-(id)initWithCoder:(NSCoder *)decode
{
    if(self = [super initWithCoder:decode]){
    self.score = [decode decodeFloatForKey:@"score"];
    }
    return self;
}

@end
