.class Lcom/oculus/horizon/service_media/vrcast/VrCastManager$3;
.super Ljava/lang/Object;
.source "VrCastManager.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->stopCast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$3;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$3;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$3;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$600(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCast(), current casting device is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$3;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-static {v2}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$700(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$3;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$500(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Lcom/oculus/vrcast/VrCastController;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$3;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$700(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/vrcast/VrCastController;->stopCast(Ljava/lang/String;)V

    .line 102
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    invoke-static {}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No vrcast device to stop"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
