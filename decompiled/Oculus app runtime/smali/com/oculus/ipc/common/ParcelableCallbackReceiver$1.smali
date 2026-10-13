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

    .line 47
    iput-object p1, p0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver$1;->this$0:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver$1;->this$0:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-static {p1}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->access$000(Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p1, "extra_callback_receiver_result"

    .line 51
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver$1;->this$0:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-static {p2}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->access$000(Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
