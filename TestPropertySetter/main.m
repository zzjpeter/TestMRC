//
//  main.m
//  TestPropertySetter
//
//  Created by 朱志佳 on 2021/1/4.
//

#import <Foundation/Foundation.h>
#import "PersonPropertySetter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PersonPropertySetter *person = [[PersonPropertySetter alloc] init];
        //[person release];
        //PersonSetter *name = [[PersonSetter alloc] init];
//        NSLog(@"person:%ld####name:%ld##person.name:%ld",person.retainCount,name.retainCount,person.name.retainCount);
//        //person.name = name;
//        NSLog(@"person:%ld####name:%ld##person.name:%ld",person.retainCount,name.retainCount,person.name.retainCount);
//        [person release];
//        NSLog(@"person:%ld####name:%ld##person.name:%ld",person.retainCount,name.retainCount,person.name.retainCount);
    }
    NSLog(@"end");
    return 0;
}
