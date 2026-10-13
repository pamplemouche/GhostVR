.class public Lcom/oculus/vrruntimeservice/VrRuntimeService;
.super Landroid/app/Service;
.source "VrRuntimeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;,
        Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;,
        Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver;,
        Lcom/oculus/vrruntimeservice/VrRuntimeService$UserUnlockReceiver;,
        Lcom/oculus/vrruntimeservice/VrRuntimeService$TopWindowObserver;,
        Lcom/oculus/vrruntimeservice/VrRuntimeService$GuardianClientHandler;,
        Lcom/oculus/vrruntimeservice/VrRuntimeService$ClientInfo;
    }
.end annotation


# static fields
.field private static ACTION_MOUNT_STATE_CHANGED:Ljava/lang/String; = null

.field private static final FEATURE_MISSING:I = 0x0

.field private static final FEATURE_PRESENT:I = 0x2

.field private static final FEATURE_REQUIRED:I = 0x1

.field public static final INTENT_KEY_DATA:Ljava/lang/String; = "intent_data"

.field public static final INTENT_KEY_FROM_PKG:Ljava/lang/String; = "intent_pkg"

.field private static final INTENT_UPDATE_HMDMESH:Ljava/lang/String; = "com.oculus.vrruntimeservice.UPDATE_HMDMESH"

.field private static final KEY_GUARDIAN_ACTION_TYPE:Ljava/lang/String; = "guardian_action_type"

.field private static final KEY_GUARDIAN_EXTRA_DATA:Ljava/lang/String; = "intent_cmd"

.field private static final TAG:Ljava/lang/String; = "VrRuntimeService"

.field private static activityManagerUtils:Lcom/oculus/os/ActivityManagerUtils;

.field private static guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

.field private static guardianClientHandler:Lcom/oculus/vrruntimeservice/VrRuntimeService$GuardianClientHandler;

.field private static hmdMeshUpdateReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver;

.field private static screenStateReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;

.field private static final topWindowObserver:Lcom/oculus/vrruntimeservice/VrRuntimeService$TopWindowObserver;

.field private static topWindowToken:Landroid/os/IBinder;

.field private static topWindowUid:I

.field private static userUnlockReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$UserUnlockReceiver;

