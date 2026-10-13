.class public Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;
.super Ljava/lang/Object;
.source "VrCastDiscoverTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$DiscoverCallback;
    }
.end annotation


# static fields
.field private static final DISCOVER_DURATION_SECONDS:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$DiscoverCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$DiscoverCallback;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    .line 30
    iput-object p2, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->mCallback:Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$DiscoverCallback;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->onTimeout()V

    return-void
.end method

.method private onTimeout()V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->TAG:Ljava/lang/String;

    const-string v1, "onTimeout(), sending results to callback"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->mCallback:Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$DiscoverCallback;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->getCurrentDeviceList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$DiscoverCallback;->onDiscoverResult(Ljava/util/List;)V

    .line 50
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->TAG:Ljava/lang/String;

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->mCallback:Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$DiscoverCallback;

    invoke-interface {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$DiscoverCallback;->onDiscoverError()V

    .line 56
    return-void
.end method

.method public discover()V
    .locals 6

    .prologue
    .line 35
    sget-object v0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->TAG:Ljava/lang/String;

    const-string v1, "discover()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$1;-><init>(Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    .line 43
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->discover()V

    .line 45
    return-void
.end method
