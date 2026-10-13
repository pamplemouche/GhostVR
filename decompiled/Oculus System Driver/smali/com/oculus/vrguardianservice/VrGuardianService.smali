.class public Lcom/oculus/vrguardianservice/VrGuardianService;
.super Landroid/app/Service;
.source "VrGuardianService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VrGuardianService"


# instance fields
.field private final binder:Lcom/oculus/vrguardianservice/IVrGuardianService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vrguardianservice"

    .line 40
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 254
    new-instance v0, Lcom/oculus/vrguardianservice/VrGuardianService$1;

    invoke-direct {v0, p0}, Lcom/oculus/vrguardianservice/VrGuardianService$1;-><init>(Lcom/oculus/vrguardianservice/VrGuardianService;)V

    iput-object v0, p0, Lcom/oculus/vrguardianservice/VrGuardianService;->binder:Lcom/oculus/vrguardianservice/IVrGuardianService$Stub;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeFullStartup(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(I)I
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeGetSharedMemoryPublicReadOnlyFd(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(IZ)V
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeSuspendResume(IZ)V

    return-void
.end method

.method static synthetic access$1100(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeSetPackageName(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(IZ)V
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeUpdateAfterMountInBlackRelocDuration(IZ)V

    return-void
.end method

.method static synthetic access$1300(IZZZ)V
    .locals 0

    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeSetClientMgrState(IZZZ)V

    return-void
.end method

.method static synthetic access$1400(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeOnDestroyActiveClient(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/String;I)I
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeCreateClient(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(IIFFFFFFF)V
    .locals 0

    .line 13
    invoke-static/range {p0 .. p8}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeUpdateLocalSpace(IIFFFFFFF)V

    return-void
.end method

.method static synthetic access$300(II)V
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeSetGobbOrientation(II)V

    return-void
.end method

.method static synthetic access$400(IZDZ)V
    .locals 0

    .line 13
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeForceGuardianVisible(IZDZ)V

    return-void
.end method

.method static synthetic access$500(II)I
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeGuardianCmd(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(IIIF)I
    .locals 0

    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeGuardianCmdWithParms(IIIF)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(I)V
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeForceGuardianSetup(I)V

    return-void
.end method

.method static synthetic access$800(ILjava/lang/String;)[B
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeExportGuardianJson(ILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(I[BZ)Z
    .locals 0

    .line 13
    invoke-static {p0, p1, p2}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeImportGuardianJson(I[BZ)Z

    move-result p0

    return p0
.end method

.method private static createDirIfNotExists(Ljava/lang/String;)Z
    .locals 1

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static createGuardianFolderIfNotExists(Landroid/content/Context;)Z
    .locals 0

    .line 98
    invoke-static {p0}, Lcom/oculus/vrguardianservice/VrGuardianService;->getGuardianFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oculus/vrguardianservice/VrGuardianService;->createDirIfNotExists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getGuardianFolder(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/guardian"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeCreateClient(Ljava/lang/String;I)I
.end method

.method private static native nativeExportGuardianJson(ILjava/lang/String;)[B
.end method

.method private static native nativeForceGuardianSetup(I)V
.end method

.method private static native nativeForceGuardianVisible(IZDZ)V
.end method

.method private static native nativeFullStartup(Landroid/content/Context;)V
.end method

.method private static native nativeGetSharedMemoryPublicReadOnlyFd(I)I
.end method

.method private static native nativeGuardianCmd(II)I
.end method

.method private static native nativeGuardianCmdWithParms(IIIF)I
.end method

.method private static native nativeImportGuardianJson(I[BZ)Z
.end method

.method private static native nativeInitVrGuardianService(Landroid/content/Context;)V
.end method

.method private static native nativeOnDestroyActiveClient(ILjava/lang/String;)V
.end method

.method private static native nativeSetClientMgrState(IZZZ)V
.end method

.method private static native nativeSetGobbOrientation(II)V
.end method

.method private static native nativeSetPackageName(ILjava/lang/String;)V
.end method

.method private static native nativeShutdownVrGuardianService()V
.end method

.method private static native nativeSuspendResume(IZ)V
.end method

.method private static native nativeUpdateAfterMountInBlackRelocDuration(IZ)V
.end method

.method private static native nativeUpdateLocalSpace(IIFFFFFFF)V
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "VrGuardianService"

    const-string v0, "onBind"

    .line 87
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lcom/oculus/vrguardianservice/VrGuardianService;->binder:Lcom/oculus/vrguardianservice/IVrGuardianService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "VrGuardianService"

    const-string v1, "onCreate"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x108009b

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "VR Guardian Service"

    .line 55
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 57
    invoke-virtual {p0, v1, v0}, Lcom/oculus/vrguardianservice/VrGuardianService;->startForeground(ILandroid/app/Notification;)V

    .line 59
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/VrGuardianService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeInitVrGuardianService(Landroid/content/Context;)V

    .line 61
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "VrGuardianService"

    const-string v1, "onCreate - finished"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "VrGuardianService"

    const-string v1, "onDestroy"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lcom/oculus/vrguardianservice/VrGuardianService;->nativeShutdownVrGuardianService()V

    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "VrGuardianService"

    const-string v1, "onDestroy - finished"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "VrGuardianService"

    const-string p2, "onStartCommand"

    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method
