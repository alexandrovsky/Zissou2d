#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>
#import "Scene.h"

@interface Steve : GLKViewController

+ (Steve*)sharedDirector;

- (void)pushScene:(Scene*)scene;

@end