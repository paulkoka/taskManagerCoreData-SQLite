//
//  KPITasktable.m
//  anotherDBBasedtaskmngr
//
//  Created by Pavel Koka on 7/18/18.
//  Copyright © 2018 paul. All rights reserved.
//

#import "KPITasktable.h"

@implementation KPITasktable

@dynamic identifire;
@dynamic statement;

@dynamic taskTitle;
@dynamic taskSubtitle;
@dynamic additionalInfo;

+(NSFetchRequest <KPITasktable*> *) fetchRequest{
    return  [NSFetchRequest fetchRequestWithEntityName:@"KPITasktable"];
};

@end
