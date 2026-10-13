.class Lcom/oculus/horizon/service_media/vrcast/VrCastManager$VrCastCallbackImpl;
.super Lcom/oculus/vrcast/VrCastController$VrCastCallback;
.source "VrCastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/vrcast/VrCastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VrCastCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$VrCastCallbackImpl;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-direct {p0}, Lcom/oculus/vrcast/VrCastController$VrCastCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;Lcom/oculus/horizon/service_media/vrcast/VrCastManager$1;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$VrCastCallbackImpl;-><init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V

    return-void
.end method


# virtual methods
.method public onBindServiceFailed()V
    .locals 3

    .prologue
    .line 157
    invoke-static {}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBindServiceFailed() called"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$VrCastCallbackImpl;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$1000(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Lbolts/TaskCompletionSource;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not connect to service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 159
    return-void
.end method

.method public onBindServiceSucceeded(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBindServiceSucceeded() called"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$VrCastCallbackImpl;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-static {v0, p1}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$900(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$VrCastCallbackImpl;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$1000(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Lbolts/TaskCompletionSource;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public onDeviceStateUpdated(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDeviceStateUpdated() called with: device: %s"

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$VrCastCallbackImpl;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-static {v0, p1}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$900(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)V

    .line 146
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDevicesFound(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$VrCastCallbackImpl;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$802(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    .line 136
    invoke-static {}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDevicesFound(), size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$VrCastCallbackImpl;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-static {v2}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$800(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public onError(ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Lcom/oculus/vrcast/VrCastController$VrCastCallback;->onError(ILandroid/os/Bundle;)V

    .line 169
    return-void
.end method

.method public onRemoteServiceDied()V
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRemoteServiceDied() called"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method
