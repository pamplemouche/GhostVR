.class Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "NotificationSurfaceBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->sendSurfaceToPanelService(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/view/Surface;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;

.field final synthetic val$height:I

.field final synthetic val$panelExtras:Landroid/os/Bundle;

.field final synthetic val$serviceClassName:Ljava/lang/String;

.field final synthetic val$servicePackageName:Ljava/lang/String;

.field final synthetic val$sharedMemoryFd:I

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;IIILandroid/view/Surface;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->this$0:Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;

    iput p2, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$sharedMemoryFd:I

    iput p3, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$width:I

    iput p4, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$height:I

    iput-object p5, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$surface:Landroid/view/Surface;

    iput-object p6, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$panelExtras:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$servicePackageName:Ljava/lang/String;

    iput-object p8, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$serviceClassName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 147
    :try_start_0
    invoke-static {v2, v0, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    :try_start_1
    iget v3, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$sharedMemoryFd:I

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "NotificationSurfaceBroadcastReceiver"

    const-string v5, "Failed to get ParcelFileDescriptor for shared mememory fd"

    .line 157
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v3, "panelWidth"

    .line 160
    iget v4, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$width:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "panelHeight"

    .line 161
    iget v4, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$height:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "sharedMemoryFd"

    .line 162
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "panelSurface"

    .line 163
    iget-object v3, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$surface:Landroid/view/Surface;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "panelBundle"

    .line 165
    iget-object v3, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$panelExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 169
    new-instance v1, Lcom/oculus/platform/OVRServiceSynchronous;

    iget-object v2, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->this$0:Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;

    .line 170
    invoke-static {v2}, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->access$000(Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$servicePackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;->val$serviceClassName:Ljava/lang/String;

    .line 173
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/oculus/platform/OVRServiceSynchronous;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 175
    invoke-virtual {v1}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v1

    .line 176
    iget v2, v1, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:I

    if-nez v2, :cond_0

    .line 178
    iget-object v1, v1, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_1

    :cond_0
    const-string v0, "NotificationSurfaceBroadcastReceiver"

    const-string v1, "couldn\'t find the address"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "NotificationSurfaceBroadcastReceiver"

    const-string v2, ""

    .line 189
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
