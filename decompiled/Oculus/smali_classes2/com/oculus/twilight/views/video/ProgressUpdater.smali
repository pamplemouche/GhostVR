.class public Lcom/oculus/twilight/views/video/ProgressUpdater;
.super Ljava/lang/Object;
.source "ProgressUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/twilight/views/video/ProgressUpdater$ProgressCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_POSITION_UPDATE_MS:I


# instance fields
.field private mCallback:Lcom/oculus/twilight/views/video/ProgressUpdater$ProgressCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mPeriodicUpdatesEnabled:Z

.field private mUpdatePeriodMs:I

.field private mVideoView:Landroid/widget/VideoView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/oculus/twilight/views/video/ProgressUpdater;->DEFAULT_POSITION_UPDATE_MS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mHandler:Landroid/os/Handler;

    .line 24
    sget v0, Lcom/oculus/twilight/views/video/ProgressUpdater;->DEFAULT_POSITION_UPDATE_MS:I

    iput v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mUpdatePeriodMs:I

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mCallback:Lcom/oculus/twilight/views/video/ProgressUpdater$ProgressCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mPeriodicUpdatesEnabled:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mCallback:Lcom/oculus/twilight/views/video/ProgressUpdater$ProgressCallback;

    iget-object v1, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oculus/twilight/views/video/ProgressUpdater$ProgressCallback;->onProgress(II)V

    .line 32
    iget-object v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mUpdatePeriodMs:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    :cond_0
    return-void
.end method

.method public startUpdates(Landroid/widget/VideoView;Lcom/oculus/twilight/views/video/ProgressUpdater$ProgressCallback;I)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mVideoView:Landroid/widget/VideoView;

    .line 45
    iput-object p2, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mCallback:Lcom/oculus/twilight/views/video/ProgressUpdater$ProgressCallback;

    .line 46
    iget-boolean v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mPeriodicUpdatesEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mUpdatePeriodMs:I

    if-ne p3, v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    iput p3, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mUpdatePeriodMs:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mPeriodicUpdatesEnabled:Z

    .line 51
    iget-object v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    iget-object v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stopUpdates()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    iget-object v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    iput-object v1, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mCallback:Lcom/oculus/twilight/views/video/ProgressUpdater$ProgressCallback;

    .line 39
    iput-object v1, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mVideoView:Landroid/widget/VideoView;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/twilight/views/video/ProgressUpdater;->mPeriodicUpdatesEnabled:Z

    .line 41
    return-void
.end method
