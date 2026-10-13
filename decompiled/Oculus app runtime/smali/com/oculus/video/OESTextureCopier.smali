.class Lcom/oculus/video/OESTextureCopier;
.super Ljava/lang/Object;
.source "OESTextureCopier.java"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final TAG:Ljava/lang/String; = "OESTextureCopier"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = vec2(aTextureCoord.x, 1.0 - aTextureCoord.y);\n}\n"


# instance fields
.field private mFrameBuffer:I

.field private mLastFrameTimestampNs:J

.field private mOesTexture:I

.field private mProgram:I

.field private mTargetTexture:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field private mUnitSquareArray:I

.field private mUnitSquareBuffers:[I

.field private maPositionHandle:I

.field private maTextureHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 35
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oculus/video/OESTextureCopier;->mTriangleVerticesData:[F

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/oculus/video/OESTextureCopier;->mOesTexture:I

    .line 67
    iput v0, p0, Lcom/oculus/video/OESTextureCopier;->mTargetTexture:I

    const-wide/16 v1, -0x1

    .line 68
    iput-wide v1, p0, Lcom/oculus/video/OESTextureCopier;->mLastFrameTimestampNs:J

    .line 69
    iput v0, p0, Lcom/oculus/video/OESTextureCopier;->mFrameBuffer:I

    .line 70
    iput v0, p0, Lcom/oculus/video/OESTextureCopier;->mUnitSquareArray:I

    .line 76
    iget-object v1, p0, Lcom/oculus/video/OESTextureCopier;->mTriangleVerticesData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 78
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/video/OESTextureCopier;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 79
    iget-object v1, p0, Lcom/oculus/video/OESTextureCopier;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/oculus/video/OESTextureCopier;->mTriangleVerticesData:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 81
    invoke-direct {p0}, Lcom/oculus/video/OESTextureCopier;->setupCopyProgram()V

    .line 82
    invoke-direct {p0}, Lcom/oculus/video/OESTextureCopier;->createOesTexture()V

    .line 83
    invoke-direct {p0}, Lcom/oculus/video/OESTextureCopier;->createUnitSquare()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4

    .line 353
    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    sget-object v1, Lcom/oculus/video/OESTextureCopier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkLocation(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    return-void

    .line 361
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' in program"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createFrameBuffer()V
    .locals 5

    .line 91
    invoke-direct {p0}, Lcom/oculus/video/OESTextureCopier;->releaseFrameBuffer()V

    .line 92
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->mTargetTexture:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 95
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 96
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenFramebuffers(I[II)V

    .line 97
    aget v0, v1, v2

    iput v0, p0, Lcom/oculus/video/OESTextureCopier;->mFrameBuffer:I

    .line 99
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->mFrameBuffer:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    const-string v0, "glBindFramebuffer mFrameBuffer"

    .line 100
    invoke-direct {p0, v0}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    const v0, 0x8ce0

    const/16 v3, 0xde1

    .line 102
    iget v4, p0, Lcom/oculus/video/OESTextureCopier;->mTargetTexture:I

    invoke-static {v1, v0, v3, v4, v2}, Landroid/opengl/GLES30;->glFramebufferTexture2D(IIIII)V

    const-string v0, "glFramebufferTexture2D mTargetTexture"

    .line 108
    invoke-direct {p0, v0}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 110
    invoke-static {v1, v2}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    return-void
.end method

.method private createOesTexture()V
    .locals 4

    const/4 v0, 0x1

    .line 246
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 247
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 249
    aget v0, v1, v2

    iput v0, p0, Lcom/oculus/video/OESTextureCopier;->mOesTexture:I

    .line 250
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->mOesTexture:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const-string v0, "glBindTexture mOesTexture"

    .line 251
    invoke-direct {p0, v0}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    const v0, 0x46180400    # 9729.0f

    const/16 v3, 0x2801

    .line 253
    invoke-static {v1, v3, v0}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 v3, 0x2800

    .line 255
    invoke-static {v1, v3, v0}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const v0, 0x812f

    const/16 v3, 0x2802

    .line 257
    invoke-static {v1, v3, v0}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const/16 v3, 0x2803

    .line 259
    invoke-static {v1, v3, v0}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const-string v0, "glTexParameter"

    .line 261
    invoke-direct {p0, v0}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 263
    invoke-static {v1, v2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const v0, 0x8b31

    .line 283
    invoke-direct {p0, v0, p1}, Lcom/oculus/video/OESTextureCopier;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 287
    invoke-direct {p0, v1, p2}, Lcom/oculus/video/OESTextureCopier;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 292
    :cond_1
    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result v1

    if-nez v1, :cond_2

    .line 294
    sget-object v2, Lcom/oculus/video/OESTextureCopier;->TAG:Ljava/lang/String;

    const-string v3, "Could not create program"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    invoke-static {v1, p1}, Landroid/opengl/GLES30;->glAttachShader(II)V

    const-string p1, "glAttachShader"

    .line 297
    invoke-direct {p0, p1}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 298
    invoke-static {v1, p2}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 299
    invoke-direct {p0, p1}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 300
    invoke-static {v1}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    const/4 p1, 0x1

    .line 301
    new-array p2, p1, [I

    const v2, 0x8b82

    .line 302
    invoke-static {v1, v2, p2, v0}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    .line 303
    aget p2, p2, v0

    if-eq p2, p1, :cond_3

    .line 304
    sget-object p1, Lcom/oculus/video/OESTextureCopier;->TAG:Ljava/lang/String;

    const-string p2, "Could not link program: "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object p1, Lcom/oculus/video/OESTextureCopier;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES30;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {v1}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method private createUnitSquare()V
    .locals 13

    const/4 v0, 0x1

    .line 115
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 116
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    .line 117
    aget v1, v1, v2

    iput v1, p0, Lcom/oculus/video/OESTextureCopier;->mUnitSquareArray:I

    .line 120
    iget v1, p0, Lcom/oculus/video/OESTextureCopier;->mUnitSquareArray:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    const-string v1, "glBindVertexArray mUnitSquareArray"

    .line 121
    invoke-direct {p0, v1}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 123
    new-array v3, v1, [I

    .line 124
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES30;->glGenBuffers(I[II)V

    .line 125
    iput-object v3, p0, Lcom/oculus/video/OESTextureCopier;->mUnitSquareBuffers:[I

    .line 127
    aget v1, v3, v2

    const v4, 0x8892

    invoke-static {v4, v1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const-string v1, "glBindBuffer buffers[0]"

    .line 128
    invoke-direct {p0, v1}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/oculus/video/OESTextureCopier;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    iget-object v1, p0, Lcom/oculus/video/OESTextureCopier;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v5, p0, Lcom/oculus/video/OESTextureCopier;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const v6, 0x88e4

    invoke-static {v4, v1, v5, v6}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    const-string v1, "glBufferData buffers[0]"

    .line 131
    invoke-direct {p0, v1}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 133
    iget v7, p0, Lcom/oculus/video/OESTextureCopier;->maPositionHandle:I

    const/4 v8, 0x3

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x14

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    const-string v1, "glVertexAttribPointer maPosition"

    .line 135
    invoke-direct {p0, v1}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 137
    iget v1, p0, Lcom/oculus/video/OESTextureCopier;->maPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    const-string v1, "glEnableVertexAttribArray maPositionHandle"

    .line 138
    invoke-direct {p0, v1}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 140
    aget v0, v3, v0

    invoke-static {v4, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const-string v0, "glBindBuffer buffers[1]"

    .line 141
    invoke-direct {p0, v0}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/oculus/video/OESTextureCopier;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    iget-object v0, p0, Lcom/oculus/video/OESTextureCopier;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/oculus/video/OESTextureCopier;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static {v4, v0, v1, v6}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    const-string v0, "glBufferData buffers[1]"

    .line 144
    invoke-direct {p0, v0}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 146
    iget v5, p0, Lcom/oculus/video/OESTextureCopier;->maTextureHandle:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x14

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    const-string v0, "glVertexAttribPointer maTextureHandle"

    .line 148
    invoke-direct {p0, v0}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 150
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    .line 151
    invoke-direct {p0, v0}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 154
    invoke-static {v4, v2}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 155
    invoke-static {v2}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 4

    .line 267
    invoke-static {p1}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 269
    invoke-static {v0, p2}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    .line 270
    invoke-static {v0}, Landroid/opengl/GLES30;->glCompileShader(I)V

    const/4 p2, 0x1

    .line 271
    new-array p2, p2, [I

    const/4 v1, 0x0

    const v2, 0x8b81

    .line 272
    invoke-static {v0, v2, p2, v1}, Landroid/opengl/GLES30;->glGetShaderiv(II[II)V

    .line 273
    aget p2, p2, v1

    if-nez p2, :cond_0

    .line 274
    sget-object p2, Lcom/oculus/video/OESTextureCopier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object p1, Lcom/oculus/video/OESTextureCopier;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES30;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private releaseFrameBuffer()V
    .locals 4

    .line 320
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->mFrameBuffer:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 321
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES30;->glDeleteFramebuffers(I[II)V

    .line 322
    iput v3, p0, Lcom/oculus/video/OESTextureCopier;->mFrameBuffer:I

    :cond_0
    return-void
.end method

.method private releaseOesTexture()V
    .locals 4

    .line 327
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->mOesTexture:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 328
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 329
    iput v3, p0, Lcom/oculus/video/OESTextureCopier;->mOesTexture:I

    :cond_0
    return-void
.end method

.method private releaseUnitSquare()V
    .locals 4

    .line 334
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->mUnitSquareArray:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 335
    new-array v3, v2, [I

    aput v0, v3, v1

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    .line 336
    iput v1, p0, Lcom/oculus/video/OESTextureCopier;->mOesTexture:I

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/OESTextureCopier;->mUnitSquareBuffers:[I

    if-eqz v0, :cond_1

    .line 339
    array-length v2, v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/oculus/video/OESTextureCopier;->mUnitSquareBuffers:[I

    :cond_1
    return-void
.end method

.method private setupCopyProgram()V
    .locals 2

    const-string v0, "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = vec2(aTextureCoord.x, 1.0 - aTextureCoord.y);\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 235
    invoke-direct {p0, v0, v1}, Lcom/oculus/video/OESTextureCopier;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oculus/video/OESTextureCopier;->mProgram:I

    .line 236
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->mProgram:I

    if-eqz v0, :cond_0

    const-string v1, "aPosition"

    .line 239
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oculus/video/OESTextureCopier;->maPositionHandle:I

    .line 240
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->maPositionHandle:I

    invoke-direct {p0, v0, v1}, Lcom/oculus/video/OESTextureCopier;->checkLocation(ILjava/lang/String;)V

    .line 241
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oculus/video/OESTextureCopier;->maTextureHandle:I

    .line 242
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->maTextureHandle:I

    invoke-direct {p0, v0, v1}, Lcom/oculus/video/OESTextureCopier;->checkLocation(ILjava/lang/String;)V

    return-void

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copyTexture(IJIIZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 164
    :cond_0
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->mTargetTexture:I

    if-eq p1, v0, :cond_1

    .line 165
    iput p1, p0, Lcom/oculus/video/OESTextureCopier;->mTargetTexture:I

    .line 166
    invoke-direct {p0}, Lcom/oculus/video/OESTextureCopier;->createFrameBuffer()V

    const-wide/16 v0, -0x1

    .line 169
    iput-wide v0, p0, Lcom/oculus/video/OESTextureCopier;->mLastFrameTimestampNs:J

    .line 172
    :cond_1
    iget-wide v0, p0, Lcom/oculus/video/OESTextureCopier;->mLastFrameTimestampNs:J

    cmp-long p1, v0, p2

    if-nez p1, :cond_2

    return-void

    .line 175
    :cond_2
    iput-wide p2, p0, Lcom/oculus/video/OESTextureCopier;->mLastFrameTimestampNs:J

    .line 177
    iget p1, p0, Lcom/oculus/video/OESTextureCopier;->mFrameBuffer:I

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string p1, "onDrawFrame start"

    .line 181
    invoke-direct {p0, p1}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 183
    iget p1, p0, Lcom/oculus/video/OESTextureCopier;->mFrameBuffer:I

    const p2, 0x8d40

    invoke-static {p2, p1}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    const-string p1, "glBindFramebuffer mFrameBuffer"

    .line 184
    invoke-direct {p0, p1}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 186
    new-array p1, p1, [I

    const p3, 0x8ce0

    const/4 v0, 0x0

    aput p3, p1, v0

    .line 187
    array-length p3, p1

    invoke-static {p2, p3, p1, v0}, Landroid/opengl/GLES30;->glInvalidateFramebuffer(II[II)V

    const-string p1, "glInvalidateFramebuffer mFrameBuffer"

    .line 189
    invoke-direct {p0, p1}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 191
    invoke-static {v0, v0, p4, p5}, Landroid/opengl/GLES30;->glViewport(IIII)V

    .line 192
    invoke-static {v0, v0, p4, p5}, Landroid/opengl/GLES30;->glScissor(IIII)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    .line 195
    invoke-static {p3, p1, p3, p1}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 196
    invoke-static {p1}, Landroid/opengl/GLES30;->glClear(I)V

    const p1, 0x84c0

    .line 198
    invoke-static {p1}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 199
    iget p3, p0, Lcom/oculus/video/OESTextureCopier;->mOesTexture:I

    const p4, 0x8d65

    invoke-static {p4, p3}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const-string p3, "glBindTexture mOesTexture"

    .line 200
    invoke-direct {p0, p3}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 202
    iget p3, p0, Lcom/oculus/video/OESTextureCopier;->mProgram:I

    invoke-static {p3}, Landroid/opengl/GLES30;->glUseProgram(I)V

    const-string p3, "glUseProgram"

    .line 203
    invoke-direct {p0, p3}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 205
    iget p3, p0, Lcom/oculus/video/OESTextureCopier;->mUnitSquareArray:I

    invoke-static {p3}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    const-string p3, "glBindVertexArray mUnitSquareArray"

    .line 206
    invoke-direct {p0, p3}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    const/4 p3, 0x4

    const/4 p5, 0x6

    .line 208
    invoke-static {p3, v0, p5}, Landroid/opengl/GLES30;->glDrawArrays(III)V

    const-string p3, "glDrawArrays"

    .line 209
    invoke-direct {p0, p3}, Lcom/oculus/video/OESTextureCopier;->checkGlError(Ljava/lang/String;)V

    .line 215
    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 216
    invoke-static {p1}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 217
    invoke-static {p4, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 218
    invoke-static {p2, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 219
    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    if-eqz p6, :cond_4

    .line 222
    invoke-static {p1}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 223
    iget p1, p0, Lcom/oculus/video/OESTextureCopier;->mTargetTexture:I

    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 224
    invoke-static {p2}, Landroid/opengl/GLES30;->glGenerateMipmap(I)V

    .line 225
    invoke-static {p2, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 228
    :cond_4
    invoke-static {}, Landroid/opengl/GLES30;->glFlush()V

    return-void
.end method

.method public getOesTexture()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->mOesTexture:I

    return v0
.end method

.method public release()V
    .locals 1

    .line 345
    invoke-direct {p0}, Lcom/oculus/video/OESTextureCopier;->releaseFrameBuffer()V

    .line 346
    invoke-direct {p0}, Lcom/oculus/video/OESTextureCopier;->releaseOesTexture()V

    .line 347
    invoke-direct {p0}, Lcom/oculus/video/OESTextureCopier;->releaseUnitSquare()V

    .line 348
    iget v0, p0, Lcom/oculus/video/OESTextureCopier;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    return-void
.end method
