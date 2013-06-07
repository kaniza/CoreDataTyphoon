//
//  NSManagedObjectModel+TyphoonAssembly.m
//  CoreDataTyphoon
//
//  Created by Tetsuya Kaneuchi on 2013/06/02.
//

#import "NSManagedObjectModel+TyphoonAssembly.h"

@implementation NSManagedObjectModel (TyphoonAssembly)

+ (id)mergedModelFromBundle_tp:(NSBundle *)bundle
{
    return [self mergedModelFromBundles:[NSArray arrayWithObject:bundle]];
}

@end
