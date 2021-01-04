//
//  PersonPropertySetter.h
//  TestSetter
//
//  Created by 朱志佳 on 2021/1/4.
//

#import <Foundation/Foundation.h>
#import "PersonSetter.h"

NS_ASSUME_NONNULL_BEGIN

@interface PersonPropertySetter : NSObject

@property (nonatomic, assign)   float weight;
@property (nonatomic, unsafe_unretained) float height;

@property (nonatomic, unsafe_unretained) PersonSetter *name0;
@property (nonatomic, assign)   PersonSetter *name;

@property (nonatomic, retain)   PersonSetter *name1;

@property (nonatomic, strong)   PersonSetter *name2;
@property (nonatomic, weak)     PersonSetter *name3;

@property (nonatomic, copy)     PersonSetter * name4;

@end

NS_ASSUME_NONNULL_END
