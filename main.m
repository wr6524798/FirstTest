//
//  main.m
//  KVC
//
//  Created by 王锐 on 15/4/20.
//  Copyright (c) 2015年 wangr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person = [[Person alloc] init];
        [person setValue:@"jack" forKeyPath:@"name"];
        [person setValue:@18 forKeyPath:@"age"];
        Book *book1 = [[Book alloc]init];
        book1.bookName = @"ios";
        person.book = book1;
        
        Person *person1 = [[Person alloc] init];
        [person1 setValue:@"lucy" forKeyPath:@"name"];
        [person1 setValue:@"80" forKeyPath:@"age"];
        Book *book2 = [[Book alloc]init];
        book2.bookName = @"ios2";
        person1.book = book2;

        
        NSArray *persons = @[person,person1];
        //KVC按照键值路径取值时，如果对象不包含指定的键值，它会自动进入对象内部查找对象的属性
        NSArray *array =[persons valueForKeyPath:@"book.bookName"];
        NSLog(@"%@",array);
        
    }
    return 0;
}

void demo1()
{
    /** //1.直接赋值
     Person *person = [[Person alloc] init];
     person.name = @"jack";
     person.age = 18;*/
    //使用KVC间接修改对象属性时，系统会自动判断对象属性的类型，并完成转换
    //NSNumber是基本数据类型@18
    //NSValue是结构体@“18”
    
    //2.
    Person *person = [[Person alloc] init];
    [person setValue:@"jack" forKeyPath:@"name"];
    [person setValue:@18 forKeyPath:@"age"];
    
    Person *person1 = [[Person alloc] init];
    [person1 setValue:@"lucy" forKeyPath:@"name"];
    [person1 setValue:@"80" forKeyPath:@"age"];
    
    NSArray *persons = @[person,person1];
    NSLog(@"%@---%@",person,person1);
    //KVC按照键值路径取值时，如果对象不包含指定的键值，它会自动进入对象内部查找对象的属性
    NSArray *array =[persons valueForKeyPath:@"name"];
    NSLog(@"%@",array);
}
