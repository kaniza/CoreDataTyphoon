//
//  NSManagedObjectContext+TyphoonAssembly.m
//  CoreDataTyphoon
//
//  Created by Tetsuya Kaneuchi on 2013/06/02.
//

#import "NSManagedObjectContext+TyphoonAssembly.h"

@implementation NSManagedObjectContext (TyphoonAssembly)

- (id)initWithPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)coordinator
{
    self = [self initWithConcurrencyType:NSMainQueueConcurrencyType];
    if (self) {
        self.persistentStoreCoordinator = coordinator;
    }
    return self;
}

@end
