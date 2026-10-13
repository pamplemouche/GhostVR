.class Lcom/oculus/ipc/common/ParcelableCallbackReceiver$1;
.super Landroid/os/ResultReceiver;
.source "ParcelableCallbackReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/ipc/common/ParcelableCallbackReceiver;-><init>(Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/ipc/common/ParcelableCallbackReceiver;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver$1;->this$0:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver$1;->this$0:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-static {v0}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->access$000(Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 51
    const-string v0, "extra_callback_receiver_result"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver$1;->this$0:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-static {v1}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->access$000(Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;->onResult(Ljava/lang/Object;)V

    .line 53
    return-void
.end method
