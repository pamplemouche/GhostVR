.class Lcom/oculus/horizon/bluetooth/UpdateService$2;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/UpdateService;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/UpdateService;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/UpdateService$2;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService$2;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->access$400(Lcom/oculus/horizon/bluetooth/UpdateService;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService$2;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    sget-object v1, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->UNABLE_TO_VERIFY:Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    invoke-static {v0, v1}, Lcom/oculus/horizon/bluetooth/UpdateService;->access$500(Lcom/oculus/horizon/bluetooth/UpdateService;Lcom/oculus/horizon/bluetooth/UpdateService$Reason;)V

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService$2;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService$2;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    invoke-static {v1}, Lcom/oculus/horizon/bluetooth/UpdateService;->access$400(Lcom/oculus/horizon/bluetooth/UpdateService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/bluetooth/UpdateService;->access$402(Lcom/oculus/horizon/bluetooth/UpdateService;I)I

    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService$2;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/UpdateService;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService$2;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/UpdateService$2;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    .line 141
    invoke-static {v2}, Lcom/oculus/horizon/bluetooth/UpdateService;->access$600(Lcom/oculus/horizon/bluetooth/UpdateService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/samsung/GearVRInputService;->sendBroadcastGetFirmwareVersion(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService$2;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->access$900(Lcom/oculus/horizon/bluetooth/UpdateService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService$2;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    invoke-static {v1}, Lcom/oculus/horizon/bluetooth/UpdateService;->access$700(Lcom/oculus/horizon/bluetooth/UpdateService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/oculus/horizon/bluetooth/UpdateService;->access$800()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
