.class Lcom/oculus/horizon/bluetooth/UpdatePresenter$1;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "UpdatePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/UpdatePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/UpdatePresenter;


# direct methods
.method varargs constructor <init>(Lcom/oculus/horizon/bluetooth/UpdatePresenter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/UpdatePresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-direct {p0, p2}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "CHECK_FOR_UPDATE_FAILED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdatePresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-static {v0, v2}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->access$000(Lcom/oculus/horizon/bluetooth/UpdatePresenter;I)V

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdatePresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-static {v0, v2, v2}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->access$100(Lcom/oculus/horizon/bluetooth/UpdatePresenter;II)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v1, "CHECK_FOR_UPDATE_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    const-string v0, "is_update_available"

    .line 105
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    const-string v1, "deviceVersion"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v2, "updateVersion"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    iget-object v3, p0, Lcom/oculus/horizon/bluetooth/UpdatePresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-virtual {v3, v0, v1, v2}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->onCheckForUpdateComplete(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    const-string v1, "CONNECTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const-string v1, "CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const-string v1, "DOWNLOADING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    const-string v0, "progress"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdatePresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->access$100(Lcom/oculus/horizon/bluetooth/UpdatePresenter;II)V

    goto :goto_0

    .line 116
    :cond_3
    const-string v1, "DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdatePresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    const/4 v1, 0x5

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->access$100(Lcom/oculus/horizon/bluetooth/UpdatePresenter;II)V

    goto :goto_0

    .line 118
    :cond_4
    const-string v1, "UPDATE_FAILED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdatePresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->access$000(Lcom/oculus/horizon/bluetooth/UpdatePresenter;I)V

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdatePresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-static {v0, v3, v2}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->access$100(Lcom/oculus/horizon/bluetooth/UpdatePresenter;II)V

    goto :goto_0

    .line 121
    :cond_5
    const-string v1, "UPDATE_CANCELED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdatePresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-static {v0, v3, v2}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->access$100(Lcom/oculus/horizon/bluetooth/UpdatePresenter;II)V

    goto :goto_0

    .line 123
    :cond_6
    const-string v1, "UPDATE_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdatePresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    const/4 v1, 0x6

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->access$100(Lcom/oculus/horizon/bluetooth/UpdatePresenter;II)V

    goto/16 :goto_0
.end method
