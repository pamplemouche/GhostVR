.class public Lcom/oculus/horizon/spherical/gl/Program;
.super Ljava/lang/Object;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;
    }
.end annotation


# instance fields
.field private final mProgramHandle:I

.field private final mProgramInUse:Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;

.field private final mSamplerTextureUnitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniformNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVertexAttributeNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mVertexAttributeNameMap:Ljava/util/Map;

    .line 28
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mUniformNameMap:Ljava/util/Map;

    .line 31
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mSamplerTextureUnitMap:Ljava/util/Map;

    .line 208
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mProgramHandle:I

    .line 210
    const v0, 0x8b31

    invoke-static {v0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 211
    const v1, 0x8b30

    invoke-static {v1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 213
    iget v2, p0, Lcom/oculus/horizon/spherical/gl/Program;->mProgramHandle:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 214
    iget v2, p0, Lcom/oculus/horizon/spherical/gl/Program;->mProgramHandle:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 216
    invoke-direct {p0, v0, p1}, Lcom/oculus/horizon/spherical/gl/Program;->compileShader(ILjava/lang/String;)V

    .line 217
    invoke-direct {p0, v1, p2}, Lcom/oculus/horizon/spherical/gl/Program;->compileShader(ILjava/lang/String;)V

    .line 219
    iget v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 220
    new-instance v0, Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;-><init>(Lcom/oculus/horizon/spherical/gl/Program;)V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mProgramInUse:Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/spherical/gl/Program;Lcom/oculus/horizon/spherical/gl/Geometry;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oculus/horizon/spherical/gl/Program;->draw(Lcom/oculus/horizon/spherical/gl/Geometry;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/spherical/gl/Program;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mUniformNameMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/spherical/gl/Program;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mProgramHandle:I

    return v0
.end method

.method private compileShader(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 269
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 271
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 272
    const v1, 0x8b81

    invoke-static {p1, v1, v0, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 273
    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 274
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to compile shader:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_0
    return-void
.end method

.method private draw(Lcom/oculus/horizon/spherical/gl/Geometry;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 234
    iget-object v6, p1, Lcom/oculus/horizon/spherical/gl/Geometry;->vertexDataMap:Lcom/google/common/collect/ImmutableMap;

    .line 235
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 236
    invoke-direct {p0, v1}, Lcom/oculus/horizon/spherical/gl/Program;->getVertexAttributeLocation(Ljava/lang/String;)I

    move-result v0

    .line 237
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 242
    invoke-virtual {v6, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/oculus/horizon/spherical/gl/VertexData;

    .line 243
    iget v1, v5, Lcom/oculus/horizon/spherical/gl/VertexData;->dimension:I

    const/16 v2, 0x1406

    iget-boolean v3, v5, Lcom/oculus/horizon/spherical/gl/VertexData;->normalized:Z

    iget-object v5, v5, Lcom/oculus/horizon/spherical/gl/VertexData;->data:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 250
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p1, Lcom/oculus/horizon/spherical/gl/Geometry;->indexArray:Lcom/oculus/horizon/spherical/gl/IndexArray;

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p1, Lcom/oculus/horizon/spherical/gl/Geometry;->indexArray:Lcom/oculus/horizon/spherical/gl/IndexArray;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/gl/IndexArray;->indices:Ljava/nio/Buffer;

    .line 255
    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    iget v1, p1, Lcom/oculus/horizon/spherical/gl/Geometry;->elementType:I

    iget-object v2, p1, Lcom/oculus/horizon/spherical/gl/Geometry;->indexArray:Lcom/oculus/horizon/spherical/gl/IndexArray;

    iget v2, v2, Lcom/oculus/horizon/spherical/gl/IndexArray;->size:I

    const/16 v3, 0x1401

    invoke-static {v1, v2, v3, v0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 265
    :cond_2
    :goto_1
    return-void

    .line 258
    :cond_3
    const-class v1, Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    iget v1, p1, Lcom/oculus/horizon/spherical/gl/Geometry;->elementType:I

    iget-object v2, p1, Lcom/oculus/horizon/spherical/gl/Geometry;->indexArray:Lcom/oculus/horizon/spherical/gl/IndexArray;

    iget v2, v2, Lcom/oculus/horizon/spherical/gl/IndexArray;->size:I

    const/16 v3, 0x1403

    invoke-static {v1, v2, v3, v0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_1

    .line 263
    :cond_4
    iget v0, p1, Lcom/oculus/horizon/spherical/gl/Geometry;->elementType:I

    iget v1, p1, Lcom/oculus/horizon/spherical/gl/Geometry;->count:I

    invoke-static {v0, v4, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_1
.end method

.method private getVertexAttributeLocation(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mVertexAttributeNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mVertexAttributeNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 292
    :goto_0
    return v0

    .line 284
    :cond_0
    iget v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mProgramHandle:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 286
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v2, "Vertex attribute location not found: %s"

    invoke-static {v0, v2, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mVertexAttributeNameMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 292
    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public use()Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 230
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program;->mProgramInUse:Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;

    return-object v0
.end method
