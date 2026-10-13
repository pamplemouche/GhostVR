.class Lcom/oculus/horizon/service_media/vrcast/VrCastManager$5;
.super Ljava/lang/Object;
.source "VrCastManager.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->onDiscoverTimeout()V
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
    .line 223
    iput-object p1, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$5;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

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
    .line 223
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$5;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
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
    .line 226
    invoke-static {}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calling stopDiscovery() because of discover timeout"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager$5;->this$0:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->access$500(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)Lcom/oculus/vrcast/VrCastController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrcast/VrCastController;->stopDiscovery()V

    .line 228
    const/4 v0, 0x0

    return-object v0
.end method
