.class public Lcom/oculus/vrshell/home/module/AbuseReportModule;
.super Ljava/lang/Object;
.source "AbuseReportModule.java"


# static fields
.field private static final ACTION_REQUEST_EVIDENCE_VIDEO:Ljava/lang/String; = "com.oculus.horizon.abuse_prevention.ACTION_REQUEST_EVIDENCE_VIDEO"

.field private static final BROADCAST_CAPTURE_ABUSE_START:Ljava/lang/String; = "broadcast_abuse_capture_start"

.field private static final BROADCAST_CAPTURE_ABUSE_STOP:Ljava/lang/String; = "broadcast_abuse_capture_stop"

.field private static final GSON:Lcom/google/gson/Gson;

.field private static final HORIZON_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.horizon"

.field private static final KEY_DEFER_SHOWING_OVERLAY:Ljava/lang/String; = "defer_showing_abuse_recording_overlay"

.field private static final KEY_FROM_PKG:Ljava/lang/String; = "from_pkg"

.field private static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field private static final KEY_OVERLAY_PARAMS:Ljava/lang/String; = "recording_overlay_params"

.field private static final KEY_RECORDING_COMMAND_STATUS:Ljava/lang/String; = "recording_command_status"

.field private static final KEY_RECORDING_UUID:Ljava/lang/String; = "recording_uuid"

.field private static final KEY_RESULT_RECEIVER:Ljava/lang/String; = "result_receiver"

.field private static final KEY_SDK_USER_ID:Ljava/lang/String; = "sdk_user_id"

.field private static final KEY_SOURCE:Ljava/lang/String; = "source"

.field private static MODULE_NAME:Ljava/lang/String; = null

.field private static final OVR_MEDIA_SERVICE_NAME:Ljava/lang/String; = "com.oculus.horizon.service_media.OVRMediaService"

.field private static final TAG:Ljava/lang/String;

.field private static final VIDEO_UPLOADER_SERVICE_NAME:Ljava/lang/String; = "com.oculus.horizon.abuse_prevention.VideoUploaderService"


