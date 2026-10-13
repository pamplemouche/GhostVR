.class Lcom/oculus/horizon/remotewipe/RemoteWipeService$3;
.super Lcom/oculus/os/IRemoteWipeCallback$Stub;
.source "RemoteWipeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/remotewipe/RemoteWipeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$3;->this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    invoke-direct {p0}, Lcom/oculus/os/IRemoteWipeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 218
    invoke-static {}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote wipe failed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$3;->this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    invoke-static {v0, p1}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$600(Lcom/oculus/horizon/remotewipe/RemoteWipeService;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$3;->this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    invoke-static {v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$500(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)Lcom/oculus/horizon/remotewipe/RemoteWipeMethods;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/remotewipe/RemoteWipeMethods;->notifyWipeComplete(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 211
    invoke-static {}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote wipe success!"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$3;->this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    invoke-static {v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$400(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v0

    const-string v1, "oculus_mobile_remote_wipe_success"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/logging/utils/Event;->logAndRelease()V

    .line 213
    iget-object v0, p0, Lcom/oculus/horizon/remotewipe/RemoteWipeService$3;->this$0:Lcom/oculus/horizon/remotewipe/RemoteWipeService;

    invoke-static {v0}, Lcom/oculus/horizon/remotewipe/RemoteWipeService;->access$500(Lcom/oculus/horizon/remotewipe/RemoteWipeService;)Lcom/oculus/horizon/remotewipe/RemoteWipeMethods;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/remotewipe/RemoteWipeMethods;->notifyWipeComplete(Ljava/lang/String;)V

    .line 214
    return-void
.end method
