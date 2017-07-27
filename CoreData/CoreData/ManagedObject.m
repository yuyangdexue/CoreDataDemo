//
//  ManagedObject.m
//  CoreData
//
//  Created by 于洋 on 2017/7/27.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import "ManagedObject.h"

@implementation ManagedObject

+ (instancetype)sharedInstance
{
    static  ManagedObject *managed = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        managed = [[ManagedObject alloc]init];
    });
    return managed;
}


- (NSManagedObjectContext *)managedObjectContext
{
    if (!_managedObjectContext) {
        _managedObjectContext = [[NSManagedObjectContext alloc]initWithConcurrencyType:NSMainQueueConcurrencyType];
        _managedObjectContext.persistentStoreCoordinator =self.persistentStoreCoordinator;
    }
    return _managedObjectContext;
}


- (NSManagedObjectModel *)managedObjectModel
{
    if (!_managedObjectModel) {

        NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"CoreData" withExtension:@"momd"];
        _managedObjectModel = [[NSManagedObjectModel alloc]initWithContentsOfURL:modelURL];
    }
    return _managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
    if (!_persistentStoreCoordinator) {
        _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc]initWithManagedObjectModel:self.managedObjectModel];
        NSURL *sqliteURL  = [[self documentDirectoryURL] URLByAppendingPathComponent:@"CoreData.sqlite"];
        NSError *error;
        [_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType
                                                  configuration:nil
                                                            URL:sqliteURL
                                                        options:nil error:&error];
    }
    return _persistentStoreCoordinator;
}

// 用来获取 document 目录
- (nullable NSURL *)documentDirectoryURL {
    return [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask].firstObject;
}

@end
