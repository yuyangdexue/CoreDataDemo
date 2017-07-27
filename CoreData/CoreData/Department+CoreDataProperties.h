//
//  Department+CoreDataProperties.h
//  CoreData
//
//  Created by 于洋 on 2017/7/27.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import "Department+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Department (CoreDataProperties)

+ (NSFetchRequest<Department *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSDate *createDate;
@property (nullable, nonatomic, copy) NSString *departName;
@property (nullable, nonatomic, copy) NSString *test;

@end

NS_ASSUME_NONNULL_END
