//
//  Assembly.m
//  CoreDataTyphoon
//
//  Created by Tetsuya Kaneuchi on 2013/06/02.
//

#import "Assembly.h"
#import <CoreData/CoreData.h>
#import <Typhoon/Typhoon.h>

@implementation Assembly

- (id)managedObjectContext
{
    return [TyphoonDefinition withClass:[NSManagedObjectContext class] initialization:^(TyphoonInitializer *initializer) {
            initializer.selector = @selector(initWithPersistentStoreCoordinator:);
            [initializer injectWithDefinition:[self persistentStoreCoordinator]];
    }];
}

- (id)persistentStoreCoordinator
{
    return [TyphoonDefinition withClass:[NSPersistentStoreCoordinator class] initialization:^(TyphoonInitializer *initializer) {
        initializer.selector = @selector(initWithManagedObjectModel:fileManager:);
        [initializer injectWithDefinition:[self managedObjectModel]];
        [initializer injectWithDefinition:[self fileManager]];
    }];
}

- (id)managedObjectModel
{
    return [TyphoonDefinition withClass:[NSManagedObjectModel class] initialization:^(TyphoonInitializer *initializer) {
            initializer.selector = @selector(mergedModelFromBundle_tp:);
            [initializer injectWithDefinition:[self mainBundle]];
    }];
}

- (id)mainBundle
{
    return [TyphoonDefinition withClass:[NSBundle class] initialization:^(TyphoonInitializer* initializer) {
            initializer.selector = @selector(mainBundle);
        }];
}

- (id)fileManager
{
    return [TyphoonDefinition withClass:[NSFileManager class]];
}

@end
