#import "Entity.h"

@interface Entity()
@property (strong, nonatomic) NSMutableArray *children;
@end

@implementation Entity
@synthesize children = _children;

+ (id)build
{
    return [[self alloc] init];
}

- (void)addChild:(Entity*)child
{
    [self.children addObject:child];
}

- (id)init
{
    self = [super init];
    if(self)
    {
        
    }
    return self;
}

- (void)draw
{
    // Override me
}

- (void)visit
{
    if(_children)
    {
        for (Entity* child in self.children) {
            [child visit];
        }
    }
    [self draw];
}

- (NSMutableArray*)children
{
    if (!_children) {
        _children = [NSMutableArray array];
    }
    return _children;
}

@end
