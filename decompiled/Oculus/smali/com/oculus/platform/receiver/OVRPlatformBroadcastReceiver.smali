.class public Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OVRPlatformBroadcastReceiver.java"


# static fields
.field public static final ASSET_FILE_DOWNLOAD_UPDATE:Ljava/lang/String; = "com.oculus.asset_file_download_update"

.field public static final DUMP_THREADS:Ljava/lang/String; = "com.oculus.dump_threads"

.field public static final GENERIC_DEEPLINK_RESULT:Ljava/lang/String; = "com.oculus.generic_deeplink_result"

.field public static final HORIZON_PERMISSION_STATUS_CHANGED:Ljava/lang/String; = "com.oculus.horizon_permission_change"

.field public static final IAP_SHELL_RESULT:Ljava/lang/String; = "com.oculus.iap_shell_result"

.field public static final INVITE_ACTION:Ljava/lang/String; = "com.oculus.invite_accepted"

.field public static final LAUNCH_INTENT_CHANGED:Ljava/lang/String; = "com.oculus.launch_intent_changed"

.field public static final LIVESTREAMING_STATUS_CHANGE:Ljava/lang/String; = "com.oculus.livestreaming_status_change"

.field public static final SHARE_TO_FACEBOOK_RESULT:Ljava/lang/String; = "com.oculus.share_to_facebook_result"

.field public static final SYSTEM_VOIP_STATE_ACTION:Ljava/lang/String; = "com.oculus.system_voip_state"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "com.oculus.invite_accepted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const-string v0, "ovr_room_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "ovr_room_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/oculus/platform/OVR;->nativeJoinRoomNotification(Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string v1, "com.oculus.system_voip_state"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    const-string/jumbo v0, "system_voip_state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string/jumbo v0, "system_voip_state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/oculus/platform/OVR;->nativeSystemVoipStateNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_2
    const-string v1, "com.oculus.livestreaming_status_change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/platform/OVRServiceManager;->getJsonStringFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/oculus/platform/OVR;->nativeLivestreamingStatusUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_3
    const-string v1, "com.oculus.horizon_permission_change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    const-string v0, "platform_request_id"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 46
    const-string v2, "permission_status"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v2}, Lcom/oculus/platform/OVR;->getPermissionHelper(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v0, v1, v2}, Lcom/oculus/platform/OVR;->nativeHorizonPermissionStatusUpdate(JLjava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_4
    const-string v1, "com.oculus.generic_deeplink_result"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 51
    const-string v0, "platform_message_type"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 52
    const-string v0, "platform_request_id"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 53
    const-string v0, "is_successful"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 54
    const-string/jumbo v0, "result_json"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    sget-object v6, Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v7, "Received generic deeplink result: messageType[0x%08X] requestID[%s] success[%s] resultJson[%s]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x1

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 62
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object v0, v8, v11

    .line 57
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eqz v5, :cond_6

    .line 65
    int-to-long v4, v1

    if-eqz v0, :cond_5

    :goto_1
    invoke-static {v4, v5, v2, v3, v0}, Lcom/oculus/platform/OVR;->nativeGenericDeeplinkResult(JJLjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, ""

    goto :goto_1

    .line 73
    :cond_6
    int-to-long v0, v1

    const-string v5, "Unexpected error"

    invoke-static/range {v0 .. v5}, Lcom/oculus/platform/OVR;->nativeGenericDeeplinkErrorResult(JJILjava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :cond_7
    const-string v1, "com.oculus.iap_shell_result"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 76
    const-string v0, "is_successful"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    const-string v1, "platform_request_id"

    invoke-virtual {p2, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 78
    const-string v1, "iap_shell_json"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v2, v3, v1, v0}, Lcom/oculus/platform/OVR;->nativeIAPResultFromShell(JLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 80
    :cond_8
    const-string v1, "com.oculus.share_to_facebook_result"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 81
    const-string/jumbo v0, "share_was_successful"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 82
    const-string/jumbo v1, "share_result_json"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "platform_request_id"

    invoke-virtual {p2, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 84
    invoke-static {v2, v3, v0, v1}, Lcom/oculus/platform/OVR;->nativeShareToFacebookResultFromShell(JZLjava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :cond_9
    const-string v1, "com.oculus.dump_threads"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 86
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 87
    sget-object v1, Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capturing thread dump for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {v0, v11}, Landroid/os/Process;->sendSignal(II)V

    goto/16 :goto_0

    .line 89
    :cond_a
    const-string v1, "com.oculus.asset_file_download_update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/platform/OVRServiceManager;->getJsonStringFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/oculus/platform/OVR;->nativeAssetFileDownloadUpdate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :cond_b
    const-string v1, "com.oculus.launch_intent_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 93
    const-string v0, "intent_cmd"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p2}, Lcom/oculus/platform/OVR;->setLatestIntentIfNotNull(Landroid/content/Intent;)V

    .line 95
    invoke-static {}, Lcom/oculus/platform/OVR;->nativeOnLaunchIntentChanged()V

    goto/16 :goto_0

    .line 99
    :cond_c
    sget-object v1, Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error logging unhandled broadcast action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
