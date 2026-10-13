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

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack$WakeLockReleaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public serviceStarted()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack$WakeLockReleaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
