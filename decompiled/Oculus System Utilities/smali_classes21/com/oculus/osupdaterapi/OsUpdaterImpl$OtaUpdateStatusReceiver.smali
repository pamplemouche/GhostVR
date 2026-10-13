.class Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OsUpdaterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/osupdaterapi/OsUpdaterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtaUpdateStatusReceiver"
.end annotation


# instance fields
.field private mProgressCallback:Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;

.field final synthetic this$0:Lcom/oculus/osupdaterapi/OsUpdaterImpl;


# direct methods
.method constructor <init>(Lcom/oculus/osupdaterapi/OsUpdaterImpl;Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;)V
    .locals 0
    .param p2, "progressCallback"    # Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;->this$0:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;->mProgressCallback:Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;

    .line 119
    return-void
.end method

.method private updateOtaDownloadProgress(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    const-string v4, "state"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "status":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 153
    :goto_1
    :pswitch_0
    return-void

    .line 123
    :sswitch_0
    const-string v5, "checking_for_updates"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string v5, "no_updates_available"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v5, "applying_update"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string v5, "waiting_for_reboot"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v5, "error_while_applying_update"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "error_while_checking_for_updates"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v4, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;->this$0:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    invoke-static {v4}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->access$100(Lcom/oculus/osupdaterapi/OsUpdaterImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    .line 130
    :pswitch_2
    const-string v4, "progress"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    .line 131
    .local v2, "progress":F
    iget-object v4, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;->mProgressCallback:Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;

    invoke-interface {v4, v2}, Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;->onProgress(F)V

    goto :goto_1

    .line 134
    .end local v2    # "progress":F
    :pswitch_3
    iget-object v4, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;->mProgressCallback:Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v4, v5}, Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;->onProgress(F)V

    .line 135
    iget-object v4, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;->mProgressCallback:Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;

    invoke-interface {v4}, Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;->onComplete()V

    .line 136
    iget-object v4, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;->this$0:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    invoke-static {v4}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->access$100(Lcom/oculus/osupdaterapi/OsUpdaterImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    .line 140
    :pswitch_4
    const-string v4, "error_details"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "error":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to download updates. State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Error Details: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0    # "error":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "errorMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;->mProgressCallback:Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;

    invoke-interface {v4, v1}, Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;->onError(Ljava/lang/String;)V

    .line 147
    iget-object v4, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;->this$0:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    invoke-static {v4}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->access$100(Lcom/oculus/osupdaterapi/OsUpdaterImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_1

    .line 123
    :sswitch_data_0
    .sparse-switch
        -0x5a052791 -> :sswitch_0
        -0xf0b1ef3 -> :sswitch_3
        -0x7e7124c -> :sswitch_2
        0x452de9af -> :sswitch_4
        0x5d73da96 -> :sswitch_1
        0x621b2154 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;->mProgressCallback:Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0, p2}, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;->updateOtaDownloadProgress(Landroid/content/Intent;)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Null ProgressCallback instance provided. Unregistering the Broadcast Receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;->this$0:Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    invoke-static {v0}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->access$100(Lcom/oculus/osupdaterapi/OsUpdaterImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
