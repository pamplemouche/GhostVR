.class Lcom/oculus/horizon/receivers/AUINotificationReceiver$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "AUINotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/receivers/AUINotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/parties/api/PartyJoinResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/receivers/AUINotificationReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/receivers/AUINotificationReceiver;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver$1;->this$0:Lcom/oculus/horizon/receivers/AUINotificationReceiver;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error ocurred when joining party: "

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    iget-object v0, p1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    .line 152
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_user_msg:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_user_title:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver$1;->this$0:Lcom/oculus/horizon/receivers/AUINotificationReceiver;

    invoke-static {v1}, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->access$200(Lcom/oculus/horizon/receivers/AUINotificationReceiver;)Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_user_title:Ljava/lang/String;

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_user_msg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->showVrOnlyNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/oculus/horizon/parties/api/PartyJoinResponse;)V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/receivers/AUINotificationReceiver$1;->this$0:Lcom/oculus/horizon/receivers/AUINotificationReceiver;

    invoke-static {v0}, Lcom/oculus/horizon/receivers/AUINotificationReceiver;->access$000(Lcom/oculus/horizon/receivers/AUINotificationReceiver;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/horizon/parties/api/PartyJoinResponse;->party:Lcom/oculus/horizon/api/common/Party;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Party;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->startPartyChat(J)Landroid/os/Bundle;

    .line 138
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 134
    check-cast p1, Lcom/oculus/horizon/parties/api/PartyJoinResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/receivers/AUINotificationReceiver$1;->onResponse(Lcom/oculus/horizon/parties/api/PartyJoinResponse;)V

    return-void
.end method
