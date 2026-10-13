.class Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver$1;
.super Ljava/lang/Object;
.source "VrRuntimeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver;Ljava/lang/String;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver$1;->this$1:Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver;

    iput-object p2, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver$1;->val$action:Ljava/lang/String;

    const-string v1, "com.oculus.vrruntimeservice.UPDATE_HMDMESH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$900()V

    goto :goto_0

    :cond_0
    const-string v0, "VrRuntimeService"

    const-string v1, "Invalid intent action"

    .line 394
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
