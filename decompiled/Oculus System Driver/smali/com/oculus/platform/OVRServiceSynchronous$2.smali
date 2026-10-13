.class Lcom/oculus/platform/OVRServiceSynchronous$2;
.super Ljava/lang/Object;
.source "OVRServiceSynchronous.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceSynchronous;->connect()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceSynchronous;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceSynchronous;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$2;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 124
    invoke-static {}, Lcom/oculus/platform/OVRServiceSynchronous;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Service connected."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$2;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/oculus/platform/OVRServiceSynchronous;->access$202(Lcom/oculus/platform/OVRServiceSynchronous;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 126
    iget-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$2;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    sget-object p2, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    invoke-static {p1, p2}, Lcom/oculus/platform/OVRServiceSynchronous;->access$300(Lcom/oculus/platform/OVRServiceSynchronous;Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 131
    invoke-static {}, Lcom/oculus/platform/OVRServiceSynchronous;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Service disconnected."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$2;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oculus/platform/OVRServiceSynchronous;->access$202(Lcom/oculus/platform/OVRServiceSynchronous;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 133
    iget-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$2;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    invoke-static {p1, v0}, Lcom/oculus/platform/OVRServiceSynchronous;->access$300(Lcom/oculus/platform/OVRServiceSynchronous;Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    return-void
.end method
