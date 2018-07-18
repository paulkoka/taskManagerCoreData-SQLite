//
//  dataManager.m
//  anotherDBBasedtaskmngr
//
//  Created by Pavel Koka on 7/18/18.
//  Copyright © 2018 paul. All rights reserved.
//


#import "dataManager.h"

@implementation dataManager

#pragma MARK - common Methods

-(id) initDefault{
    _dataFrom = fromSqlDataBase;
    if ((self = [super init])) {
        [self initSQLite];
    }
    return self;
}

-(NSMutableArray*) downloadDataFromBase{
    return [self downloadDataFromSQLite];
}

-(void) deliteItem:(TaskItem*) item{
    [self deliteItemFromSQLite:item];
};

-(void) addItem:(TaskItem*) item{
    [self addItemToSQLite:item];
};

-(void) updateItem:(TaskItem*) item{
    [self updateTaskItemInSQLite:item];
};


#pragma MARK - Methods for SQLite


- (void)initSQLite{
    
    self.SQLiteDataBase = [[dbManager alloc] init];

};

-(NSMutableArray*) downloadDataFromSQLite{
    return [NSMutableArray arrayWithArray:[self.SQLiteDataBase getDataFromDB]];
}



-(void) deliteItemFromSQLite:(TaskItem*) item{
    [self.SQLiteDataBase deliteTaskByIdentifire:item];
}


-(void) addItemToSQLite:(TaskItem *)item{
    [self.SQLiteDataBase addTask:item];
}


-(void) updateTaskItemInSQLite:(TaskItem*) item{
    [self.SQLiteDataBase updateTaskItem:item];
}

@end
