.class Lcom/oculus/platform/OVRServiceSynchronous$2;
.super Ljava/lang/Object;
.source "OVRServiceSynchronous.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceSynchronous;->connect()Z
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
    .param p1, "this$0"    # Lcom/oculus/platform/OVRServiceSynchronous;

    .prologue
    .line 161
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous$2;, "Lcom/oculus/platform/OVRServiceSynchronous$2;"
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$2;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 164
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous$2;, "Lcom/oculus/platform/OVRServiceSynchronous$2;"
    invoke-static {}, Lcom/oculus/platform/OVRServiceSynchronous;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service connected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceSynchronous$2;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous$2;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous;->mAidlService:Lcom/oculus/platform/OVRServiceSynchronous$AidlService;

    invoke-interface {v0, p2}, Lcom/oculus/platform/OVRServiceSynchronous$AidlService;->serviceFromBinder(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    invoke-static {v1, v0}, Lcom/oculus/platform/OVRServiceSynchronous;->access$202(Lcom/oculus/platform/OVRServiceSynchronous;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 166
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous$2;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/oculus/platform/OVRServiceSynchronous;->access$302(Lcom/oculus/platform/OVRServiceSynchronous;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 167
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous$2;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    invoke-static {v0, v1}, Lcom/oculus/platform/OVRServiceSynchronous;->access$400(Lcom/oculus/platform/OVRServiceSynchronous;Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    .line 168
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 172
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous$2;, "Lcom/oculus/platform/OVRServiceSynchronous$2;"
    invoke-static {}, Lcom/oculus/platform/OVRServiceSynchronous;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous$2;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/platform/OVRServiceSynchronous;->access$202(Lcom/oculus/platform/OVRServiceSynchronous;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 174
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous$2;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    sget-object v1, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->NOT_CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    invoke-static {v0, v1}, Lcom/oculus/platform/OVRServiceSynchronous;->access$400(Lcom/oculus/platform/OVRServiceSynchronous;Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V

    .line 175
    return-void
.end method
