#import <Foundation/Foundation.h>
#import "GLProgram.h"

@interface ProgramManager : NSObject

+ (ProgramManager*)sharedProgramManager;

- (GLProgram*)getDefaultProgram;

@end
