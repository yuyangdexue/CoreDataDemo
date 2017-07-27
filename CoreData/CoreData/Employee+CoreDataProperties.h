//
//  Employee+CoreDataProperties.h
//  CoreData
//
//  Created by 于洋 on 2017/7/27.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import "Employee+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Employee (CoreDataProperties)

+ (NSFetchRequest<Employee *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSDate *brithday;
@property (nonatomic) float height;
@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSString *sectionName;

@end

NS_ASSUME_NONNULL_END
