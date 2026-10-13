.class public Lcom/oculus/platform/OVR;
.super Ljava/lang/Object;
.source "OVR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/platform/OVR$InitWebRTCCallable;,
        Lcom/oculus/platform/OVR$GetLoggedInUserCallable;
    }
.end annotation


# static fields
.field private static final EXTRA_HOME_ENTITLEMENT_FAIL_DETAIL:Ljava/lang/String; = "extra_home_entitlement_fail_detail"

.field private static final EXTRA_HOME_ENTITLEMENT_FAIL_PACKAGE:Ljava/lang/String; = "extra_home_entitlement_fail_package"

.field private static final FEATURE_STANDALONE_VR:Ljava/lang/String; = "oculus.hardware.standalone_vr"

.field public static final GENERIC_RESULT_KEY:Ljava/lang/String; = "result_json"

.field public static final GENERIC_SUCCESS_KEY:Ljava/lang/String; = "is_successful"

.field public static final HORIZON_PERM_STATUS:Ljava/lang/String; = "permission_status"

.field public static final IAP_SHELL_RESULT:Ljava/lang/String; = "iap_shell_json"

.field public static final IAP_SUCCESS_KEY:Ljava/lang/String; = "is_successful"

.field public static final INTENT_KEY_CMD:Ljava/lang/String; = "intent_cmd"

.field public static final MESSAGE_TYPE_KEY:Ljava/lang/String; = "platform_message_type"

.field public static final REQUEST_ID_KEY:Ljava/lang/String; = "platform_request_id"

.field public static final ROOM_ID_KEY:Ljava/lang/String; = "ovr_room_id"

.field public static final SERVICE_COMPONENT:Ljava/lang/String; = "com.oculus.horizon.service.OVRService"

.field public static final SERVICE_PACKAGE:Ljava/lang/String; = "com.oculus.horizon"

.field public static final SHARE_RESULT_KEY:Ljava/lang/String; = "share_result_json"

.field public static final SHARE_SUCCESS_KEY:Ljava/lang/String; = "share_was_successful"

.field public static final SOCIAL_LAUNCH_KEY:Ljava/lang/String; = "ovr_social_launch"

.field public static final SYSTEM_VOIP_STATE_KEY:Ljava/lang/String; = "system_voip_state"

.field private static final TAG:Ljava/lang/String;

.field private static mLatestIntent:Landroid/content/Intent;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mHasRegisteredReceiver:Z

.field private mIsStandalone:Z

.field private mNullableActivity:Landroid/app/Activity;

.field private mPlatformReceiver:Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;

.field private mProfile:Lcom/oculus/platform/OVRProfile;

.field private mReturnComponent:Landroid/content/ComponentName;

.field private mServiceManager:Lcom/oculus/platform/OVRServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/oculus/platform/OVR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/platform/OVR;->TAG:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/platform/OVR;->mLatestIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v0, p0, Lcom/oculus/platform/OVR;->mHasRegisteredReceiver:Z

    .line 121
    iput-boolean v0, p0, Lcom/oculus/platform/OVR;->mIsStandalone:Z

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/platform/OVR;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oculus/platform/OVR;->checkForRoomInvites(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/platform/OVR;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/oculus/platform/OVR;->mHasRegisteredReceiver:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oculus/platform/OVR;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/oculus/platform/OVR;->mHasRegisteredReceiver:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oculus/platform/OVR;)Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mPlatformReceiver:Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/oculus/platform/OVR;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/platform/OVR;)Lcom/oculus/platform/OVRProfile;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mProfile:Lcom/oculus/platform/OVRProfile;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oculus/platform/OVR;Lcom/oculus/platform/OVRProfile;)Lcom/oculus/platform/OVRProfile;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/oculus/platform/OVR;->mProfile:Lcom/oculus/platform/OVRProfile;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oculus/platform/OVR;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private assertIsInitialized()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call initialize() before you can request data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mProfile:Lcom/oculus/platform/OVRProfile;

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nobody is logged in!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_1
    return-void
