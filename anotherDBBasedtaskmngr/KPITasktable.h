//
//  KPITasktable.h
//  anotherDBBasedtaskmngr
//
//  Created by Pavel Koka on 7/18/18.
//  Copyright © 2018 paul. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface KPITasktable : NSManagedObject

@property (nonatomic, assign) int identifire;
@property (nonatomic) BOOL statement;

@property (nonatomic, copy) NSString* taskTitle;
@property (nonatomic, copy) NSString* taskSubtitle;
@property (nonatomic, copy) NSString* additionalInfo;

+(NSFetchRequest <KPITasktable*> *) fetchRequest;

@end
