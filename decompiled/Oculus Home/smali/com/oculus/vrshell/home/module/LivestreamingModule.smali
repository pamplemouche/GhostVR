.class public Lcom/oculus/vrshell/home/module/LivestreamingModule;
.super Ljava/lang/Object;
.source "LivestreamingModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;,
        Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;,
        Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;
    }
.end annotation


# static fields
.field private static final HORIZON_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.horizon"

.field private static final KEY_LIVESTREAM_AUDIENCE:Ljava/lang/String; = "audience_selector"

.field private static final KEY_LIVESTREAM_GROUP:Ljava/lang/String; = "group_selector"

.field private static final KEY_LIVESTREAM_LOCATION:Ljava/lang/String; = "location_selector"

.field private static final KEY_LIVESTREAM_PAGE:Ljava/lang/String; = "page_selector"

.field private static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field private static final KEY_MICROPHONE_STATUS:Ljava/lang/String; = "microphone_status"

.field private static final KEY_RESULT_RECEIVER:Ljava/lang/String; = "result_receiver"

.field private static final KEY_STREAMING_RESULT:Ljava/lang/String; = "streaming_result"

.field private static final KEY_STREAMING_RESULT_STRING:Ljava/lang/String; = "streaming_result_string"

.field private static MODULE_NAME:Ljava/lang/String; = null

.field private static final OVR_MEDIA_SERVICE_NAME:Ljava/lang/String; = "com.oculus.horizon.service_media.OVRMediaService"

.field private static final START_FACEBOOK_STREAMING:Ljava/lang/String; = "start_streaming"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/oculus/vrshell/home/module/LivestreamingModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule;->MODULE_NAME:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule;->MODULE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule;->mContext:Landroid/content/Context;

    .line 77
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrshell/home/module/LivestreamingModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/LivestreamingModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/module/LivestreamingModule;->createErrorObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createErrorObject(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v0, "{\"error\":\"%s\"}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "startLivestreaming"

    const-string v3, "ssssbi"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-object v0
.end method

.method private static getCrossPackageResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 3
    .param p0, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 168
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-virtual {p0, v1, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 169
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 170
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 171
    .local v0, "crossPackageResultReceiver":Landroid/os/ResultReceiver;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 172
    return-object v0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public invokeCallback(ILjava/lang/String;)V
    .locals 2
    .param p1, "callbackID"    # I
    .param p2, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule;->RVRCtxTag:J

    invoke-static {v0, v1, p1, p2}, Lcom/oculus/vrshell/home/module/LivestreamingModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 183
    return-void
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public startLivestreaming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 12
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "audience"    # Ljava/lang/String;
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "page"    # Ljava/lang/String;
    .param p5, "enableMic"    # Z
    .param p6, "callbackID"    # I

    .prologue
    .line 92
    :try_start_0
    sget-object v9, Lcom/oculus/vrshell/home/module/LivestreamingModule;->TAG:Ljava/lang/String;

    const-string v10, "Sending intent to OVRMediaService to start Facebook livestream to [%s]"

    invoke-static {v9, v10, p1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v5, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v9, "com.oculus.horizon"

    const-string v10, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v2, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    const-string v9, "message_type"

    const-string v10, "start_streaming"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v9, "GROUP"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 105
    sget-object v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->GROUP:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    iget v6, v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->mVal:I

    .line 111
    .local v6, "locationValue":I
    :goto_0
    const-string v9, "location_selector"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v9, "PUBLIC"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 115
    sget-object v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->PUBLIC:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    iget v1, v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->mVal:I

    .line 121
    .local v1, "audienceValue":I
    :goto_1
    const-string v9, "audience_selector"

    invoke-virtual {v5, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v9, "group_selector"

    invoke-virtual {v5, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v9, "page_selector"

    move-object/from16 v0, p4

    invoke-virtual {v5, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    if-eqz p5, :cond_4

    sget-object v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;->MICROPHONE_ON:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    iget v7, v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;->mVal:I

    .line 125
    .local v7, "micStatus":I
    :goto_2
    const-string v9, "microphone_status"

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    new-instance v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$1;

    const/4 v10, 0x0

    move/from16 v0, p6

    invoke-direct {v9, p0, v10, v0}, Lcom/oculus/vrshell/home/module/LivestreamingModule$1;-><init>(Lcom/oculus/vrshell/home/module/LivestreamingModule;Landroid/os/Handler;I)V

    invoke-static {v9}, Lcom/oculus/vrshell/home/module/LivestreamingModule;->getCrossPackageResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v8

    .line 143
    .local v8, "resultReceiver":Landroid/os/ResultReceiver;
    const-string v9, "result_receiver"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    iget-object v9, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule;->mContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/oculus/vrshell/home/module/LivestreamingModule;->MODULE_NAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":startLivestreaming()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v9, v10}, Lcom/oculus/secure/trustedapp/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v9, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    .end local v1    # "audienceValue":I
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "locationValue":I
    .end local v7    # "micStatus":I
    .end local v8    # "resultReceiver":Landroid/os/ResultReceiver;
    :goto_3
    return-void

    .line 106
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v9, "PAGE"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 107
    sget-object v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->PAGE:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    iget v6, v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->mVal:I

    .restart local v6    # "locationValue":I
    goto :goto_0

    .line 109
    .end local v6    # "locationValue":I
    :cond_1
    sget-object v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->TIMELINE:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;

    iget v6, v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingLocation;->mVal:I

    .restart local v6    # "locationValue":I
    goto :goto_0

    .line 116
    :cond_2
    const-string v9, "FRIENDS"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 117
    sget-object v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->FRIENDS:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    iget v1, v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->mVal:I

    .restart local v1    # "audienceValue":I
    goto :goto_1

    .line 119
    .end local v1    # "audienceValue":I
    :cond_3
    sget-object v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->ONLY_ME:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;

    iget v1, v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingAudience;->mVal:I

    .restart local v1    # "audienceValue":I
    goto :goto_1

    .line 124
    :cond_4
    sget-object v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;->MICROPHONE_OFF:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    iget v7, v9, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;->mVal:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 147
    .end local v1    # "audienceValue":I
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "locationValue":I
    :catch_0
    move-exception v4

    .line 148
    .local v4, "exception":Ljava/lang/Exception;
    const-string v3, "Sending intent to OVRMediaService to start Facebook livestream failed."

    .line 149
    .local v3, "errorMessage":Ljava/lang/String;
    sget-object v9, Lcom/oculus/vrshell/home/module/LivestreamingModule;->TAG:Ljava/lang/String;

    invoke-static {v9, v4, v3}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 150
    move/from16 v0, p6

    invoke-virtual {p0, v0, v3}, Lcom/oculus/vrshell/home/module/LivestreamingModule;->invokeCallback(ILjava/lang/String;)V

    goto :goto_3
.end method
