.class public abstract Lcom/facebook/drawee/components/DeferredReleaser;
.super Ljava/lang/Object;
.source "DeferredReleaser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/components/DeferredReleaser$Releasable;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/facebook/drawee/components/DeferredReleaser;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static useConcurrentImpl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/drawee/components/DeferredReleaser;->sInstance:Lcom/facebook/drawee/components/DeferredReleaser;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/drawee/components/DeferredReleaser;->useConcurrentImpl:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/drawee/components/DeferredReleaser;
    .locals 2

    .prologue
    .line 37
    const-class v1, Lcom/facebook/drawee/components/DeferredReleaser;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/drawee/components/DeferredReleaser;->sInstance:Lcom/facebook/drawee/components/DeferredReleaser;

    if-nez v0, :cond_0

    .line 38
    sget-boolean v0, Lcom/facebook/drawee/components/DeferredReleaser;->useConcurrentImpl:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-direct {v0}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;-><init>()V

    :goto_0
    sput-object v0, Lcom/facebook/drawee/components/DeferredReleaser;->sInstance:Lcom/facebook/drawee/components/DeferredReleaser;

    .line 43
    :cond_0
    sget-object v0, Lcom/facebook/drawee/components/DeferredReleaser;->sInstance:Lcom/facebook/drawee/components/DeferredReleaser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :cond_1
    :try_start_1
    new-instance v0, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;

    invoke-direct {v0}, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static isOnUiThread()Z
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract cancelDeferredRelease(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V
.end method

.method public abstract scheduleDeferredRelease(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V
.end method
