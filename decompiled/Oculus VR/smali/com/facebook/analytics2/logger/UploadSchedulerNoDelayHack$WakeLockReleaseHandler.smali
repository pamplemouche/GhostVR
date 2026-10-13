.class Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack$WakeLockReleaseHandler;
.super Ljava/lang/Object;
.source "UploadSchedulerNoDelayHack.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakeLockReleaseHandler"
.end annotation


# instance fields
.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack$WakeLockReleaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 186
    return-void
.end method


# virtual methods
.method public serviceStarted()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack$WakeLockReleaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 191
    return-void
.end method
