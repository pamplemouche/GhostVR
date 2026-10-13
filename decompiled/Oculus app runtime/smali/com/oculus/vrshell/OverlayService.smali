.class public Lcom/oculus/vrshell/OverlayService;
.super Landroid/app/Service;
.source "OverlayService.java"

# interfaces
.implements Lcom/oculus/vrshell/ShellApplication$IVrClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/OverlayService$OverlayMessageHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppPtr:J

.field private messenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/oculus/vrshell/OverlayService;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/OverlayService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/oculus/vrshell/OverlayService;->messenger:Landroid/os/Messenger;

    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Lcom/oculus/vrshell/OverlayService;->mAppPtr:J

    return-void
.end method

.method private static native nativeInit(Landroid/app/Service;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method


# virtual methods
.method public getAppPtr()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/oculus/vrshell/OverlayService;->mAppPtr:J

    return-wide v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 67
    sget-object p1, Lcom/oculus/vrshell/OverlayService;->TAG:Ljava/lang/String;

    const-string v0, "onBind()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/oculus/vrshell/OverlayService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 9

    .line 29
    sget-object v0, Lcom/oculus/vrshell/OverlayService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    invoke-virtual {p0}, Lcom/oculus/vrshell/OverlayService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/ShellApplication;

    .line 38
    invoke-virtual {v0}, Lcom/oculus/vrshell/ShellApplication;->initLogging()V

    const-string v1, "overlay"

    .line 41
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/oculus/vrshell/OverlayService$OverlayMessageHandler;

    invoke-direct {v2, p0, p0}, Lcom/oculus/vrshell/OverlayService$OverlayMessageHandler;-><init>(Lcom/oculus/vrshell/OverlayService;Lcom/oculus/vrshell/OverlayService;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oculus/vrshell/OverlayService;->messenger:Landroid/os/Messenger;

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const v1, 0xc53a99b

    .line 50
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {p0}, Lcom/oculus/vrshell/OverlayService;->getPackageCodePath()Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-static {p0}, Lcom/oculus/vrshell/MainActivity;->getInternalStorageCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-virtual {p0}, Lcom/oculus/vrshell/OverlayService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "9.0.0.232.450"

    move-object v1, p0

    move-object v2, v0

    .line 45
    invoke-static/range {v1 .. v8}, Lcom/oculus/vrshell/OverlayService;->nativeInit(Landroid/app/Service;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oculus/vrshell/OverlayService;->mAppPtr:J

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/ShellApplication;->setActivityContext(Lcom/oculus/vrshell/MainActivity;)V

    .line 56
    invoke-virtual {v0, p0}, Lcom/oculus/vrshell/ShellApplication;->setVrClient(Lcom/oculus/vrshell/ShellApplication$IVrClient;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 61
    sget-object v0, Lcom/oculus/vrshell/OverlayService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
