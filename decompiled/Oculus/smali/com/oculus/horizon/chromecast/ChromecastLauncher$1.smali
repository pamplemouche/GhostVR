.class Lcom/oculus/horizon/chromecast/ChromecastLauncher$1;
.super Ljava/lang/Object;
.source "ChromecastLauncher.java"

# interfaces
.implements Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/chromecast/ChromecastLauncher;->startCastService(Lcom/google/android/gms/cast/CastDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/chromecast/ChromecastLauncher;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$1;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteDisplaySessionError(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .prologue
    .line 133
    const-string v0, "ChromecastLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/ChromecastLauncher$1;->this$0:Lcom/oculus/horizon/chromecast/ChromecastLauncher;

    invoke-static {v0}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$100(Lcom/oculus/horizon/chromecast/ChromecastLauncher;)V

    .line 135
    return-void
.end method

.method public onRemoteDisplaySessionStarted(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 2

    .prologue
    .line 127
    const-string v0, "ChromecastLauncher"

    const-string v1, "onServiceStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/oculus/horizon/chromecast/ChromecastLauncher;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    return-void
.end method

.method public onServiceCreated(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 2

    .prologue
    .line 122
    const-string v0, "ChromecastLauncher"

    const-string v1, "onServiceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method
