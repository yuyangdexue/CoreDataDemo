//
//  Department+CoreDataProperties.m
//  CoreData
//
//  Created by 于洋 on 2017/7/27.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import "Department+CoreDataProperties.h"

@implementation Department (CoreDataProperties)

+ (NSFetchRequest<Department *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Department"];
}

@dynamic createDate;
@dynamic departName;
@dynamic test;

@end
