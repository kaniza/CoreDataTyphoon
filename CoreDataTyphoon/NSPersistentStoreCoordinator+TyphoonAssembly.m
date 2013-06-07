//
//  NSPersistentStoreCoordinator+TyphoonAssembly.m
//  CoreDataTyphoon
//
//  Created by Tetsuya Kaneuchi on 2013/06/02.
//

#import "NSPersistentStoreCoordinator+TyphoonAssembly.h"

@implementation NSPersistentStoreCoordinator (TyphoonAssembly)

- (id)initWithManagedObjectModel:(NSManagedObjectModel *)model fileManager:(NSFileManager *)fileManager
{
    self = [self initWithManagedObjectModel:model];
    if (self) {
        NSURL *documentDirectory = [[fileManager URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
        NSURL *storeURL = [documentDirectory URLByAppendingPathComponent:@"CoreDataTyphoon.sqlite"];
        NSError *error = nil;
        if (![self addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
    return self;
}

@end
