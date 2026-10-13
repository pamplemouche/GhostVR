.class Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;
.super Ljava/lang/Object;
.source "OculusVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/OculusVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OesSurfaceManager"
.end annotation


# instance fields
.field private mCopyTargetCreateMipmap:Z

.field private mCopyTargetHeight:I

.field private mCopyTargetTexture:I

.field private mCopyTargetWidth:I

.field private mOesSurface:Landroid/view/Surface;

.field private mOesSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mOesTextureCopier:Lcom/oculus/video/OESTextureCopier;

.field final synthetic this$0:Lcom/oculus/video/OculusVideoPlayer;


# direct methods
.method public constructor <init>(Lcom/oculus/video/OculusVideoPlayer;)V
    .locals 2

    .line 296
    iput-object p1, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->this$0:Lcom/oculus/video/OculusVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 300
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 301
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesSurface:Landroid/view/Surface;

    .line 303
    invoke-static {p1}, Lcom/oculus/video/OculusVideoPlayer;->access$000(Lcom/oculus/video/OculusVideoPlayer;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->nativeSetVideoSurface(JLandroid/view/Surface;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 304
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "OesSurfaceManager creation failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native nativeSetVideoSurface(JLandroid/view/Surface;)Z
.end method


# virtual methods
.method public copyToTexture()J
    .locals 10

    .line 332
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mCopyTargetTexture:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mCopyTargetWidth:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mCopyTargetHeight:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->this$0:Lcom/oculus/video/OculusVideoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusVideoPlayer;->access$100(Lcom/oculus/video/OculusVideoPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/video/OESTextureCopier;

    .line 340
    invoke-virtual {v1}, Lcom/oculus/video/OESTextureCopier;->release()V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->this$0:Lcom/oculus/video/OculusVideoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusVideoPlayer;->access$100(Lcom/oculus/video/OculusVideoPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesTextureCopier:Lcom/oculus/video/OESTextureCopier;

    if-nez v0, :cond_2

    .line 345
    new-instance v0, Lcom/oculus/video/OESTextureCopier;

    invoke-direct {v0}, Lcom/oculus/video/OESTextureCopier;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesTextureCopier:Lcom/oculus/video/OESTextureCopier;

    .line 346
    invoke-static {}, Lcom/oculus/video/OculusVideoPlayer;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oesTextureID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesTextureCopier:Lcom/oculus/video/OESTextureCopier;

    invoke-virtual {v2}, Lcom/oculus/video/OESTextureCopier;->getOesTexture()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesTextureCopier:Lcom/oculus/video/OESTextureCopier;

    invoke-virtual {v1}, Lcom/oculus/video/OESTextureCopier;->getOesTexture()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 352
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v8

    .line 353
    iget-object v1, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesTextureCopier:Lcom/oculus/video/OESTextureCopier;

    iget v2, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mCopyTargetTexture:I

    iget v5, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mCopyTargetWidth:I

    iget v6, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mCopyTargetHeight:I

    iget-boolean v7, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mCopyTargetCreateMipmap:Z

    move-wide v3, v8

    invoke-virtual/range {v1 .. v7}, Lcom/oculus/video/OESTextureCopier;->copyTexture(IJIIZ)V

    return-wide v8

    :cond_3
    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public loadCopyTargetTexture(IIIZ)V
    .locals 0

    .line 325
    iput p1, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mCopyTargetTexture:I

    .line 326
    iput p2, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mCopyTargetWidth:I

    .line 327
    iput p3, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mCopyTargetHeight:I

    .line 328
    iput-boolean p4, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mCopyTargetCreateMipmap:Z

    return-void
.end method

.method public release()V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->this$0:Lcom/oculus/video/OculusVideoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusVideoPlayer;->access$000(Lcom/oculus/video/OculusVideoPlayer;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->nativeSetVideoSurface(JLandroid/view/Surface;)Z

    .line 311
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 312
    iput-object v2, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesSurface:Landroid/view/Surface;

    .line 314
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 315
    iput-object v2, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 317
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesTextureCopier:Lcom/oculus/video/OESTextureCopier;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->this$0:Lcom/oculus/video/OculusVideoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusVideoPlayer;->access$100(Lcom/oculus/video/OculusVideoPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesTextureCopier:Lcom/oculus/video/OESTextureCopier;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    iput-object v2, p0, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->mOesTextureCopier:Lcom/oculus/video/OESTextureCopier;

    return-void
.end method