.field private static final windowToClientMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Landroid/os/IBinder;",
            "Lcom/oculus/vrruntimeservice/VrRuntimeService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final binder:Lcom/oculus/vrruntimeservice/IVrRuntimeService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 96
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->windowToClientMap:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 98
    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->activityManagerUtils:Lcom/oculus/os/ActivityManagerUtils;

    const-string v1, "vrruntimeservice"

    .line 101
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 104
    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->topWindowToken:Landroid/os/IBinder;

    const/4 v1, -0x1

    .line 105
    sput v1, Lcom/oculus/vrruntimeservice/VrRuntimeService;->topWindowUid:I

    .line 107
    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    .line 108
    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClientHandler:Lcom/oculus/vrruntimeservice/VrRuntimeService$GuardianClientHandler;

    .line 174
    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->screenStateReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;

    .line 175
    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->userUnlockReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$UserUnlockReceiver;

    .line 176
    new-instance v1, Lcom/oculus/vrruntimeservice/VrRuntimeService$TopWindowObserver;

    invoke-direct {v1, v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService$TopWindowObserver;-><init>(Lcom/oculus/vrruntimeservice/VrRuntimeService$1;)V

    sput-object v1, Lcom/oculus/vrruntimeservice/VrRuntimeService;->topWindowObserver:Lcom/oculus/vrruntimeservice/VrRuntimeService$TopWindowObserver;

    .line 177
    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->hmdMeshUpdateReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver;

    const-string v0, "com.oculus.intent.action.MOUNT_STATE_CHANGED"

    .line 179
    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->ACTION_MOUNT_STATE_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 922
    new-instance v0, Lcom/oculus/vrruntimeservice/VrRuntimeService$1;

    invoke-direct {v0, p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService$1;-><init>(Lcom/oculus/vrruntimeservice/VrRuntimeService;)V

    iput-object v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->binder:Lcom/oculus/vrruntimeservice/IVrRuntimeService$Stub;

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeSetGuardianServiceFD(I)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Hashtable;
    .locals 1

    .line 32
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->windowToClientMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$1000(Z)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeScreenStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->ACTION_MOUNT_STATE_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(I)I
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeGetSharedMemoryPublicReadOnlyFd(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(I)I
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeGetSharedMemoryPrivateReadWriteFd(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(I)Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeGetBufferObjectImportInfo(I)Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(IZ)Z
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeEnableRendering(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(IILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeCreateTextureSwapChain(IILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(IILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeCreateAndroidSurfaceSwapChain(IILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(IIZ)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeDestroyTextureSwapChain(IIZ)V

    return-void
.end method

.method static synthetic access$1900(IILcom/oculus/vrruntimeservice/SwapChainSamplerState;)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeSetTextureSwapChainSamplerState(IILcom/oculus/vrruntimeservice/SwapChainSamplerState;)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .line 32
    sget v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->topWindowUid:I

    return v0
.end method

.method static synthetic access$2000(IIIIZ)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeSetAndroidSurfaceParameters(IIIIZ)V

    return-void
.end method

.method static synthetic access$202(I)I
    .locals 0

    .line 32
    sput p0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->topWindowUid:I

    return p0
.end method

.method static synthetic access$2100()Lcom/oculus/vrguardianservice/VrGuardianClient;
    .locals 1

    .line 32
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    return-object v0
.end method

.method static synthetic access$2200(IIFFFFFFF)V
    .locals 0

    .line 32
    invoke-static/range {p0 .. p8}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeUpdateLocalSpace(IIFFFFFFF)V

    return-void
.end method

.method static synthetic access$2300(II)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeSetGobbOrientation(II)V

    return-void
.end method

.method static synthetic access$2400(IZDZ)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeForceGuardianVisible(IZDZ)V

    return-void
.end method

.method static synthetic access$2500(II)I
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeGuardianCmd(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$2600(IIIF)I
    .locals 0

    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeGuardianCmdWithParms(IIIF)I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(I)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeForceGuardianSetup(I)V

    return-void
.end method

.method static synthetic access$2800(ILjava/lang/String;)[B
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeExportGuardianJson(ILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(I[BZ)Z
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeImportGuardianJson(I[BZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Landroid/os/IBinder;
    .locals 1

    .line 32
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->topWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$3000(I)Z
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeIsSystemDialogActive(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 32
    sput-object p0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->topWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$3100(IFFZ)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeShowSystemDialogRecenterTimer(IFFZ)V

    return-void
.end method

.method static synthetic access$3200(I)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeHideSystemDialogRecenterTimer(I)V

    return-void
.end method

.method static synthetic access$3300(IFF)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeShowSystemDialogGazeTimer(IFF)V

    return-void
.end method

.method static synthetic access$3400(I)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeHideSystemDialogGazeTimer(I)V

    return-void
.end method

.method static synthetic access$3500(IIDLjava/lang/String;)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeShowSystemDialogMessageDialog(IIDLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(II)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeHideSystemDialogMessageDialog(II)V

    return-void
.end method

.method static synthetic access$3700(I)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeStopScreenCapture(I)V

    return-void
.end method

.method static synthetic access$3800(IZ)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeSetScreenCaptureInhibit(IZ)V

    return-void
.end method

.method static synthetic access$3900(Ljava/lang/String;IZ)I
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeCreateClient(Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(I)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeFocusedWindowChanged(I)V

    return-void
.end method

.method static synthetic access$500()V
    .locals 0

    .line 32
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeSetDeviceUnlocked()V

    return-void
.end method

.method static synthetic access$900()V
    .locals 0

    .line 32
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeUpdateHmdMesh()V

    return-void
.end method

.method public static checkPackageHasFeature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 342
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 346
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x4000

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 347
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    if-eqz p1, :cond_3

    .line 349
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    array-length p1, p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    :try_start_1
    aget-object v3, p0, v1

    .line 351
    iget-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 353
    iget-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 355
    iget v3, v3, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_2
    const-string p1, "Could not retrieve data: "

    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_3
    const-string p0, "VrRuntimeService"

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CompatMode result is \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static createDirIfNotExists(Ljava/lang/String;)Z
    .locals 1

    .line 304
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 308
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static createSubdirStructure(Landroid/content/Context;)Z
    .locals 2

    .line 297
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->getFilesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/guardian"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->createDirIfNotExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/compositor"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->createDirIfNotExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static destroyClientInternal(Ljava/lang/String;IILandroid/os/IBinder;)V
    .locals 3

    const-string v0, "VrRuntimeService"

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrRuntimeService: destroyClientInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", pid: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", window: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-static {p1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeDestroyClient(I)V

    if-eqz p3, :cond_0

    .line 915
    sget-object p0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->windowToClientMap:Ljava/util/Hashtable;

    monitor-enter p0

    .line 917
    :try_start_0
    sget-object p1, Lcom/oculus/vrruntimeservice/VrRuntimeService;->windowToClientMap:Ljava/util/Hashtable;

    invoke-virtual {p1, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public static getClientPackageName(I)Ljava/lang/String;
    .locals 0

    .line 287
    invoke-static {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeGetClientPackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFilesDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 185
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "VrRuntimeService"

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private static guardianClientForceGuardianVisible(ZDZ)V
    .locals 1

    .line 467
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    if-eqz v0, :cond_0

    .line 469
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oculus/vrguardianservice/VrGuardianClient;->forceGuardianVisible(ZDZ)V

    :cond_0
    return-void
.end method

.method private static guardianClientOnDestroyActiveClient(Ljava/lang/String;)V
    .locals 1

    .line 491
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    if-eqz v0, :cond_0

    .line 493
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0, p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->onDestroyActiveClient(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static guardianClientSetClientMgrState(ZZZ)V
    .locals 1

    .line 483
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    if-eqz v0, :cond_0

    .line 485
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oculus/vrguardianservice/VrGuardianClient;->setClientMgrState(ZZZ)V

    :cond_0
    return-void
.end method

.method private static guardianClientSetGuardianPackage(Ljava/lang/String;)V
    .locals 1

    .line 459
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    if-eqz v0, :cond_0

    .line 461
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0, p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->setPackageName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static guardianClientSuspendResumeGuardian(Z)V
    .locals 1

    .line 451
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    if-eqz v0, :cond_0

    .line 453
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0, p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->suspendResume(Z)V

    :cond_0
    return-void
.end method

.method private static guardianClientUpdateAfterMountInBlackRelocDuration(Z)V
    .locals 1

    .line 475
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    if-eqz v0, :cond_0

    .line 477
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {v0, p0}, Lcom/oculus/vrguardianservice/VrGuardianClient;->updateAfterMountInBlackRelocDuration(Z)V

    :cond_0
    return-void
.end method

.method private static native nativeCreateAndroidSurfaceSwapChain(IILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;
.end method

.method private static native nativeCreateClient(Ljava/lang/String;IZ)I
.end method

.method private static native nativeCreateTextureSwapChain(IILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;
.end method

.method private static native nativeDestroyClient(I)V
.end method

.method private static native nativeDestroyTextureSwapChain(IIZ)V
.end method

.method private static native nativeEnableRendering(IZ)Z
.end method

.method private static native nativeExportGuardianJson(ILjava/lang/String;)[B
.end method

.method private static native nativeFocusedWindowChanged(I)V
.end method

.method private static native nativeForceGuardianSetup(I)V
.end method

.method private static native nativeForceGuardianVisible(IZDZ)V
.end method

.method private static native nativeGetBufferObjectImportInfo(I)Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;
.end method

.method private static native nativeGetClientPackageName(I)Ljava/lang/String;
.end method

.method private static native nativeGetSharedMemoryPrivateReadWriteFd(I)I
.end method

.method private static native nativeGetSharedMemoryPublicReadOnlyFd(I)I
.end method

.method private static native nativeGuardianCmd(II)I
.end method

.method private static native nativeGuardianCmdWithParms(IIIF)I
.end method

.method private static native nativeHideSystemDialogGazeTimer(I)V
.end method

.method private static native nativeHideSystemDialogMessageDialog(II)V
.end method

.method private static native nativeHideSystemDialogRecenterTimer(I)V
.end method

.method private static native nativeImportGuardianJson(I[BZ)Z
.end method

.method private static native nativeInitVrRuntimeService(Landroid/content/Context;Z)V
.end method

.method private static native nativeIsSystemDialogActive(I)Z
.end method

.method private static native nativeScreenStateChanged(Z)V
.end method

.method private static native nativeSetAndroidSurfaceParameters(IIIIZ)V
.end method

.method private static native nativeSetDeviceUnlocked()V
.end method

.method private static native nativeSetGobbOrientation(II)V
.end method

.method private static native nativeSetGuardianServiceFD(I)V
.end method

.method private static native nativeSetScreenCaptureInhibit(IZ)V
.end method

.method private static native nativeSetTextureSwapChainSamplerState(IILcom/oculus/vrruntimeservice/SwapChainSamplerState;)V
.end method

.method private static native nativeShouldUseGuardianService()Z
.end method

.method private static native nativeShowSystemDialogGazeTimer(IFF)V
.end method

.method private static native nativeShowSystemDialogMessageDialog(IIDLjava/lang/String;)V
.end method

.method private static native nativeShowSystemDialogRecenterTimer(IFFZ)V
.end method

.method private static native nativeShutdownVrRuntimeService()V
.end method

.method private static native nativeStopScreenCapture(I)V
.end method

.method private static native nativeUpdateHmdMesh()V
.end method

.method private static native nativeUpdateLocalSpace(IIFFFFFFF)V
.end method

.method public static sendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const-string v0, "VrRuntimeService"

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastIntent - action: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' data: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " intent_pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " intent_cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 323
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "intent_data"

    .line 325
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    .line 328
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "intent_pkg"

    .line 330
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p1, "guardian_action_type"

    .line 333
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "intent_cmd"

    .line 334
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000

    .line 336
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "VrRuntimeService"

    const-string v0, "onBind"

    .line 281
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->binder:Lcom/oculus/vrruntimeservice/IVrRuntimeService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "VrRuntimeService"

    const-string v1, "onCreate"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 204
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x108009b

    .line 205
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "VR Runtime Service"

    .line 206
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 208
    invoke-virtual {p0, v1, v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->startForeground(ILandroid/app/Notification;)V

    .line 210
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    .line 212
    invoke-virtual {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    xor-int/2addr v0, v1

    invoke-static {v2, v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeInitVrRuntimeService(Landroid/content/Context;Z)V

    .line 214
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->activityManagerUtils:Lcom/oculus/os/ActivityManagerUtils;

    if-nez v0, :cond_0

    const-string v0, "VrRuntimeService"

    const-string v1, "Creating ActivityManagerUtils"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Lcom/oculus/os/ActivityManagerUtils;

    invoke-direct {v0}, Lcom/oculus/os/ActivityManagerUtils;-><init>()V

    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->activityManagerUtils:Lcom/oculus/os/ActivityManagerUtils;

    .line 218
    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 220
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->activityManagerUtils:Lcom/oculus/os/ActivityManagerUtils;

    sget-object v1, Lcom/oculus/vrruntimeservice/VrRuntimeService;->topWindowObserver:Lcom/oculus/vrruntimeservice/VrRuntimeService$TopWindowObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/os/ActivityManagerUtils;->setWindowLayoutObserver(Lcom/oculus/os/ActivityManagerUtils$WindowLayoutObserver;Landroid/os/Handler;)Z

    .line 224
    :cond_0
    new-instance v0, Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;

    invoke-direct {v0, p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;-><init>(Lcom/oculus/vrruntimeservice/VrRuntimeService;)V

    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->screenStateReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    sget-object v1, Lcom/oculus/vrruntimeservice/VrRuntimeService;->ACTION_MOUNT_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    sget-object v1, Lcom/oculus/vrruntimeservice/VrRuntimeService;->screenStateReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    new-instance v0, Lcom/oculus/vrruntimeservice/VrRuntimeService$UserUnlockReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oculus/vrruntimeservice/VrRuntimeService$UserUnlockReceiver;-><init>(Lcom/oculus/vrruntimeservice/VrRuntimeService$1;)V

    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->userUnlockReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$UserUnlockReceiver;

    .line 232
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->userUnlockReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$UserUnlockReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    new-instance v0, Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver;

    invoke-direct {v0, p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver;-><init>(Lcom/oculus/vrruntimeservice/VrRuntimeService;)V

    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->hmdMeshUpdateReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver;

    .line 235
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->hmdMeshUpdateReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.oculus.vrruntimeservice.UPDATE_HMDMESH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeShouldUseGuardianService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    new-instance v0, Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-direct {v0}, Lcom/oculus/vrguardianservice/VrGuardianClient;-><init>()V

    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    .line 240
    new-instance v0, Lcom/oculus/vrruntimeservice/VrRuntimeService$GuardianClientHandler;

    invoke-direct {v0, v1}, Lcom/oculus/vrruntimeservice/VrRuntimeService$GuardianClientHandler;-><init>(Lcom/oculus/vrruntimeservice/VrRuntimeService$1;)V

    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClientHandler:Lcom/oculus/vrruntimeservice/VrRuntimeService$GuardianClientHandler;

    .line 242
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClient:Lcom/oculus/vrguardianservice/VrGuardianClient;

    invoke-virtual {p0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/oculus/vrruntimeservice/VrRuntimeService;->guardianClientHandler:Lcom/oculus/vrruntimeservice/VrRuntimeService$GuardianClientHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrguardianservice/VrGuardianClient;->initialize(Landroid/content/Context;Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;)V

    .line 245
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "VrRuntimeService"

    const-string v1, "onCreate - finished"

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "VrRuntimeService"

    const-string v1, "onDestroy"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->nativeShutdownVrRuntimeService()V

    .line 257
    sget-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->screenStateReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;

    invoke-virtual {p0, v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 258
    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->screenStateReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;

    .line 260
    sget-object v1, Lcom/oculus/vrruntimeservice/VrRuntimeService;->userUnlockReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$UserUnlockReceiver;

    invoke-virtual {p0, v1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->userUnlockReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$UserUnlockReceiver;

    .line 263
    sget-object v1, Lcom/oculus/vrruntimeservice/VrRuntimeService;->hmdMeshUpdateReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver;

    invoke-virtual {p0, v1}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    sput-object v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;->hmdMeshUpdateReceiver:Lcom/oculus/vrruntimeservice/VrRuntimeService$HmdMeshUpdateReceiver;

    .line 266
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "VrRuntimeService"

    const-string v1, "onDestroy - finished"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "VrRuntimeService"

    const-string p2, "onStartCommand"

    .line 274
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method
