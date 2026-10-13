.class public Lcom/oculus/vrshell/home/module/ScreenCaptureModule;
.super Ljava/lang/Object;
.source "ScreenCaptureModule.java"


# static fields
.field private static final BEGIN_VIDEO_CAPTURE_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.BEGIN_VIDEO_CAPTURE"

.field private static final CAPTURE_COMPONENT_NAME:Ljava/lang/String; = "com.oculus.horizon.service_media.OVRMediaService"

.field private static final CAPTURE_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.horizon"

.field private static final IS_SCREEN_CAPTURE_RUNNING_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.IS_SCREEN_CAPTURE_RUNNING"

.field private static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field private static MODULE_NAME:Ljava/lang/String; = null

.field private static final SCREENSHOT_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.SCREENSHOT"

.field private static final START_VIDEO_CAPTURE_HORIZON_ACTION:Ljava/lang/String; = "com.oculus.horizon.START_CAPTURE_TO_DISK"

.field private static final STOP_VIDEO_CAPTURE_HORIZON_ACTION:Ljava/lang/String; = "com.oculus.horizon.STOP_CAPTURE_TO_DISK"

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/oculus/vrshell/home/module/ScreenCaptureModule;


# instance fields
.field public RVRCtxTag:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/String;

    const-string v1, "ScreenCapture"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->MODULE_NAME:Ljava/lang/String;

    .line 17
    const-class v0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mInstance:Lcom/oculus/vrshell/home/module/ScreenCaptureModule;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mContext:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mContext:Landroid/content/Context;

    .line 34
    sput-object p0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mInstance:Lcom/oculus/vrshell/home/module/ScreenCaptureModule;

    .line 35
    return-void
.end method

.method public static broadcastIsScreenCaptureRunning(Z)V
    .locals 4
    .param p0, "isScreenCaptureRunning"    # Z

    .prologue
    .line 97
    sget-object v0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastIsScreenCaptureRunning("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mInstance:Lcom/oculus/vrshell/home/module/ScreenCaptureModule;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->TAG:Ljava/lang/String;

    const-string v1, "broadcasting onVideoCaptureStatusUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mInstance:Lcom/oculus/vrshell/home/module/ScreenCaptureModule;

    iget-wide v0, v0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->RVRCtxTag:J

    const-string v2, "onVideoCaptureStatusUpdated"

    .line 103
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
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
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "sendScreenshotMessage"

    const-string v3, "s"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Landroid/util/Pair;

    const-string v2, "sendVideoCaptureMessage"

    const-string v3, "sb"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getIsScreenCaptureRunning"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-object v0
.end method

.method private isCaptureV2Compatible()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, "vrDriverMetaData":I
    const/4 v1, 0x0

    .line 112
    .local v1, "horizonMetaData":I
    iget-object v5, p0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mContext:Landroid/content/Context;

    const-string v6, "com.oculus.systemdriver"

    invoke-static {v5, v6}, Lcom/oculus/panellib/AppDetails;->getWithMetaData(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v5

    iget-object v2, v5, Lcom/oculus/panellib/AppDetails;->metaData:Landroid/os/Bundle;

    .line 113
    .local v2, "vrDriverBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 114
    const-string v5, "com.oculus.systemdriver.screencapture.capability"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 117
    :cond_0
    iget-object v5, p0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mContext:Landroid/content/Context;

    const-string v6, "com.oculus.horizon"

    invoke-static {v5, v6}, Lcom/oculus/panellib/AppDetails;->getWithMetaData(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v5

    iget-object v0, v5, Lcom/oculus/panellib/AppDetails;->metaData:Landroid/os/Bundle;

    .line 118
    .local v0, "horizonBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 119
    const-string v5, "com.oculus.horizon.screencapture.capability"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 122
    :cond_1
    if-lt v3, v7, :cond_2

    if-lt v1, v7, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method public getIsScreenCaptureRunning()V
    .locals 4

    .prologue
    .line 89
    sget-object v1, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->TAG:Ljava/lang/String;

    const-string v2, "getIsScreenCaptureRunning()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.systemactivities.IS_SCREEN_CAPTURE_RUNNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oculus.vrshell"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    sget-object v1, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public sendScreenshotMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v1, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendScreenshotMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.systemactivities.SCREENSHOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "delayInSeconds"

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 68
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    sget-object v1, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public sendVideoCaptureMessage(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "captureV2GKEnabled"    # Z

    .prologue
    .line 74
    sget-object v1, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVideoCaptureMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->isCaptureV2Compatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 78
    const-string v1, "message_type"

    const-string v2, "com.oculus.horizon.START_CAPTURE_TO_DISK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 86
    :goto_0
    return-void

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.systemactivities.BEGIN_VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    sget-object v1, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shutdownModule()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mInstance:Lcom/oculus/vrshell/home/module/ScreenCaptureModule;

    if-ne v0, p0, :cond_0

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->mInstance:Lcom/oculus/vrshell/home/module/ScreenCaptureModule;

    .line 56
    :cond_0
    return-void
.end method
