#import <GLKit/GLKit.h>
#import "Entity.h"
#import "TextureCache.h"
#import "GLProgram.h"
#import "ProgramManager.h"

@interface Sprite : Entity

@property (strong, nonatomic) GLKTextureInfo *textureInfo;
@property (strong, nonatomic) GLProgram *program;

+ (id)spriteWithFile:(NSString*)filename;

@end
