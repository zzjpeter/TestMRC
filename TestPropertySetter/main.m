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
        PersonSetter *name4 = [[PersonSetter alloc] init];
    
        NSLog(@"person:%ld####name4:%ld##person.name4:%ld",person.retainCount,name4.retainCount,person.name4.retainCount);
        person.name4 = name4;
        NSLog(@"person:%ld####name4:%ld##person.name4:%ld",person.retainCount,name4.retainCount,person.name4.retainCount);
        
        [name4 release];
        NSLog(@"person:%ld####name4:%ld##person.name4:%ld",person.retainCount,name4.retainCount,person.name4.retainCount);
        
        [person release];
        
        //NSLog(@"person:%ld####name4:%ld##person.name4:%ld",person.retainCount,name4.retainCount,person.name4.retainCount);
        
    }
    NSLog(@"end");
    return 0;
}
