.class public Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;
.super Landroid/app/Fragment;
.source "FullScreenVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainedFragment"
.end annotation


# instance fields
.field mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 464
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->setRetainInstance(Z)V

    .line 465
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->destroy()V

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity$RetainedFragment;->mMediaPlayerHelper:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;

    .line 473
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 474
    return-void
.end method
