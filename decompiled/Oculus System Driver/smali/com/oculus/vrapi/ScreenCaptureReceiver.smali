.class Lcom/oculus/vrapi/ScreenCaptureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenCaptureReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;
    }
.end annotation


# static fields
.field private static final BEGIN_VIDEO_CAPTURE_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.BEGIN_VIDEO_CAPTURE"

.field private static final BEGIN_VIDEO_CAPTURE_WITH_SURFACE_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.BEGIN_VIDEO_CAPTURE_WITH_SURFACE"

.field private static final DEFAULT_SCREENSHOT_DELAY:F = 5.0f

.field private static final IS_SCREEN_CAPTURE_RUNNING:Ljava/lang/String; = "com.oculus.systemactivities.IS_SCREEN_CAPTURE_RUNNING"

.field private static final PAUSE_VIDEO_CAPTURE_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.PAUSE_VIDEO_CAPTURE"

.field private static final RESOURCE_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.systemdriver"

.field private static final RESUME_VIDEO_CAPTURE_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.RESUME_VIDEO_CAPTURE"

.field private static final SCREENSHOT_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.SCREENSHOT"

.field private static final SCREEN_CAPTURE_ENABLED:I = 0x2

.field private static final SCREEN_CAPTURE_INHIBITED:I = 0x1

.field private static final SCREEN_CAPTURE_UNKNOWN:I = 0x0

.field private static final STOP_VIDEO_CAPTURE_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.STOP_VIDEO_CAPTURE"

.field private static final TAG:Ljava/lang/String; = "ScreenCaptureReceiver"

.field private static final VR_HELPER_SCREEN_CAPTURE_ENABLED:Ljava/lang/String; = "enabled"

.field private static final VR_HELPER_SCREEN_CAPTURE_INHIBITED:Ljava/lang/String; = "inhibited"

.field private static final VR_HELPER_SCREEN_CAPTURE_INHIBIT_KEY:Ljava/lang/String; = "screen_capture_inhibit_state"

.field private static cachedContext:Landroid/content/Context; = null

.field private static delayInSeconds:F = 5.0f

.field private static filter:Landroid/content/IntentFilter; = null

.field private static isReceiverStarted:Z = false

.field private static mIsMIVRDevice:Z = false

.field private static receiver:Lcom/oculus/vrapi/ScreenCaptureReceiver; = null

.field private static screenshotSurface:Landroid/view/Surface; = null

.field private static shouldLiftInhibit:Z = false

.field private static streamingSurface:Landroid/view/Surface;

