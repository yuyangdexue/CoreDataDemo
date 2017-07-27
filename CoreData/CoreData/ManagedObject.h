//
//  ManagedObject.h
//  CoreData
//
//  Created by 于洋 on 2017/7/27.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface ManagedObject : NSObject

+ (instancetype)sharedInstance;


@property (nonatomic,readwrite,strong) NSManagedObjectModel *managedObjectModel;
@property (nonatomic,readwrite,strong) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic,readwrite,strong) NSManagedObjectContext *managedObjectContext;

@end
