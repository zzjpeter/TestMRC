//
//  PersonPropertySetter.m
//  TestSetter
//
//  Created by 朱志佳 on 2021/1/4.
//

#import "PersonPropertySetter.h"

@implementation PersonPropertySetter

/*
 xcrun -sdk iphoneos clang -arch arm64 -rewrite-objc main.m
 */

-(void)dealloc {
    [super dealloc];
    NSLog(@"%@ dealloc",NSStringFromClass(self.class));
}

- (void)setWeight:(float)weight {
    _weight = weight;
}

- (void)setName:(PersonSetter *)name {
    [self printRetainCount:_name obj2:name];
    _name = name;
    [self printRetainCount:_name obj2:name];
}

- (void)setName1:(PersonSetter *)name1 {
    [self printRetainCount:_name1 obj2:name1];
    [name1 retain];
    [_name1 release];
    _name1 = name1;
    [self printRetainCount:_name1 obj2:name1];
}

- (void)setName2:(PersonSetter *)name2 {
    [self printRetainCount:_name2 obj2:name2];
    [name2 retain];
    [_name2 release];
    _name2 = name2;
    [self printRetainCount:_name2 obj2:name2];
}

- (void)setName3:(PersonSetter *)name3 {
    [self printRetainCount:_name3 obj2:name3];
    _name3 = name3;//测试发现weak属性设置的retainCount参数异常【注意：MRC下不支持weak的 不知道是不是这个导致的】
    [self printRetainCount:_name3 obj2:name3];
}

- (void)setName4:(PersonSetter *)name4 {
    [self printRetainCount:_name4 obj2:name4];
    [name4 copy];
    [_name4 release];
    _name4 = name4;
    [self printRetainCount:_name4 obj2:name4];
}

- (void)printRetainCount:(PersonSetter *)newObj obj2:(PersonSetter *)oldObj {
    //NSLog(@"%@##%@##newObj:%ld##oldObj:%ld",NSStringFromClass(self.class),NSStringFromSelector(_cmd),newObj.retainCount, oldObj.retainCount);
}

@end