.end method

.method private checkForRoomInvites(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 235
    if-nez p1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 238
    const-string v1, "ovr_room_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const-string v1, "ovr_room_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v1}, Lcom/oculus/platform/OVR;->nativeJoinRoomNotification(Ljava/lang/String;)V

    .line 243
    const-string v1, "ovr_room_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getLatestIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/oculus/platform/OVR;->mLatestIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static getPermissionHelper(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 1045
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1047
    :try_start_0
    const-string v0, "permission_grant_status"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1048
    const-string v0, "has_permission"

    const-string v2, "granted"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :goto_0
    return-object v1

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    sget-object v2, Lcom/oculus/platform/OVR;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getPermissionInfoFromCursor(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.oculus.horizon.platformsdk/query?request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1059
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1058
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1066
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1067
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1082
    if-eqz v1, :cond_1

    .line 1083
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1079
    :cond_1
    :goto_0
    return-object v0

    .line 1070
    :cond_2
    :try_start_2
    const-string v0, "permission_status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1071
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1072
    invoke-static {v0}, Lcom/oculus/platform/OVR;->getPermissionHelper(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 1082
    if-eqz v1, :cond_1

    .line 1083
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1073
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 1078
    :goto_1
    :try_start_3
    sget-object v2, Lcom/oculus/platform/OVR;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1079
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1082
    if-eqz v1, :cond_1

    .line 1083
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1082
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_3

    .line 1083
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1085
    :cond_3
    throw v0

    .line 1082
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1073
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private launchHorizonPermissionHelper(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 1019
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.horizon.vr_permission.GET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1020
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1021
    const-string/jumbo v1, "requested_permission"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    const-string v1, "platform_request_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1023
    iget-object v1, p0, Lcom/oculus/platform/OVR;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1024
    return-void
.end method

.method public static native nativeAssetFileDownloadUpdate(Ljava/lang/String;)V
.end method

.method public static native nativeGenericDeeplinkErrorResult(JJILjava/lang/String;)V
.end method

.method public static native nativeGenericDeeplinkResult(JJLjava/lang/String;)V
.end method

.method public static native nativeHorizonPermissionStatusUpdate(JLjava/lang/String;)V
.end method

.method public static native nativeHttpClientRelease(J)V
.end method

.method public static native nativeHttpError(ILjava/lang/String;J)V
.end method

.method public static native nativeHttpSuccess(Ljava/lang/String;J)V
.end method

.method public static native nativeIAPResultFromShell(JLjava/lang/String;Z)V
.end method

.method public static native nativeJoinRoomNotification(Ljava/lang/String;)V
.end method

.method public static native nativeLivestreamingStatusUpdate(Ljava/lang/String;)V
.end method

.method public static native nativeOnLaunchIntentChanged()V
.end method

.method public static native nativeSetAndroidObjects(Landroid/content/Context;)V
.end method

.method public static native nativeShareToFacebookResultFromShell(JZLjava/lang/String;)V
.end method

.method public static native nativeSystemVoipStateNotification(Ljava/lang/String;)V
.end method

.method public static native nativeWriteFileToSharedMemory(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method private registerLifeCycleCallback(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/oculus/platform/OVR$1;

    invoke-direct {v1, p0}, Lcom/oculus/platform/OVR$1;-><init>(Lcom/oculus/platform/OVR;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 281
    return-void
.end method

.method public static setLatestIntentIfNotNull(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 193
    if-eqz p0, :cond_0

    .line 194
    sput-object p0, Lcom/oculus/platform/OVR;->mLatestIntent:Landroid/content/Intent;

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastLivestreamingSurface(Ljava/lang/String;Landroid/view/Surface;I)V
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 422
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/platform/OVRServiceManager;->broadcastLivestreamingSurface(Ljava/lang/String;Landroid/view/Surface;I)V

    .line 423
    return-void
.end method

.method public broadcastPartyChatLocalState(III)V
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 427
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/platform/OVRServiceManager;->broadcastPartyChatLocalState(III)V

    .line 428
    return-void
.end method

.method public getHorizonMicrophonePermission()Z
    .locals 2

    .prologue
    .line 1027
    const-string v0, "microphone_permission"

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVR;->getPermissionInfoFromCursor(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "has_permission"

    .line 1028
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1027
    return v0
.end method

.method public getHorizonMicrophonePermissionJSON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1037
    const-string v0, "microphone_permission"

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVR;->getPermissionInfoFromCursor(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHorizonWriteStoragePermission()Z
    .locals 2

    .prologue
    .line 1032
    const-string/jumbo v0, "write_storage_permission"

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVR;->getPermissionInfoFromCursor(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "has_permission"

    .line 1033
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1032
    return v0
.end method

.method public getHorizonWriteStoragePermissionJSON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1041
    const-string/jumbo v0, "write_storage_permission"

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVR;->getPermissionInfoFromCursor(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalMicPermissionGranted()Z
    .locals 1

    .prologue
    .line 1090
    invoke-static {}, Lcom/oculus/platform/OVRMicrophone;->checkMicPermission()Z

    move-result v0

    return v0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/oculus/platform/OVR;->mIsStandalone:Z

    return v0
.end method

.method public launchHorizonMicrophonePermissionDeeplink(J)V
    .locals 1

    .prologue
    .line 1011
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-direct {p0, v0, p1, p2}, Lcom/oculus/platform/OVR;->launchHorizonPermissionHelper(Ljava/lang/String;J)V

    .line 1012
    return-void
.end method

.method public launchHorizonWriteStoragePermissionDeeplink(J)V
    .locals 1

    .prologue
    .line 1015
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v0, p1, p2}, Lcom/oculus/platform/OVR;->launchHorizonPermissionHelper(Ljava/lang/String;J)V

    .line 1016
    return-void
.end method

.method public nativeAssetFileDeleteById(JJJ)V
    .locals 3

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 530
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/platform/OVRServiceManager;->assetFileDeleteById(JLcom/oculus/platform/callback/OVRStringCallback;)V

    .line 533
    return-void
.end method

.method public nativeAssetFileDeleteByName(Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 586
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/platform/OVRServiceManager;->assetFileDeleteByName(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 589
    return-void
.end method

.method public nativeAssetFileDownloadById(JJJ)V
    .locals 3

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 502
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/platform/OVRServiceManager;->assetFileDownloadById(JLcom/oculus/platform/callback/OVRStringCallback;)V

    .line 505
    return-void
.end method

.method public nativeAssetFileDownloadByName(Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 558
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/platform/OVRServiceManager;->assetFileDownloadByName(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 561
    return-void
.end method

.method public nativeAssetFileDownloadCancelById(JJJ)V
    .locals 3

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 516
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/platform/OVRServiceManager;->assetFileDownloadCancelById(JLcom/oculus/platform/callback/OVRStringCallback;)V

    .line 519
    return-void
.end method

.method public nativeAssetFileDownloadCancelByName(Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 572
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/platform/OVRServiceManager;->assetFileDownloadCancelByName(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 575
    return-void
.end method

.method public nativeAssetFileList(JJ)V
    .locals 3

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 613
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->assetFileList(Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 615
    return-void
.end method

.method public nativeAssetFileStatusById(JJJ)V
    .locals 3

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 544
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/platform/OVRServiceManager;->assetFileStatusById(JLcom/oculus/platform/callback/OVRStringCallback;)V

    .line 547
    return-void
.end method

.method public nativeAssetFileStatusByName(Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 600
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/platform/OVRServiceManager;->assetFileStatusByName(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 603
    return-void
.end method

.method public nativeCancelRecordingForUserReportFlow(Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 928
    sget-object v0, Lcom/oculus/platform/OVR;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbuseCapture: nativeCancelRecordingForUserReportFlow, uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/platform/OVRServiceManager;->cancelRecording(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 934
    return-void
.end method

.method public nativeCheckForRoomInvites()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mNullableActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/oculus/platform/OVR;->checkForRoomInvites(Landroid/app/Activity;)V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/platform/OVR;->mNullableActivity:Landroid/app/Activity;

    .line 232
    return-void
.end method

.method public nativeCloudStorage2GetUserDirectoryPathMethodID(JJ)V
    .locals 3

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 645
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->getCloudStorage2UserDirectoryPath(Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 647
    return-void
.end method

.method public nativeGetAccessTokenSync()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 327
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->getAccessTokenSync()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetBaselineGraphURLSync()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 322
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->getBaselineGraphURLSync()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetCurrentAppVersion()I
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 336
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->getCurrentAppVersion()I

    move-result v0

    return v0
.end method

.method public nativeGetCurrentMapUuidMethodID(JJ)V
    .locals 3

    .prologue
    .line 1137
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 1139
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->getCurrentMapUuid(Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 1141
    return-void
.end method

.method public nativeGetEntitlementCheckBundleSync()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 317
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->getEntitlementCheckBundleSync()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetFBNSCredentialsSync()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 295
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVR;->mProfile:Lcom/oculus/platform/OVRProfile;

    iget-object v1, v1, Lcom/oculus/platform/OVRProfile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->getFBNSCredentialsSync(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetInstalledApplicationsJSONSync()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 355
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->getInstalledApplicationsJSONSync()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetLatestAppVersionInformation()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 345
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->getLatestAvailableAppInformation()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetLaunchDetails(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 207
    check-cast p1, Landroid/app/Activity;

    .line 208
    invoke-static {}, Lcom/oculus/platform/OVR;->getLatestIntent()Landroid/content/Intent;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    .line 210
    :goto_0
    const-string v1, "intent_cmd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const-string v1, "intent_cmd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v1, "ovr_social_launch"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const-string v1, "ovr_social_launch"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :goto_1
    return-object v0

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 221
    :cond_1
    const-string v1, "ovr_room_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    const-string v1, "ovr_room_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\"type\":\"INVITE\",\"room_id\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 226
    :cond_2
    const-string/jumbo v0, "{\"type\":\"NORMAL\"}"

    goto :goto_1
.end method

.method public nativeGetLinkedAccounts(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 991
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mApplicationContext:Landroid/content/Context;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 995
    invoke-static {v0, v1}, Lcom/oculus/platform/LinkedAccountsHelper;->queryLinkedAccounts(Landroid/content/Context;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    .line 998
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 999
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1001
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1002
    const-string v2, "linked_accounts"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    :goto_0
    return-object v0

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public nativeGetLivestreamingStatus(JJ)V
    .locals 3

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 670
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->getLivestreamingStatus(Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 672
    return-void
.end method

.method public nativeGetLoggedInUser()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 961
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 963
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mProfile:Lcom/oculus/platform/OVRProfile;

    iget-object v0, v0, Lcom/oculus/platform/OVRProfile;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/platform/OVR;->mProfile:Lcom/oculus/platform/OVRProfile;

    iget-object v0, v0, Lcom/oculus/platform/OVRProfile;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 964
    sget-object v0, Lcom/oculus/platform/util/OVRError;->AUTHENTICATION_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0}, Lcom/oculus/platform/util/Util;->makeErrorResult(Lcom/oculus/platform/util/OVRError;)Landroid/os/Bundle;

    move-result-object v0

    .line 978
    :goto_0
    return-object v0

    .line 968
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 969
    const-string v0, "alias"

    iget-object v2, p0, Lcom/oculus/platform/OVR;->mProfile:Lcom/oculus/platform/OVRProfile;

    iget-object v2, v2, Lcom/oculus/platform/OVRProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 970
    const-string v0, "id"

    iget-object v2, p0, Lcom/oculus/platform/OVR;->mProfile:Lcom/oculus/platform/OVRProfile;

    iget-object v2, v2, Lcom/oculus/platform/OVRProfile;->id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 971
    const-string v0, "profile_url"

    iget-object v2, p0, Lcom/oculus/platform/OVR;->mProfile:Lcom/oculus/platform/OVRProfile;

    iget-object v2, v2, Lcom/oculus/platform/OVRProfile;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 973
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 974
    const-string v2, "profile_json"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 977
    :catch_0
    move-exception v0

    .line 978
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public nativeGetPackageName()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 312
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->getPackageName()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetSharedMicrophoneData(JI)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 437
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/platform/OVRServiceManager;->getSharedMicrophoneData(JI)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetSystemVoipDataSync(Z)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 382
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1}, Lcom/oculus/platform/OVRServiceManager;->getSystemVoipDataSync(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetSystemVoipMicrophoneMuted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 417
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->getSystemVoipMicrophoneMutedSync()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetSystemVoipPassthrough()Z
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 407
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->getSystemVoipPassthroughSync()Z

    move-result v0

    return v0
.end method

.method public nativeGetSystemVoipStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 412
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->getSystemVoipStatusSync()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetUserAgentSync()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 350
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->getUserAgentSync()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeGetViewerPurchasesDurableCacheJSON()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 983
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 984
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->getViewerPurchasesDurableCacheJSONSync()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeInitialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mProfile:Lcom/oculus/platform/OVRProfile;

    iget-object v0, v0, Lcom/oculus/platform/OVRProfile;->id:Ljava/lang/String;

    .line 184
    :goto_0
    return-object v0

    .line 138
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/platform/OVR;->mApplicationContext:Landroid/content/Context;

    .line 140
    new-instance v0, Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVR;->mApplicationContext:Landroid/content/Context;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oculus/platform/OVRServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    .line 141
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->connectOVRServiceInBackground()V

    .line 143
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 144
    new-instance v1, Lcom/oculus/platform/OVR$GetLoggedInUserCallable;

    invoke-direct {v1, p0, p2}, Lcom/oculus/platform/OVR$GetLoggedInUserCallable;-><init>(Lcom/oculus/platform/OVR;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 145
    new-instance v2, Lcom/oculus/platform/OVR$InitWebRTCCallable;

    invoke-direct {v2, p1}, Lcom/oculus/platform/OVR$InitWebRTCCallable;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "oculus.hardware.standalone_vr"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/platform/OVR;->mIsStandalone:Z

    .line 150
    new-instance v0, Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;

    invoke-direct {v0}, Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/oculus/platform/OVR;->mPlatformReceiver:Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.oculus.invite_accepted"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    const-string v3, "com.oculus.system_voip_state"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v3, "com.oculus.livestreaming_status_change"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v3, "com.oculus.horizon_permission_change"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v3, "com.oculus.generic_deeplink_result"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v3, "com.oculus.iap_shell_result"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v3, "com.oculus.share_to_facebook_result"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v3, "com.oculus.dump_threads"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v3, "com.oculus.asset_file_download_update"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v3, "com.oculus.launch_intent_changed"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/oculus/platform/OVR;->mApplicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oculus/platform/OVR;->mPlatformReceiver:Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/platform/OVR;->mHasRegisteredReceiver:Z

    .line 163
    sget-object v0, Lcom/oculus/platform/OVR;->TAG:Ljava/lang/String;

    const-string v3, "Registered OVRPlatformBroadcastReceiver"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 166
    check-cast p1, Landroid/app/Activity;

    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/platform/OVR;->mReturnComponent:Landroid/content/ComponentName;

    .line 168
    invoke-direct {p0, p1}, Lcom/oculus/platform/OVR;->registerLifeCycleCallback(Landroid/app/Activity;)V

    .line 169
    iput-object p1, p0, Lcom/oculus/platform/OVR;->mNullableActivity:Landroid/app/Activity;

    .line 176
    :goto_1
    sget-object v3, Lcom/oculus/platform/OVR;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initialized OVRPlatform with returnComponent "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/oculus/platform/OVR;->mReturnComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/platform/OVR;->mReturnComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 181
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 170
    :cond_1
    instance-of v0, p1, Landroid/app/Service;

    if-eqz v0, :cond_2

    .line 171
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/oculus/platform/OVR;->mReturnComponent:Landroid/content/ComponentName;

    goto :goto_1

    .line 173
    :cond_2
    sget-object v0, Lcom/oculus/platform/OVR;->TAG:Ljava/lang/String;

    const-string v3, "OVRPlatform is in limited mode. Some features won\'t work. You likely want to init with an Activity."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    :cond_3
    const-string v0, "(null)"

    goto :goto_2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    sget-object v1, Lcom/oculus/platform/OVR;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public nativeLanguagePackGetCurrent(JJ)V
    .locals 3

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 622
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->languagePackGetCurrent(Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 624
    return-void
.end method

.method public nativeLanguagePackSetCurrent(Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 632
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/platform/OVRServiceManager;->languagePackSetCurrent(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 635
    return-void
.end method

.method public nativeLaunchCheckoutFlow(Ljava/lang/String;JJJ)V
    .locals 6

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 472
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v4, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v4, p4, p5, p6, p7}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    iget-object v5, p0, Lcom/oculus/platform/OVR;->mReturnComponent:Landroid/content/ComponentName;

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/platform/OVRServiceManager;->launchIAPCheckoutFlow(Ljava/lang/String;JLcom/oculus/platform/callback/OVRStringCallback;Landroid/content/ComponentName;)V

    .line 477
    return-void
.end method

.method public nativeLaunchInvitableUsersFlow(JJJ)V
    .locals 3

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 488
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/platform/OVRServiceManager;->launchInvitableUsersFlow(JLcom/oculus/platform/callback/OVRStringCallback;)V

    .line 491
    return-void
.end method

.method public nativeLaunchOtherApp(JLjava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 1122
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 1123
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p4, p5, p6, p7}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/oculus/platform/OVRServiceManager;->launchOtherApp(JLjava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 1127
    return-void
.end method

.method public nativeLaunchUserBlockFlow(JIJJJ)V
    .locals 12

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 834
    iget-object v4, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v10, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    move-wide/from16 v0, p6

    move-wide/from16 v2, p8

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;-><init>(JJ)V

    iget-object v11, p0, Lcom/oculus/platform/OVR;->mReturnComponent:Landroid/content/ComponentName;

    move-wide v5, p1

    move v7, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Lcom/oculus/platform/OVRServiceManager;->launchUserBlockFlow(JIJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V

    .line 840
    return-void
.end method

.method public nativeLaunchUserFriendRequestFlow(JIJJJ)V
    .locals 12

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 899
    iget-object v4, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v10, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    move-wide/from16 v0, p6

    move-wide/from16 v2, p8

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;-><init>(JJ)V

    iget-object v11, p0, Lcom/oculus/platform/OVR;->mReturnComponent:Landroid/content/ComponentName;

    move-wide v5, p1

    move v7, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Lcom/oculus/platform/OVRServiceManager;->launchUserFriendRequestFlow(JIJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V

    .line 905
    return-void
.end method

.method public nativeLaunchUserProfile(JIJJJ)V
    .locals 12

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 791
    iget-object v4, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v10, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    move-wide/from16 v0, p6

    move-wide/from16 v2, p8

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;-><init>(JJ)V

    iget-object v11, p0, Lcom/oculus/platform/OVR;->mReturnComponent:Landroid/content/ComponentName;

    move-wide v5, p1

    move v7, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Lcom/oculus/platform/OVRServiceManager;->launchUserProfile(JIJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V

    .line 797
    return-void
.end method

.method public nativeLaunchUserReportFlow(JLjava/lang/String;ZIJJJ)V
    .locals 16

    .prologue
    .line 874
    invoke-direct/range {p0 .. p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 876
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    const/4 v10, 0x0

    new-instance v13, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    move-wide/from16 v0, p8

    move-wide/from16 v2, p10

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;-><init>(JJ)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oculus/platform/OVR;->mReturnComponent:Landroid/content/ComponentName;

    move-wide/from16 v5, p1

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v14}, Lcom/oculus/platform/OVRServiceManager;->launchUserReportFlow(JIJLjava/lang/String;Ljava/lang/String;ZLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V

    .line 885
    return-void
.end method

.method public nativeLaunchUserUnblockFlow(JIJJJ)V
    .locals 12

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 854
    iget-object v4, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v10, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    move-wide/from16 v0, p6

    move-wide/from16 v2, p8

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;-><init>(JJ)V

    iget-object v11, p0, Lcom/oculus/platform/OVR;->mReturnComponent:Landroid/content/ComponentName;

    move-wide v5, p1

    move v7, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Lcom/oculus/platform/OVRServiceManager;->launchUserUnblockFlow(JIJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V

    .line 860
    return-void
.end method

.method public nativeLogToMarauder(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 432
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/platform/OVRServiceManager;->logToMarauder(ZLjava/lang/String;)V

    .line 433
    return-void
.end method

.method public nativePartyChatGetVolume()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 402
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->partyChatGetVolume()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativePartyChatSetVolume(F)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 397
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1}, Lcom/oculus/platform/OVRServiceManager;->partyChatSetVolume(F)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativePauseLivestreaming(JJ)V
    .locals 3

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 681
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->pauseLivestream(Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 683
    return-void
.end method

.method public nativeRequestMapMethodID(Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 1158
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 1160
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/platform/OVRServiceManager;->requestMap(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 1163
    return-void
.end method

.method public nativeResumeLivestreaming(JJ)V
    .locals 3

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 751
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->resumeLivestream(Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 753
    return-void
.end method

.method public nativeSetFBNSCredentialsSync(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 302
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVR;->mProfile:Lcom/oculus/platform/OVRProfile;

    iget-object v1, v1, Lcom/oculus/platform/OVRProfile;->id:Ljava/lang/String;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/platform/OVRServiceManager;->setFBNSCredentialsSync(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public nativeSetRichPresence(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 1131
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1}, Lcom/oculus/platform/OVRServiceManager;->setRichPresence(Ljava/lang/String;)V

    .line 1132
    return-void
.end method

.method public nativeSetSystemVoipMicrophoneMutedSync(I)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 372
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1}, Lcom/oculus/platform/OVRServiceManager;->setSystemVoipMicrophoneMutedSync(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeSetSystemVoipPassthroughSync(Z)I
    .locals 5

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 360
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1}, Lcom/oculus/platform/OVRServiceManager;->setSystemVoipPassthroughSync(Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    .line 364
    sget-object v2, Lcom/oculus/platform/OVR;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detached mem handle from pfd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "into native handle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public nativeSetSystemVoipSuppressedSync(Z)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 377
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1}, Lcom/oculus/platform/OVRServiceManager;->setSystemVoipSuppressedSync(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeShareMapMethodID(Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 1149
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/platform/OVRServiceManager;->shareMap(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 1152
    return-void
.end method

.method public nativeShareMediaToFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJ)V
    .locals 15

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 812
    iget-object v5, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v12, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;-><init>(JJ)V

    iget-object v13, p0, Lcom/oculus/platform/OVR;->mReturnComponent:Landroid/content/ComponentName;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    invoke-virtual/range {v5 .. v13}, Lcom/oculus/platform/OVRServiceManager;->shareMediaToFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V

    .line 820
    return-void
.end method

.method public nativeSharedMicrophoneGetSocketFD(J)I
    .locals 5

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 448
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/platform/OVRServiceManager;->sharedMicrophoneGetSocketFD(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 450
    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    .line 452
    sget-object v2, Lcom/oculus/platform/OVR;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detached mem handle from pfd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "into native handle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public nativeSharedMicrophoneStop(J)V
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 442
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/platform/OVRServiceManager;->sharedMicrophoneStop(J)V

    .line 443
    return-void
.end method

.method public nativeStartLivestreaming(IIJJ)V
    .locals 3

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 694
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/platform/OVRServiceManager;->startLivestream(IILcom/oculus/platform/callback/OVRStringCallback;)V

    .line 698
    return-void
.end method

.method public nativeStartPartyChat(J)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 387
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/platform/OVRServiceManager;->startPartyChat(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeStartPartyLivestreaming(JJ)V
    .locals 3

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 763
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->startPartyLivestream(Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 765
    return-void
.end method

.method public nativeStartRecordingForUserReportFlow(JJ)V
    .locals 3

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 915
    sget-object v0, Lcom/oculus/platform/OVR;->TAG:Ljava/lang/String;

    const-string v1, "AbuseCapture: nativeStartRecordingForUserReportFlow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->startRecording(Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 918
    return-void
.end method

.method public nativeStopLivestreaming(JJ)V
    .locals 3

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 738
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->stopLivestream(Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 740
    return-void
.end method

.method public nativeStopPartyChat()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 392
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->stopPartyChat()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public nativeStopPartyLivestreaming(JJ)V
    .locals 3

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 776
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/oculus/platform/OVRServiceManager;->stopPartyLivestream(Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 778
    return-void
.end method

.method public nativeStopRecordingAndLaunchReportFlow(JLjava/lang/String;ZIJJJ)V
    .locals 14

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 948
    sget-object v4, Lcom/oculus/platform/OVR;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbuseCapture: nativeStopRecordingAndLaunchReportFlow, userID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", recordingUUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preventPeopleChooser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v4, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v12, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    move-wide/from16 v0, p8

    move-wide/from16 v2, p10

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;-><init>(JJ)V

    iget-object v13, p0, Lcom/oculus/platform/OVR;->mReturnComponent:Landroid/content/ComponentName;

    move-wide v5, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v13}, Lcom/oculus/platform/OVRServiceManager;->stopRecordingAndLaunchReportFlow(JLjava/lang/String;ZIJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V

    .line 955
    return-void
.end method

.method public nativeUpdateLivestreamingCommentsVisibility(ZJJ)V
    .locals 2

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 724
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/platform/OVRServiceManager;->updateLivestreamCommentsVisibility(ZLcom/oculus/platform/callback/OVRStringCallback;)V

    .line 727
    return-void
.end method

.method public nativeUpdateLivestreamingMicStatus(IJJ)V
    .locals 2

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 710
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/platform/OVRServiceManager;->updateLivestreamMicStatus(ILcom/oculus/platform/callback/OVRStringCallback;)V

    .line 713
    return-void
.end method

.method public nativeUpdatePlatformContext(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 460
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0, p1}, Lcom/oculus/platform/OVRServiceManager;->updatePlatformContext(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public nativeVerifyApplicationLivestreamingAllowed(Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/oculus/platform/OVR;->assertIsInitialized()V

    .line 658
    iget-object v0, p0, Lcom/oculus/platform/OVR;->mServiceManager:Lcom/oculus/platform/OVRServiceManager;

    new-instance v1, Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/oculus/platform/callback/OVRStringCallback;-><init>(JJ)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/platform/OVRServiceManager;->verifyApplicationLivestreamingAllowed(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V

    .line 661
    return-void
.end method
