#import <Foundation/Foundation.h>

//typedef struct
//{
//    char* Name;
//    GLint Location;
//}Uniform;
//
//typedef struct
//{
//    int NumberOfUniforms;
//    Uniform* Uniform;
//
//}UniformInfo;

@interface GLProgram : NSObject

//+(GLuint)compileShader:(NSString*)shaderName withType:(GLenum)shaderType;
//+(GLuint)createProgram;
//+(UniformInfo)getUniforms:(GLuint)program;
- (void)use;
- (id)initWithVertexShader:(NSString*)vertexShaderName fragmentShader:(NSString*)fragmentShaderName;

@end