#import <Foundation/Foundation.h>

@interface Entity : NSObject

+ (id)build;

- (id)init;
- (void)visit;
- (void)addChild:(Entity*)child;

@end