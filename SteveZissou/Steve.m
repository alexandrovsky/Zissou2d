#import "Steve.h"

static Steve* _sharedDirector = nil;

@interface Steve()
@property (strong, nonatomic) EAGLContext *context;
@property (strong, nonatomic) Scene *nextScene;
@property (strong, nonatomic) Scene *currentScene;
@end

@implementation Steve
@synthesize context = _context;
@synthesize nextScene = _nextScene;
@synthesize currentScene = _currentScene;

- (void)pushScene:(Scene *)scene
{
    self.nextScene = scene;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    _sharedDirector = self;
}

+ (Steve*)sharedDirector
{
	return _sharedDirector;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Create context
    self.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    if (!self.context) {
        NSLog(@"Failed to create ES context");
        exit(1);
    }
    
    if (![EAGLContext setCurrentContext:self.context])
    {
        NSLog(@"Failed to set current OpenGL context");
        exit(1);
    }
    
    // Initialize view
    GLKView *view = (GLKView *)self.view;
    view.context = self.context;
    //view.drawableDepthFormat = GLKViewDrawableDepthFormat16;
    //view.drawableMultisample = GLKViewDrawableMultisample4X;
}

- (void)setNextScene
{
    self.currentScene = self.nextScene;
    self.nextScene = nil;
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    if(self.nextScene)
		[self setNextScene];
    
    [self.currentScene visit];
}

- (void)update
{
    int td = self.timeSinceLastUpdate;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Cleanup GL
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