.field private static unauthorizedAccessCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static advertiseScreenCaptureRunning(Z)V
    .locals 4

    .line 72
    sget-object v0, Lcom/oculus/vrapi/ScreenCaptureReceiver;->cachedContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.vrshell.home"

    const-string v3, "com.oculus.vrshell.home.SystemUtilitiesService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "screen_capture_running"

    .line 76
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    sget-object v1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->cachedContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "ScreenCaptureReceiver"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Advertising screen capture running state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getScreenCaptureCmdNum(Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;)I
    .locals 1

    .line 90
    sget-object v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$1;->$SwitchMap$com$oculus$vrapi$ScreenCaptureReceiver$ScreenCaptureCmd:[I

    invoke-virtual {p0}, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getScreenCaptureInhibitFlag(Landroid/content/Context;)I
    .locals 5

    .line 166
    invoke-static {p0}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->isPackageInhibited(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 171
    :cond_0
    invoke-static {p0}, Lcom/oculus/vrapi/GearVRProviderHelper;->CheckProviderExists(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 176
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_capture_inhibit_state"

    const-string v3, "unknown"

    invoke-static {p0, v0, v3}, Lcom/oculus/vrapi/GearVRProviderHelper$Public;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenCaptureReceiver"

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreenCaptureInhibitFlag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "inhibited"

    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "enabled"

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v2
.end method

.method public static getStreamingCaptureSurface()Landroid/view/Surface;
    .locals 1

    .line 84
    sget-object v0, Lcom/oculus/vrapi/ScreenCaptureReceiver;->streamingSurface:Landroid/view/Surface;

    return-object v0
.end method

.method private static isPackageInhibited(Landroid/content/Context;)Z
    .locals 4

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.oculus.systemdriver"

    .line 144
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "capture_blacklist"

    const-string v2, "array"

    const-string v3, "com.oculus.systemdriver"

    .line 145
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ScreenCaptureReceiver"

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not available for capture!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "ScreenCaptureReceiver"

    const-string v0, "Couldn\'t load package com.oculus.systemdriver"

    .line 158
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isReceiverStarted()Z
    .locals 1

    .line 240
    sget-boolean v0, Lcom/oculus/vrapi/ScreenCaptureReceiver;->isReceiverStarted:Z

    return v0
.end method

.method private isTrustedApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "com.oculus.AugmentedVR"

    const-string v1, "com.oculus.screencapture"

    .line 245
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->isUserDevBuild()Z

    move-result p1

    return p1

    .line 256
    :cond_0
    sget-object v0, Lcom/oculus/vrapi/TrustedSignatureVerifier;->TrustedSignedApps:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 258
    invoke-static {p1, p2}, Lcom/oculus/vrapi/TrustedSignatureVerifier;->isSignatureValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    return p2

    .line 264
    :cond_1
    sget p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->unauthorizedAccessCount:I

    add-int/2addr p1, p2

    sput p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->unauthorizedAccessCount:I

    .line 265
    sget p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->unauthorizedAccessCount:I

    invoke-static {p1}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->nativeSetUnauthorizedAccessCount(I)V

    return v1

    :cond_2
    return v1
.end method

.method private static isUserDevBuild()Z
    .locals 2

    const-string v0, "ScreenCaptureReceiver"

    const-string v1, "Checking build type"

    .line 277
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ro.build.fingerprint"

    const/4 v1, 0x0

    .line 278
    invoke-static {v0, v1}, Lcom/oculus/vrapi/SystemProps;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "release-keys"

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static native nativeIsVideoCaptureRunning()Z
.end method

.method private static native nativeLiftInhibitState()V
.end method

.method private static native nativeRestoreInhibitState()V
.end method

.method public static native nativeSetPhotoParams(Landroid/view/Surface;F)V
.end method

.method private static native nativeSetScreenCaptureCmd(I)V
.end method

.method private static native nativeSetStreamingParams(Landroid/view/Surface;)V
.end method

.method public static native nativeSetUnauthorizedAccessCount(I)V
.end method

.method private static setScreenCaptureCmd(Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;)V
    .locals 0

    .line 109
    invoke-static {p0}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->getScreenCaptureCmdNum(Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;)I

    move-result p0

    invoke-static {p0}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->nativeSetScreenCaptureCmd(I)V

    return-void
.end method

.method public static setScreenCaptureInhibitFlag(Landroid/content/Context;I)V
    .locals 3

    .line 122
    invoke-static {p0}, Lcom/oculus/vrapi/GearVRProviderHelper;->CheckProviderExists(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "enabled"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string v0, "inhibited"

    :cond_1
    const-string p1, "ScreenCaptureReceiver"

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenCaptureInhibitFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "screen_capture_inhibit_state"

    invoke-static {p0, p1, v0}, Lcom/oculus/vrapi/GearVRProviderHelper$Public;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startReceiver(Landroid/content/Context;ZZ)V
    .locals 2

    .line 194
    sget-boolean p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->isReceiverStarted:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 198
    :cond_0
    sput-object p0, Lcom/oculus/vrapi/ScreenCaptureReceiver;->cachedContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 199
    sput p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->unauthorizedAccessCount:I

    .line 200
    invoke-static {}, Lcom/oculus/vrapi/TrustedSignatureVerifier;->GenerateSignatureMap()V

    .line 202
    sput-boolean p2, Lcom/oculus/vrapi/ScreenCaptureReceiver;->mIsMIVRDevice:Z

    const-string p1, "ScreenCaptureReceiver"

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startReceiver "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->cachedContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->filter:Landroid/content/IntentFilter;

    if-nez p1, :cond_1

    .line 208
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.oculus.systemactivities.BEGIN_VIDEO_CAPTURE"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->filter:Landroid/content/IntentFilter;

    .line 209
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->filter:Landroid/content/IntentFilter;

    const-string p2, "com.oculus.systemactivities.SCREENSHOT"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->filter:Landroid/content/IntentFilter;

    const-string p2, "com.oculus.systemactivities.BEGIN_VIDEO_CAPTURE_WITH_SURFACE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->filter:Landroid/content/IntentFilter;

    const-string p2, "com.oculus.systemactivities.PAUSE_VIDEO_CAPTURE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->filter:Landroid/content/IntentFilter;

    const-string p2, "com.oculus.systemactivities.RESUME_VIDEO_CAPTURE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->filter:Landroid/content/IntentFilter;

    const-string p2, "com.oculus.systemactivities.STOP_VIDEO_CAPTURE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->filter:Landroid/content/IntentFilter;

    const-string p2, "com.oculus.systemactivities.IS_SCREEN_CAPTURE_RUNNING"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    :cond_1
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->receiver:Lcom/oculus/vrapi/ScreenCaptureReceiver;

    if-nez p1, :cond_2

    .line 218
    new-instance p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;

    invoke-direct {p1}, Lcom/oculus/vrapi/ScreenCaptureReceiver;-><init>()V

    sput-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->receiver:Lcom/oculus/vrapi/ScreenCaptureReceiver;

    .line 220
    :cond_2
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->receiver:Lcom/oculus/vrapi/ScreenCaptureReceiver;

    sget-object p2, Lcom/oculus/vrapi/ScreenCaptureReceiver;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    sput-boolean v0, Lcom/oculus/vrapi/ScreenCaptureReceiver;->isReceiverStarted:Z

    return-void
.end method

.method public static stopReceiver()V
    .locals 3

    .line 226
    sget-boolean v0, Lcom/oculus/vrapi/ScreenCaptureReceiver;->isReceiverStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ScreenCaptureReceiver"

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oculus/vrapi/ScreenCaptureReceiver;->cachedContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Stop:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    invoke-static {v0}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->setScreenCaptureCmd(Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;)V

    .line 233
    sget-object v0, Lcom/oculus/vrapi/ScreenCaptureReceiver;->cachedContext:Landroid/content/Context;

    sget-object v1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->receiver:Lcom/oculus/vrapi/ScreenCaptureReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 234
    sput-object v0, Lcom/oculus/vrapi/ScreenCaptureReceiver;->cachedContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 235
    sput-boolean v0, Lcom/oculus/vrapi/ScreenCaptureReceiver;->isReceiverStarted:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "ScreenCaptureReceiver"

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "ScreenCaptureReceiver"

    const-string p2, "ScreenCaptureReceiver - intent missing package!"

    .line 297
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "_ci_"

    .line 301
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "_ci_"

    .line 303
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    const-string p1, "ScreenCaptureReceiver"

    const-string p2, "PendingIntent is null"

    .line 308
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 313
    :cond_1
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-direct {p0, p1, v0}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->isTrustedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ScreenCaptureReceiver"

    .line 320
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent sent from untrustworthy app - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p1, "ScreenCaptureReceiver"

    const-string v0, "App is trusted"

    .line 325
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oculus.systemactivities.SCREENSHOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "delayInSeconds"

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 337
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float p1, v2

    sput p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->delayInSeconds:F

    .line 338
    sget p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->delayInSeconds:F

    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpg-double p1, v2, v4

    if-ltz p1, :cond_3

    sget p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->delayInSeconds:F

    float-to-double v2, p1

    cmpl-double p1, v2, v0

    if-lez p1, :cond_4

    :cond_3
    const-string p1, "ScreenCaptureReceiver"

    const-string v0, "Screenshot delay is out of bounds. Setting to default value: 5.0 seconds"

    .line 340
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, 0x40a00000    # 5.0f

    .line 341
    sput p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->delayInSeconds:F

    :cond_4
    const-string p1, "surface"

    .line 344
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    if-eqz p1, :cond_5

    .line 348
    sput-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->screenshotSurface:Landroid/view/Surface;

    .line 351
    :cond_5
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->screenshotSurface:Landroid/view/Surface;

    if-eqz p1, :cond_e

    .line 353
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->screenshotSurface:Landroid/view/Surface;

    sget p2, Lcom/oculus/vrapi/ScreenCaptureReceiver;->delayInSeconds:F

    invoke-static {p1, p2}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->nativeSetPhotoParams(Landroid/view/Surface;F)V

    .line 354
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Photo:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    invoke-static {p1}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->setScreenCaptureCmd(Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;)V

    goto/16 :goto_0

    .line 357
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oculus.systemactivities.BEGIN_VIDEO_CAPTURE_WITH_SURFACE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "lift_inhibit"

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->shouldLiftInhibit:Z

    const-string p1, "surface"

    .line 360
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 362
    sget-boolean p2, Lcom/oculus/vrapi/ScreenCaptureReceiver;->shouldLiftInhibit:Z

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 364
    invoke-static {}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->nativeLiftInhibitState()V

    .line 367
    :cond_7
    sput-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->streamingSurface:Landroid/view/Surface;

    .line 368
    sget-object p2, Lcom/oculus/vrapi/ScreenCaptureReceiver;->streamingSurface:Landroid/view/Surface;

    invoke-static {p2}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->nativeSetStreamingParams(Landroid/view/Surface;)V

    if-eqz p1, :cond_8

    const-string p1, "ScreenCaptureReceiver"

    const-string p2, "Valid surface. Starting streaming"

    .line 372
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Start:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    invoke-static {p1}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->setScreenCaptureCmd(Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;)V

    goto/16 :goto_0

    :cond_8
    const-string p1, "ScreenCaptureReceiver"

    const-string p2, "Null surface. Stopping streaming"

    .line 377
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Stop:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    invoke-static {p1}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->setScreenCaptureCmd(Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;)V

    .line 379
    invoke-static {}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->nativeRestoreInhibitState()V

    goto/16 :goto_0

    .line 382
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oculus.systemactivities.RESUME_VIDEO_CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 384
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->streamingSurface:Landroid/view/Surface;

    if-eqz p1, :cond_e

    .line 386
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Start:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    invoke-static {p1}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->setScreenCaptureCmd(Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;)V

    goto :goto_0

    .line 389
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oculus.systemactivities.PAUSE_VIDEO_CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 391
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver;->streamingSurface:Landroid/view/Surface;

    if-eqz p1, :cond_e

    .line 393
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Stop:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    invoke-static {p1}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->setScreenCaptureCmd(Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;)V

    goto :goto_0

    .line 396
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oculus.systemactivities.STOP_VIDEO_CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 398
    sget-object p1, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Stop:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    invoke-static {p1}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->setScreenCaptureCmd(Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;)V

    .line 399
    invoke-static {}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->nativeRestoreInhibitState()V

    goto :goto_0

    .line 401
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oculus.systemactivities.IS_SCREEN_CAPTURE_RUNNING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 403
    invoke-static {}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->nativeIsVideoCaptureRunning()Z

    move-result p1

    invoke-static {p1}, Lcom/oculus/vrapi/ScreenCaptureReceiver;->advertiseScreenCaptureRunning(Z)V

    goto :goto_0

    :cond_d
    const-string p1, "ScreenCaptureReceiver"

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_0
    return-void

    :cond_f
    const-string p1, "ScreenCaptureReceiver"

    const-string p2, "No PendingIntent attached"

    .line 331
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
