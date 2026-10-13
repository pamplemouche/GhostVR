.class public Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;
.super Ljava/lang/Object;
.source "PhotoTextureRenderer.java"

# interfaces
.implements Lcom/oculus/horizon/spherical/TextureRenderer;


# instance fields
.field private m360PhotoTextureId:I

.field private mGeometry:Lcom/oculus/horizon/spherical/gl/Geometry;

.field private mProgram:Lcom/oculus/horizon/spherical/gl/Program;

.field private final mProgramFactory:Lcom/oculus/horizon/spherical/gl/ProgramFactory;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->m360PhotoTextureId:I

    .line 31
    iput v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->mViewWidth:I

    .line 32
    iput v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->mViewHeight:I

    .line 35
    new-instance v0, Lcom/oculus/horizon/spherical/gl/ProgramFactory;

    invoke-direct {v0, p1}, Lcom/oculus/horizon/spherical/gl/ProgramFactory;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->mProgramFactory:Lcom/oculus/horizon/spherical/gl/ProgramFactory;

    .line 36
    invoke-static {}, Lcom/oculus/horizon/spherical/CubemapGeometry;->newBuilder()Lcom/oculus/horizon/spherical/CubemapGeometry$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/CubemapGeometry$Builder;->build()Lcom/oculus/horizon/spherical/gl/Geometry;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->mGeometry:Lcom/oculus/horizon/spherical/gl/Geometry;

    .line 37
    return-void
.end method


# virtual methods
.method public drawFrame([F[FII)V
    .locals 5

    .prologue
    const v4, 0x8513

    const/4 v3, 0x0

    .line 51
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->m360PhotoTextureId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 54
    :cond_0
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->mViewWidth:I

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->mViewHeight:I

    if-eq p4, v0, :cond_2

    .line 55
    :cond_1
    invoke-static {v3, v3, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 56
    iput p3, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->mViewWidth:I

    .line 57
    iput p4, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->mViewHeight:I

    .line 60
    :cond_2
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 62
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->m360PhotoTextureId:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->mProgram:Lcom/oculus/horizon/spherical/gl/Program;

    .line 65
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/gl/Program;->use()Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;

    move-result-object v0

    const-string v1, "sTexture"

    iget v2, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->m360PhotoTextureId:I

    .line 66
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;->setTexture(Ljava/lang/String;III)Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;

    move-result-object v0

    const-string v1, "uMVPMatrix"

    .line 67
    invoke-virtual {v0, v1, p1}, Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;->setMatrix4(Ljava/lang/String;[F)Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->mGeometry:Lcom/oculus/horizon/spherical/gl/Geometry;

    .line 68
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;->draw(Lcom/oculus/horizon/spherical/gl/Geometry;)Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;

    goto :goto_0
.end method

.method public setProjectionType(Lcom/oculus/horizon/spherical/model/ProjectionType;)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->mProgramFactory:Lcom/oculus/horizon/spherical/gl/ProgramFactory;

    sget v1, Lcom/oculus/horizon/spherical/R$raw;->photo_render_vs:I

    sget v2, Lcom/oculus/horizon/spherical/R$raw;->photo_render_fs:I

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/spherical/gl/ProgramFactory;->create(II)Lcom/oculus/horizon/spherical/gl/Program;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->mProgram:Lcom/oculus/horizon/spherical/gl/Program;

    .line 47
    return-void
.end method

.method public uploadBitmapToGPU(Landroid/graphics/Bitmap;)V
    .locals 14

    .prologue
    const/4 v5, 0x1

    const v4, 0x46180400    # 9729.0f

    const/4 v2, 0x0

    const v3, 0x8513

    const/4 v1, 0x0

    .line 73
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 79
    new-array v0, v5, [I

    .line 80
    invoke-static {v5, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 81
    aget v0, v0, v1

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->m360PhotoTextureId:I

    .line 83
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 84
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->m360PhotoTextureId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glBindTexture GL_TEXTURE_CUBE_MAP textureId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->m360PhotoTextureId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/spherical/gl/GLHelpers;->checkGlError(Ljava/lang/String;)V

    .line 87
    const/16 v0, 0x2801

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 89
    const/16 v0, 0x2800

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 91
    const/16 v0, 0x2802

    const v2, 0x812f

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 93
    const/16 v0, 0x2803

    const v2, 0x812f

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 95
    const-string v0, "glTexParameter"

    invoke-static {v0}, Lcom/oculus/horizon/spherical/gl/GLHelpers;->checkGlError(Ljava/lang/String;)V

    .line 97
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 98
    const/16 v0, 0x404

    invoke-static {v0}, Landroid/opengl/GLES20;->glCullFace(I)V

    .line 99
    const-string v0, "glCullFace"

    invoke-static {v0}, Lcom/oculus/horizon/spherical/gl/GLHelpers;->checkGlError(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v10

    .line 106
    div-int/lit8 v0, v10, 0x18

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v3, v2

    move v9, v1

    .line 107
    :goto_1
    const/4 v0, 0x6

    if-ge v9, v0, :cond_2

    .line 108
    const v0, 0x8515

    add-int/2addr v0, v9

    const/16 v2, 0x1908

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    div-int/lit8 v4, v10, 0x6

    mul-int/2addr v4, v9

    int-to-long v4, v4

    div-int/lit8 v8, v10, 0x6

    int-to-long v12, v8

    .line 117
    invoke-static {p1, v4, v5, v12, v13}, Lcom/facebook/images/bitmaps/BitmapsUtils;->getByteBuffer(Landroid/graphics/Bitmap;JJ)Ljava/nio/ByteBuffer;

    move-result-object v8

    move v4, v3

    move v5, v1

    .line 108
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 121
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 122
    invoke-static {p1}, Lcom/facebook/images/bitmaps/BitmapsUtils;->releaseByteBuffer(Landroid/graphics/Bitmap;)V

    .line 107
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    .line 125
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glTexImage2D textureId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->m360PhotoTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/spherical/gl/GLHelpers;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
