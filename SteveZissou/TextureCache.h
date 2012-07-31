#import <Foundation/Foundation.h>
#import <GLKit/GLKit.h>

@interface TextureCache : NSObject

+ (TextureCache*) sharedTextureCache;

- (GLKTextureInfo*)addImage:(NSString*)fileName;

@end