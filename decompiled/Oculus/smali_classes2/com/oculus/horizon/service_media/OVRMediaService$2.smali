.class Lcom/oculus/horizon/service_media/OVRMediaService$2;
.super Lcom/oculus/aidl/OVRMediaServiceInterface$Stub;
.source "OVRMediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/OVRMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/OVRMediaService;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service_media/OVRMediaService;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-direct {p0}, Lcom/oculus/aidl/OVRMediaServiceInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCommandToMediaService(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->ensureInitialized()V

    .line 101
    :try_start_0
    const-string v1, "message_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v2}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$200(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 108
    iget-object v3, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v3}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isApplicationAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const-string v3, "start_streaming"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->createFacebookLivestreamingManager()V

    .line 114
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleLivestreamingStartEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_2
    const-string v3, "start_party_video_streaming"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->createPartyVideoStreamingManager()V

    .line 117
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleLivestreamingStartEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_3
    const-string v3, "pause_streaming"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStreamAndCastPauseEvent(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_4
    const-string v3, "resume_streaming"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 121
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStreamAndCastResumeEvent(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_5
    const-string v2, "stop_streaming"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "stop_party_video_streaming"

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 125
    :cond_6
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStopLivestreamingEvent()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 126
    :cond_7
    const-string v2, "update_microphone_status"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 128
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleLivestreamingMicStateFromBundle(Landroid/os/Bundle;)V

    .line 129
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    .line 130
    :cond_8
    const-string v2, "update_comments_visibility"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 132
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleUpdateLSCommentVisibilityEvent(Landroid/os/Bundle;)V

    .line 133
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->getLivestreamingStatusBundle()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 134
    :cond_9
    const-string v2, "get_streaming_status"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 135
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->getLivestreamingStatusBundle()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 136
    :cond_a
    const-string v2, "is_streaming_enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 137
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleCheckLivestreamingCapabilityEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :cond_b
    const-string v2, "permission_status"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 139
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    const-string v2, "android.permission.RECORD_AUDIO"

    .line 140
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 142
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 143
    const-string v3, "permission_status"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v1

    .line 144
    goto/16 :goto_0

    .line 145
    :cond_c
    const-string v2, "broadcast_surface"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 146
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleBroadcastSurfaceMessage(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 147
    :cond_d
    const-string v2, "broadcast_abuse_capture_start"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 148
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startAbuseCapture()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 149
    :cond_e
    const-string v2, "broadcast_abuse_capture_cancel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 150
    invoke-static {p1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$300(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v2}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->cancelAbuseCapture(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :cond_f
    const-string v2, "broadcast_abuse_capture_stop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 153
    invoke-static {p1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$300(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v2}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopAbuseCapture(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 155
    :cond_10
    const-string v2, "broadcast_party_chat_local_state"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 157
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->broadcastPartyChatLocalState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    invoke-static {}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OVRMediaService throws Exception: "

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 160
    :cond_11
    :try_start_1
    invoke-static {}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Received unknown message type: %s "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public sendLivestreamingRawPCMData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService$2;->this$0:Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/OVRMediaService;->access$100(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/AppSwitchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service_media/AppSwitchManager;->handleLivestreamingRawPCM(Landroid/os/Bundle;)V

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method
