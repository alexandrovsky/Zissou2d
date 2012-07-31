#import "Sprite.h"

@implementation Sprite
@synthesize textureInfo = _textureInfo;
@synthesize program = _program;

- (void)draw
{
    [self.program use];
    NSLog(@"Drawing a sprite");
}

- (id)initWithFile:(NSString*)fileName
{
    self = [super init];
    if(self){
        self.textureInfo = [[TextureCache sharedTextureCache] addImage:fileName];
        self.program = [[ProgramManager sharedProgramManager] getDefaultProgram];
    }
    return self;
}

+ (id)spriteWithFile:(NSString*)filename
{
	return [[self alloc] initWithFile:filename];
}

@end