# instance fields
.field public RVRCtxTag:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/oculus/vrshell/home/module/AbuseReportModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->MODULE_NAME:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->MODULE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->mContext:Landroid/content/Context;

    .line 59
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$000()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->GSON:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/vrshell/home/module/AbuseReportModule;Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/AbuseReportModule;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->bundleToString(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/vrshell/home/module/AbuseReportModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/AbuseReportModule;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->launchReportFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private bundleToString(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 211
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 212
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 214
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v5, Lcom/oculus/vrshell/home/module/AbuseReportModule;->TAG:Ljava/lang/String;

    const-string v6, "Error converting bundle object to a JSONObject "

    invoke-static {v5, v6, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 222
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getAbuseReportVideo"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v1, Landroid/util/Pair;

    const-string v2, "launchVideoUploaderService"

    const-string v3, "ss"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v1, Landroid/util/Pair;

    const-string v2, "launchAbuseRecordingOverlay"

    const-string v3, "jb"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v1, Landroid/util/Pair;

    const-string v2, "startRecordingForReportFlow"

    const-string v3, "ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v1, Landroid/util/Pair;

    const-string v2, "stopRecordingAndLaunchReportFlow"

    const-string v3, "j"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-object v0
.end method

.method private static getCrossPackageResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 3
    .param p0, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 197
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-virtual {p0, v1, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 198
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 199
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 200
    .local v0, "crossPackageResultReceiver":Landroid/os/ResultReceiver;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    return-object v0
.end method

.method private launchReportFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "recordingUUID"    # Ljava/lang/String;
    .param p2, "sdkUserID"    # Ljava/lang/String;
    .param p3, "fromPkg"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "/system_utilities/user_report/"

    .line 161
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 162
    invoke-virtual {v3, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 163
    invoke-virtual {v3, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 164
    invoke-virtual {v3, p4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 166
    .local v0, "deeplinkUri":Landroid/net/Uri$Builder;
    if-eqz p1, :cond_0

    .line 167
    const-string v3, "recording_uuid"

    invoke-virtual {v0, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 170
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x10000000

    .line 171
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.oculus.vrshell"

    const-string v6, "com.oculus.vrshell.MainActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.oculus.vrshell.home/com.oculus.vrshell.home.SystemUtilitiesService"

    .line 175
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 174
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 177
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "uri"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v3, "deeplinkToSystemUtilities intent URI"

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v3, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/oculus/vrshell/home/module/AbuseReportModule;->TAG:Ljava/lang/String;

    const-string v4, "Error launching deeplink intent"

    invoke-static {v3, v4, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method public getAbuseReportVideo(Ljava/lang/String;II)V
    .locals 8
    .param p1, "recordingUUID"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    const/4 v2, 0x0

    .line 269
    sget-object v0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->TAG:Ljava/lang/String;

    const-string v3, "getAbuseReportVideo() called, recordingUUID=%s"

    invoke-static {v0, v3, p1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.oculus.horizon.abuse_prevention.ACTION_REQUEST_EVIDENCE_VIDEO"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "recording_uuid"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v0, "com.oculus.horizon"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/oculus/vrshell/home/module/AbuseReportModule$3;

    invoke-direct {v3, p0, p2, p3}, Lcom/oculus/vrshell/home/module/AbuseReportModule$3;-><init>(Lcom/oculus/vrshell/home/module/AbuseReportModule;II)V

    const/4 v5, -0x1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 310
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public launchAbuseRecordingOverlay(Lorg/json/JSONObject;Z)V
    .locals 6
    .param p1, "overlayParams"    # Lorg/json/JSONObject;
    .param p2, "deferShowingOverlay"    # Z

    .prologue
    .line 227
    :try_start_0
    sget-object v3, Lcom/oculus/vrshell/home/module/AbuseReportModule;->TAG:Ljava/lang/String;

    const-string v4, "Sending intent to OVRMediaService to start recording overlay with params=[%s]"

    .line 230
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-static {v3, v4, v5}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.oculus.horizon"

    const-string v4, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 236
    const-string v3, "message_type"

    const-string v4, "show_abuse_recording_overlay"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v3, "recording_overlay_params"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v3, "defer_showing_abuse_recording_overlay"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    iget-object v3, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oculus/vrshell/home/module/AbuseReportModule;->TAG:Ljava/lang/String;

    const-string v4, "Sending intent to OVRMediaService to launch recording overlay failed."

    invoke-static {v3, v1, v4}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public launchVideoUploaderService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "reportID"    # Ljava/lang/String;
    .param p2, "recordingUUID"    # Ljava/lang/String;

    .prologue
    .line 249
    :try_start_0
    sget-object v3, Lcom/oculus/vrshell/home/module/AbuseReportModule;->TAG:Ljava/lang/String;

    const-string v4, "Sending intent to the Video Uploader Service with report_id=[%s] recording_uuid=[%s]"

    invoke-static {v3, v4, p1, p2}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.oculus.horizon"

    const-string v4, "com.oculus.horizon.abuse_prevention.VideoUploaderService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 259
    const-string v3, "recording_uuid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v3, "report_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    iget-object v3, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oculus/vrshell/home/module/AbuseReportModule;->TAG:Ljava/lang/String;

    const-string v4, "Sending intent to the Video Uploader Service failed."

    invoke-static {v3, v1, v4}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public startRecordingForReportFlow(II)V
    .locals 8
    .param p1, "successCallbackID"    # I
    .param p2, "failureCallbackID"    # I

    .prologue
    .line 73
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.oculus.horizon"

    const-string v6, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    const-string v5, "message_type"

    const-string v6, "broadcast_abuse_capture_start"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    new-instance v5, Lcom/oculus/vrshell/home/module/AbuseReportModule$1;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6, p1, p2}, Lcom/oculus/vrshell/home/module/AbuseReportModule$1;-><init>(Lcom/oculus/vrshell/home/module/AbuseReportModule;Landroid/os/Handler;II)V

    invoke-static {v5}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->getCrossPackageResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v4

    .line 95
    .local v4, "resultReceiver":Landroid/os/ResultReceiver;
    const-string v5, "result_receiver"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    iget-object v5, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "resultReceiver":Landroid/os/ResultReceiver;
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "exception":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/oculus/vrshell/home/module/AbuseReportModule;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "json":Ljava/lang/String;
    iget-wide v6, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->RVRCtxTag:J

    invoke-static {v6, v7, p2, v3}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 101
    sget-object v5, Lcom/oculus/vrshell/home/module/AbuseReportModule;->TAG:Ljava/lang/String;

    const-string v6, "Sending intent to OVRMediaService to start abuse capture failed."

    invoke-static {v5, v1, v6}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecordingAndLaunchReportFlow(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "overlayParams"    # Lorg/json/JSONObject;

    .prologue
    .line 116
    :try_start_0
    const-string v0, "recording_uuid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "recordingUUID":Ljava/lang/String;
    const-string v0, "sdk_user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "sdkUserID":Ljava/lang/String;
    const-string v0, "from_pkg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "fromPkg":Ljava/lang/String;
    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "source":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v9, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-string v0, "com.oculus.horizon"

    const-string v1, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v9, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 125
    const-string v0, "message_type"

    const-string v1, "broadcast_abuse_capture_stop"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v0, "recording_uuid"

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    new-instance v0, Lcom/oculus/vrshell/home/module/AbuseReportModule$2;

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/oculus/vrshell/home/module/AbuseReportModule$2;-><init>(Lcom/oculus/vrshell/home/module/AbuseReportModule;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->getCrossPackageResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v10

    .line 139
    .local v10, "resultReceiver":Landroid/os/ResultReceiver;
    const-string v0, "result_receiver"

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v3    # "recordingUUID":Ljava/lang/String;
    .end local v4    # "sdkUserID":Ljava/lang/String;
    .end local v5    # "fromPkg":Ljava/lang/String;
    .end local v6    # "source":Ljava/lang/String;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resultReceiver":Landroid/os/ResultReceiver;
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v8

    .line 142
    .local v8, "ex":Ljava/lang/Exception;
    sget-object v0, Lcom/oculus/vrshell/home/module/AbuseReportModule;->TAG:Ljava/lang/String;

    const-string v1, "Sending intent to OVRMediaService to stop abuse capture failed."

    invoke-static {v0, v8, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
