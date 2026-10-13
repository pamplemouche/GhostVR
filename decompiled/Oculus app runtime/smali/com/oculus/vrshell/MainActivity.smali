.class public final Lcom/oculus/vrshell/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lcom/oculus/vrshell/ShellApplication$IVrClient;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/MainActivity$UserSwitchReceiver;
    }
.end annotation


# static fields
.field private static final AXIS_AXIS:[I

.field public static final AXIS_NEGATIVE_BUTTON:[I

.field public static final AXIS_POSITIVE_BUTTON:[I

.field private static final TAG:Ljava/lang/String;

.field public static sAppPtr:J

.field private static sHttpClient:Lcom/oculus/common/httpclient/HttpClient;


# instance fields
.field private inCaptivePortal:Z

.field private mActivityStartTime:J

.field private mActivityToken:Landroid/os/IBinder;

.field private mAnalyticsSessionId:Ljava/util/UUID;

.field private mAxisState:[I

.field private mCameraPermissionPermanentlyDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsGearVRDeveloperMode:Z

.field private mIsStandaloneVr:Z

.field private mMicrophonePermissionPermanentlyDisabled:Z

.field private mPermissionRequestingComponent:Ljava/lang/String;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mUserSwitchReceiver:Lcom/oculus/vrshell/MainActivity$UserSwitchReceiver;

.field private mWriteStoragePermissionPermanentlyDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-class v0, Lcom/oculus/vrshell/MainActivity;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    .line 58
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oculus/vrshell/MainActivity;->AXIS_AXIS:[I

    .line 69
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/oculus/vrshell/MainActivity;->AXIS_NEGATIVE_BUTTON:[I

    .line 80
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/oculus/vrshell/MainActivity;->AXIS_POSITIVE_BUTTON:[I

    const-wide/16 v0, 0x0

    .line 801
    sput-wide v0, Lcom/oculus/vrshell/MainActivity;->sAppPtr:J

    return-void

    :array_0
    .array-data 4
        0xf
        0x10
        0x0
        0x1
        0xc
        0xd
        0xb
        0xe
    .end array-data

    :array_1
    .array-data 4
        0x15
        0x13
        0xca
        0xc8
        0xce
        0xcc
        0xce
        0xcc
    .end array-data

    :array_2
    .array-data 4
        0x16
        0x14
        0xcb
        0xc9
        0xcf
        0xcd
        0xcf
        0xcd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/oculus/vrshell/MainActivity;->inCaptivePortal:Z

    const-wide/16 v1, 0x0

    .line 803
    iput-wide v1, p0, Lcom/oculus/vrshell/MainActivity;->mActivityStartTime:J

    .line 804
    iput-boolean v0, p0, Lcom/oculus/vrshell/MainActivity;->mIsGearVRDeveloperMode:Z

    .line 805
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/vrshell/MainActivity;->mAnalyticsSessionId:Ljava/util/UUID;

    const/4 v1, 0x0

    .line 812
    iput-object v1, p0, Lcom/oculus/vrshell/MainActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const-string v1, ""

    .line 813
    iput-object v1, p0, Lcom/oculus/vrshell/MainActivity;->mPermissionRequestingComponent:Ljava/lang/String;

    .line 814
    iput-boolean v0, p0, Lcom/oculus/vrshell/MainActivity;->mCameraPermissionPermanentlyDisabled:Z

    .line 815
    iput-boolean v0, p0, Lcom/oculus/vrshell/MainActivity;->mMicrophonePermissionPermanentlyDisabled:Z

    .line 816
    iput-boolean v0, p0, Lcom/oculus/vrshell/MainActivity;->mWriteStoragePermissionPermanentlyDisabled:Z

    .line 819
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oculus/vrshell/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    .line 823
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/oculus/vrshell/MainActivity;->mAxisState:[I

    .line 825
    iput-boolean v0, p0, Lcom/oculus/vrshell/MainActivity;->mIsStandaloneVr:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrshell/MainActivity;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/oculus/vrshell/MainActivity;->inCaptivePortal:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oculus/vrshell/MainActivity;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/oculus/vrshell/MainActivity;->inCaptivePortal:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private axisButtons(FIII)I
    .locals 16

    move/from16 v0, p4

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/high16 v3, -0x41000000    # -0.5f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eq v3, v0, :cond_5

    if-ne v0, v2, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, p2

    .line 530
    invoke-direct/range {v4 .. v9}, Lcom/oculus/vrshell/MainActivity;->buttonEvent(IIIZZ)Z

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move/from16 v11, p3

    .line 533
    invoke-direct/range {v10 .. v15}, Lcom/oculus/vrshell/MainActivity;->buttonEvent(IIIZZ)Z

    :cond_3
    :goto_1
    if-ne v3, v2, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, p2

    .line 538
    invoke-direct/range {v4 .. v9}, Lcom/oculus/vrshell/MainActivity;->buttonEvent(IIIZZ)Z

    goto :goto_2

    :cond_4
    if-ne v3, v1, :cond_5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move/from16 v11, p3

    .line 541
    invoke-direct/range {v10 .. v15}, Lcom/oculus/vrshell/MainActivity;->buttonEvent(IIIZZ)Z

    :cond_5
    :goto_2
    return v3
.end method

.method private buttonEvent(IIIZZ)Z
    .locals 7

    .line 691
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/oculus/vrshell/MainActivity;->nativeKeyEvent(JIIIZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public static getInternalStorageCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 716
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    .line 718
    sget-object p0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "App getCacheDir() path does not exist!"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 721
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oculus/vrshell/MainActivity;->toFolderPathFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 723
    sget-object v1, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isTrustedAppLaunch(Landroid/content/Intent;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 594
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_launch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 598
    :cond_0
    new-instance v1, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;

    invoke-direct {v1}, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;-><init>()V

    const/4 v2, -0x1

    .line 602
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->getCallingUid(Landroid/os/Bundle;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 603
    :try_start_1
    sget-object v1, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verifying caller for app launch, uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 p1, -0x1

    .line 605
    :goto_0
    sget-object v3, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    const-string v4, "Failed to verify identity of calling application for app launch flow."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eq p1, v2, :cond_1

    .line 608
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/MainActivity;->isTrustedAppLaunchSource(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_2
    return v0
.end method

.method private isTrustedAppLaunchSource(I)Z
    .locals 3

    .line 617
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 618
    invoke-static {p0, v0}, Lcom/oculus/vrshell/panelservice/UnlockulusVerifier;->isUnlockulusUnlocked(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    iget-boolean v1, p0, Lcom/oculus/vrshell/MainActivity;->mIsGearVRDeveloperMode:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 622
    :goto_1
    new-instance v1, Lcom/oculus/vrshell/panelservice/SigCertVerifier;

    .line 624
    invoke-static {v0}, Lcom/oculus/vrshell/panelservice/VerifierConstants;->getFirstPartyOculusStorePackages(Z)Ljava/util/Map;

    move-result-object v0

    .line 626
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Lcom/oculus/vrshell/panelservice/SigCertVerifier;-><init>(Ljava/util/Map;Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 627
    invoke-virtual {v1, p1}, Lcom/oculus/vrshell/panelservice/SigCertVerifier;->checkSigCertInfo(I)Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;

    move-result-object p1

    .line 629
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verifying caller for app launch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-boolean p1, p1, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;->isTrusted:Z

    return p1
.end method

.method private static native nativeInit(Landroid/app/Activity;Landroid/content/Context;Z[Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
.end method

.method private static native nativeJoypadAxis(JFFFF)V
.end method

.method private static native nativeKeyEvent(JIIIZZ)V
.end method

.method private static native nativeNewIntent(J[Ljava/lang/String;)V
.end method

.method private static native nativeOnDestroy(J)V
.end method

.method private static native nativeOnPause(J)V
.end method

.method private static native nativeOnResume(J)V
.end method

.method private static native nativeSurfaceChanged(JLandroid/view/Surface;)V
.end method

.method private static native nativeSurfaceCreated(JLandroid/view/Surface;)V
.end method

.method private static native nativeSurfaceDestroyed(J)V
.end method

.method private static native nativeTouch(JIFFIFF)V
.end method

.method private static native nativeTrustedAppLaunch(J[Ljava/lang/String;)V
.end method

.method private registerUserSwitchReceiver()V
    .locals 3

    .line 729
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 730
    new-instance v1, Lcom/oculus/vrshell/MainActivity$UserSwitchReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oculus/vrshell/MainActivity$UserSwitchReceiver;-><init>(Lcom/oculus/vrshell/MainActivity;Lcom/oculus/vrshell/MainActivity$1;)V

    iput-object v1, p0, Lcom/oculus/vrshell/MainActivity;->mUserSwitchReceiver:Lcom/oculus/vrshell/MainActivity$UserSwitchReceiver;

    .line 731
    iget-object v1, p0, Lcom/oculus/vrshell/MainActivity;->mUserSwitchReceiver:Lcom/oculus/vrshell/MainActivity$UserSwitchReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oculus/vrshell/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startVrNotificationService()V
    .locals 3

    .line 674
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oculus/vrshell/VrNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 675
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static toFolderPathFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    if-eqz p0, :cond_2

    .line 698
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private unregisterUserSwitchReceiver()V
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/oculus/vrshell/MainActivity;->mUserSwitchReceiver:Lcom/oculus/vrshell/MainActivity$UserSwitchReceiver;

    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 465
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 474
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    const/4 v0, 0x1

    .line 475
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    const/16 v2, 0xc

    .line 481
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/16 v3, 0xd

    .line 482
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v7, v2, v4

    if-nez v7, :cond_0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    const/16 v2, 0xb

    .line 484
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/16 v3, 0xe

    .line 485
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    :cond_0
    move v7, v2

    move v8, v3

    .line 487
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v3

    invoke-static/range {v3 .. v8}, Lcom/oculus/vrshell/MainActivity;->nativeJoypadAxis(JFFFF)V

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 490
    iget-object v2, p0, Lcom/oculus/vrshell/MainActivity;->mAxisState:[I

    sget-object v3, Lcom/oculus/vrshell/MainActivity;->AXIS_AXIS:[I

    aget v3, v3, v1

    .line 492
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    sget-object v4, Lcom/oculus/vrshell/MainActivity;->AXIS_NEGATIVE_BUTTON:[I

    aget v4, v4, v1

    sget-object v5, Lcom/oculus/vrshell/MainActivity;->AXIS_POSITIVE_BUTTON:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/oculus/vrshell/MainActivity;->mAxisState:[I

    aget v6, v6, v1

    .line 491
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/oculus/vrshell/MainActivity;->axisButtons(FIII)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 503
    :cond_2
    iget-boolean v0, p0, Lcom/oculus/vrshell/MainActivity;->mIsStandaloneVr:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 505
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v2

    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    const/16 v0, 0xa

    .line 510
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    const/16 v0, 0x9

    .line 511
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v9

    .line 504
    invoke-static/range {v2 .. v9}, Lcom/oculus/vrshell/MainActivity;->nativeTouch(JIFFIFF)V

    .line 514
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .line 549
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 550
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, v6, :cond_1

    .line 554
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 558
    :cond_1
    iget-boolean v0, p0, Lcom/oculus/vrshell/MainActivity;->mIsStandaloneVr:Z

    if-nez v0, :cond_5

    const/16 v0, 0x18

    if-eq v1, v0, :cond_2

    const/16 v3, 0x19

    if-ne v1, v3, :cond_5

    :cond_2
    if-eqz v4, :cond_4

    .line 561
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/ShellApplication;

    if-ne v1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    .line 562
    :goto_1
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/ShellApplication;->adjustVolume(I)V

    :cond_4
    return v6

    .line 570
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/16 v3, 0x501

    if-ne v0, v3, :cond_6

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    .line 573
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 574
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v3

    move-object v0, p0

    .line 571
    invoke-direct/range {v0 .. v5}, Lcom/oculus/vrshell/MainActivity;->buttonEvent(IIIZZ)Z

    return v6
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 646
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v0

    .line 647
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    const/16 v6, 0xa

    .line 651
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    const/16 v7, 0x9

    .line 652
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    .line 645
    invoke-static/range {v0 .. v7}, Lcom/oculus/vrshell/MainActivity;->nativeTouch(JIFFIFF)V

    const/4 p1, 0x1

    return p1
.end method

.method public getAppPtr()J
    .locals 2

    .line 665
    sget-wide v0, Lcom/oculus/vrshell/MainActivity;->sAppPtr:J

    return-wide v0
.end method

.method public getShellPermissions()Lcom/oculus/vrshell/ShellPermissions;
    .locals 8

    .line 385
    new-instance v7, Lcom/oculus/vrshell/ShellPermissions;

    const-string v0, "android.permission.CAMERA"

    .line 387
    invoke-static {v0, p0}, Lcom/oculus/vrshell/util/PermissionHelper;->checkSelfPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/oculus/vrshell/MainActivity;->mCameraPermissionPermanentlyDisabled:Z

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 389
    invoke-static {v0, p0}, Lcom/oculus/vrshell/util/PermissionHelper;->checkSelfPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/oculus/vrshell/MainActivity;->mWriteStoragePermissionPermanentlyDisabled:Z

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 391
    invoke-static {v0, p0}, Lcom/oculus/vrshell/util/PermissionHelper;->checkSelfPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    iget-boolean v6, p0, Lcom/oculus/vrshell/MainActivity;->mMicrophonePermissionPermanentlyDisabled:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/oculus/vrshell/ShellPermissions;-><init>(ZZZZZZ)V

    return-object v7
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/oculus/vrshell/MainActivity;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 636
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v15, p0

    .line 93
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/ShellApplication;

    invoke-virtual {v0}, Lcom/oculus/vrshell/ShellApplication;->initLogging()V

    const-string v0, "ovrapp"

    .line 100
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/vrshell/util/DebugUtil;->isGearVrDeveloperMode(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, v15, Lcom/oculus/vrshell/MainActivity;->mIsGearVRDeveloperMode:Z

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v15, v0}, Lcom/oculus/vrshell/MainActivity;->isTrustedAppLaunch(Landroid/content/Intent;)Z

    move-result v3

    .line 111
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->sHttpClient:Lcom/oculus/common/httpclient/HttpClient;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "sHttpClient was not properly destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->sHttpClient:Lcom/oculus/common/httpclient/HttpClient;

    invoke-virtual {v0}, Lcom/oculus/common/httpclient/HttpClient;->close()V

    .line 117
    :cond_0
    new-instance v0, Lcom/oculus/common/httpclient/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/okhttp/cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/common/httpclient/HttpClient;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/MainActivity;->sHttpClient:Lcom/oculus/common/httpclient/HttpClient;

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/ShellApplication;

    const-string v1, "debug.enableAutomation"

    .line 121
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/ShellApplication;->getPreferenceString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/ShellApplication;->getPreferenceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 124
    invoke-virtual {v0}, Lcom/oculus/vrshell/ShellApplication;->getIsStandaloneVr()Z

    move-result v1

    iput-boolean v1, v15, Lcom/oculus/vrshell/MainActivity;->mIsStandaloneVr:Z

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/vrshell/IntentParser;->ToEnvironment(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v4

    const v6, 0xc53a99b

    iget-boolean v7, v15, Lcom/oculus/vrshell/MainActivity;->mIsGearVRDeveloperMode:Z

    iget-boolean v8, v15, Lcom/oculus/vrshell/MainActivity;->mIsStandaloneVr:Z

    iget-object v1, v15, Lcom/oculus/vrshell/MainActivity;->mAnalyticsSessionId:Ljava/util/UUID;

    .line 136
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v12

    .line 139
    invoke-static/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getInternalStorageCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    sget-object v1, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_LUCID_ON:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    .line 140
    invoke-virtual {v1}, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/ShellApplication;->getFeatureFlag(Ljava/lang/String;)Z

    move-result v14

    const-string v5, "9.0.0.232.450"

    move-object/from16 v1, p0

    move-object v2, v0

    .line 126
    invoke-static/range {v1 .. v14}, Lcom/oculus/vrshell/MainActivity;->nativeInit(Landroid/app/Activity;Landroid/content/Context;Z[Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v1

    sput-wide v1, Lcom/oculus/vrshell/MainActivity;->sAppPtr:J

    .line 141
    invoke-virtual {v0, v15}, Lcom/oculus/vrshell/ShellApplication;->setVrClient(Lcom/oculus/vrshell/ShellApplication$IVrClient;)V

    .line 143
    invoke-virtual {v0}, Lcom/oculus/vrshell/ShellApplication;->updateHorizonPrefs()V

    .line 145
    invoke-virtual {v0}, Lcom/oculus/vrshell/ShellApplication;->requestCaptureState()V

    .line 148
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 156
    iget-boolean v2, v15, Lcom/oculus/vrshell/MainActivity;->mIsStandaloneVr:Z

    if-nez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 159
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/oculus/vrshell/ShellApplication;

    invoke-virtual {v2}, Lcom/oculus/vrshell/ShellApplication;->updateCompanionServerPrefs()V

    .line 164
    sget-object v2, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_SYSTEM_UX_APK_ENABLED:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {v15, v2}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->isFeatureEnabled(Landroid/content/Context;Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/oculus/vrshell/ShellApplication;

    invoke-virtual {v2}, Lcom/oculus/vrshell/ShellApplication;->updateSystemRoutes()V

    .line 170
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->startVrNotificationService()V

    const-wide/16 v2, 0x1388

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 174
    invoke-static {v2, v3, v4}, Lcom/oculus/vrshell/LowStorageNotificationScheduler;->scheduleStorageCheck(JLandroid/content/Context;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 181
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 183
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v4, 0x1

    .line 184
    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    const-string v4, "Gatekeepers"

    .line 188
    invoke-virtual {v0, v4}, Lcom/oculus/vrshell/ShellApplication;->getPreferenceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true:oculus_vrshell_webtask"

    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 191
    new-instance v5, Lcom/oculus/vrshell/MainActivity$1;

    invoke-direct {v5, v15, v4}, Lcom/oculus/vrshell/MainActivity$1;-><init>(Lcom/oculus/vrshell/MainActivity;Z)V

    .line 220
    invoke-virtual {v2, v3, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_0
    const/4 v2, 0x2

    .line 232
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x7f0c0080

    .line 237
    invoke-virtual {v15, v1}, Lcom/oculus/vrshell/MainActivity;->setTheme(I)V

    .line 238
    invoke-virtual {v0, v15}, Lcom/oculus/vrshell/ShellApplication;->setActivityContext(Lcom/oculus/vrshell/MainActivity;)V

    .line 241
    invoke-virtual {v0}, Lcom/oculus/vrshell/ShellApplication;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    iput-object v0, v15, Lcom/oculus/vrshell/MainActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 242
    iget-object v0, v15, Lcom/oculus/vrshell/MainActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v15, v0}, Lcom/oculus/vrshell/MainActivity;->setContentView(Landroid/view/View;)V

    .line 243
    iget-object v0, v15, Lcom/oculus/vrshell/MainActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v15}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 250
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "getActivityToken"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 251
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v15, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, v15, Lcom/oculus/vrshell/MainActivity;->mActivityToken:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 253
    sget-object v1, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    const-string v2, "failed to get activity token "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 254
    iput-object v0, v15, Lcom/oculus/vrshell/MainActivity;->mActivityToken:Landroid/os/IBinder;

    .line 257
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/oculus/vrshell/MainActivity;->registerUserSwitchReceiver()V

    .line 259
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "Exiting onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 325
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-direct {p0}, Lcom/oculus/vrshell/MainActivity;->unregisterUserSwitchReceiver()V

    .line 329
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->sHttpClient:Lcom/oculus/common/httpclient/HttpClient;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/oculus/common/httpclient/HttpClient;->close()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/MainActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oculus/vrshell/MainActivity;->nativeSurfaceDestroyed(J)V

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oculus/vrshell/MainActivity;->nativeOnDestroy(J)V

    const-wide/16 v0, 0x0

    .line 338
    sput-wide v0, Lcom/oculus/vrshell/MainActivity;->sAppPtr:J

    .line 339
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 583
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/MainActivity;->isTrustedAppLaunch(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v0

    invoke-static {p1}, Lcom/oculus/vrshell/IntentParser;->ToEnvironment(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/oculus/vrshell/MainActivity;->nativeTrustedAppLaunch(J[Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v0

    invoke-static {p1}, Lcom/oculus/vrshell/IntentParser;->ToEnvironment(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/oculus/vrshell/MainActivity;->nativeNewIntent(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 300
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, v0, v0}, Lcom/oculus/vrshell/MainActivity;->overridePendingTransition(II)V

    .line 305
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oculus/vrshell/MainActivity;->nativeOnPause(J)V

    .line 308
    invoke-static {}, Lcom/oculus/analytics/SimpleSessionManager;->getInstance()Lcom/oculus/analytics/SimpleSessionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/analytics/SimpleSessionManager;->setAppBackgrounded(Z)V

    .line 311
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/vrshell/MainActivity;->mActivityStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-int v1, v0

    const-wide/16 v2, 0x0

    .line 312
    iput-wide v2, p0, Lcom/oculus/vrshell/MainActivity;->mActivityStartTime:J

    .line 315
    new-instance v0, Lcom/oculus/analytics/AnalyticsEvent;

    const-string v2, "app_state_change"

    const-string v3, "VrShell"

    invoke-direct {v0, v2, v3}, Lcom/oculus/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "event_type"

    const-string v3, "app_paused"

    .line 316
    invoke-virtual {v0, v2, v3}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsEvent;

    const-string v2, "active_duration_ms"

    .line 317
    invoke-virtual {v0, v2, v1}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraInt(Ljava/lang/String;I)Lcom/oculus/analytics/AnalyticsEvent;

    .line 318
    invoke-virtual {v0}, Lcom/oculus/analytics/AnalyticsEvent;->log()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8

    .line 401
    new-instance p1, Lcom/oculus/analytics/AnalyticsEvent;

    const-string v0, "oculus_vrshell_permissions_grant"

    const-string v1, "VrShell"

    invoke-direct {p1, v0, v1}, Lcom/oculus/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/ShellApplication;

    iget-object v1, p0, Lcom/oculus/vrshell/MainActivity;->mPermissionRequestingComponent:Ljava/lang/String;

    .line 406
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/ShellApplication;->getExistingPanelAppConfiguration(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Lcom/oculus/vrshell/config/PanelAppConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apk_package_name"

    invoke-virtual {p1, v2, v1}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsEvent;

    .line 409
    invoke-virtual {v0}, Lcom/oculus/vrshell/config/PanelAppConfiguration;->getServiceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "service_name"

    invoke-virtual {p1, v2, v1}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsEvent;

    .line 410
    invoke-virtual {v0}, Lcom/oculus/vrshell/config/PanelAppConfiguration;->getVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version_name"

    invoke-virtual {p1, v2, v1}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsEvent;

    .line 411
    invoke-virtual {v0}, Lcom/oculus/vrshell/config/PanelAppConfiguration;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version_code"

    invoke-virtual {p1, v2, v1}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsEvent;

    goto :goto_0

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/oculus/vrshell/MainActivity;->mPermissionRequestingComponent:Ljava/lang/String;

    const-string v2, "component_name"

    invoke-virtual {p1, v2, v1}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsEvent;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "versioning_error"

    .line 415
    invoke-virtual {p1, v3, v0}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraBool(Ljava/lang/String;Z)Lcom/oculus/analytics/AnalyticsEvent;

    const/4 v0, 0x0

    .line 418
    :goto_2
    array-length v3, p2

    if-ge v0, v3, :cond_f

    .line 419
    aget-object v3, p2, v0

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x1b9efa65

    const/4 v7, 0x2

    if-eq v5, v6, :cond_4

    const v6, 0x516a29a7

    if-eq v5, v6, :cond_3

    const v6, 0x6d24f988

    if-eq v5, v6, :cond_2

    goto :goto_3

    :cond_2
    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    goto :goto_3

    :cond_4
    const-string v5, "android.permission.CAMERA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x0

    :cond_5
    :goto_3
    if-eqz v4, :cond_c

    if-eq v4, v2, :cond_9

    if-eq v4, v7, :cond_6

    goto/16 :goto_a

    .line 443
    :cond_6
    aget v3, p3, v0

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_8

    .line 444
    aget-object v4, p2, v0

    .line 446
    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, p0, Lcom/oculus/vrshell/MainActivity;->mWriteStoragePermissionPermanentlyDisabled:Z

    const-string v4, "storage"

    .line 448
    invoke-virtual {p1, v4, v3}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraBool(Ljava/lang/String;Z)Lcom/oculus/analytics/AnalyticsEvent;

    .line 449
    iget-boolean v3, p0, Lcom/oculus/vrshell/MainActivity;->mWriteStoragePermissionPermanentlyDisabled:Z

    const-string v4, "storagePermDisabled"

    invoke-virtual {p1, v4, v3}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraBool(Ljava/lang/String;Z)Lcom/oculus/analytics/AnalyticsEvent;

    goto :goto_a

    .line 432
    :cond_9
    aget v3, p3, v0

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_b

    .line 433
    aget-object v4, p2, v0

    .line 435
    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    :goto_7
    iput-boolean v4, p0, Lcom/oculus/vrshell/MainActivity;->mMicrophonePermissionPermanentlyDisabled:Z

    const-string v4, "mic"

    .line 437
    invoke-virtual {p1, v4, v3}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraBool(Ljava/lang/String;Z)Lcom/oculus/analytics/AnalyticsEvent;

    .line 438
    iget-boolean v3, p0, Lcom/oculus/vrshell/MainActivity;->mMicrophonePermissionPermanentlyDisabled:Z

    const-string v4, "micPermDisabled"

    invoke-virtual {p1, v4, v3}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraBool(Ljava/lang/String;Z)Lcom/oculus/analytics/AnalyticsEvent;

    goto :goto_a

    .line 421
    :cond_c
    aget v3, p3, v0

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    :goto_8
    if-nez v3, :cond_e

    .line 422
    aget-object v4, p2, v0

    .line 424
    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x1

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    :goto_9
    iput-boolean v4, p0, Lcom/oculus/vrshell/MainActivity;->mCameraPermissionPermanentlyDisabled:Z

    const-string v4, "camera"

    .line 426
    invoke-virtual {p1, v4, v3}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraBool(Ljava/lang/String;Z)Lcom/oculus/analytics/AnalyticsEvent;

    .line 427
    iget-boolean v3, p0, Lcom/oculus/vrshell/MainActivity;->mCameraPermissionPermanentlyDisabled:Z

    const-string v4, "cameraPermDisabled"

    invoke-virtual {p1, v4, v3}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraBool(Ljava/lang/String;Z)Lcom/oculus/analytics/AnalyticsEvent;

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 457
    :cond_f
    invoke-virtual {p1}, Lcom/oculus/analytics/AnalyticsEvent;->log()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 271
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0, v0}, Lcom/oculus/vrshell/MainActivity;->overridePendingTransition(II)V

    .line 276
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/oculus/vrshell/MainActivity;->nativeOnResume(J)V

    .line 279
    invoke-static {}, Lcom/oculus/analytics/SimpleSessionManager;->getInstance()Lcom/oculus/analytics/SimpleSessionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/analytics/SimpleSessionManager;->setAppBackgrounded(Z)V

    .line 282
    new-instance v0, Lcom/oculus/analytics/AnalyticsEvent;

    const-string v1, "app_state_change"

    const-string v2, "VrShell"

    invoke-direct {v0, v1, v2}, Lcom/oculus/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_type"

    const-string v2, "app_started"

    .line 283
    invoke-virtual {v0, v1, v2}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsEvent;

    .line 284
    invoke-virtual {v0}, Lcom/oculus/analytics/AnalyticsEvent;->log()V

    .line 286
    iget-boolean v0, p0, Lcom/oculus/vrshell/MainActivity;->mIsStandaloneVr:Z

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/ShellApplication;

    invoke-virtual {v0}, Lcom/oculus/vrshell/ShellApplication;->updateCompanionServerPrefs()V

    .line 291
    sget-object v0, Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;->IS_SYSTEM_UX_APK_ENABLED:Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;

    invoke-static {p0, v0}, Lcom/oculus/vrshell/util/FeatureFlagsUtil;->isFeatureEnabled(Landroid/content/Context;Lcom/oculus/vrshell/util/FeatureFlagsUtil$FeatureFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/ShellApplication;

    invoke-virtual {v0}, Lcom/oculus/vrshell/ShellApplication;->updateSystemRoutes()V

    :cond_0
    return-void
.end method

.method public requestPermissions(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    .line 372
    iget-boolean v0, p0, Lcom/oculus/vrshell/MainActivity;->mCameraPermissionPermanentlyDisabled:Z

    iget-boolean v1, p0, Lcom/oculus/vrshell/MainActivity;->mMicrophonePermissionPermanentlyDisabled:Z

    iget-boolean v2, p0, Lcom/oculus/vrshell/MainActivity;->mWriteStoragePermissionPermanentlyDisabled:Z

    invoke-static {p0, p2, v0, v1, v2}, Lcom/oculus/vrshell/util/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;ZZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 378
    iput-object p1, p0, Lcom/oculus/vrshell/MainActivity;->mPermissionRequestingComponent:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shutdown()V
    .locals 2

    .line 657
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "shutdown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->finish()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 353
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " surfaceChanged() format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " width: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide p2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/oculus/vrshell/MainActivity;->nativeSurfaceChanged(JLandroid/view/Surface;)V

    .line 358
    iput-object p1, p0, Lcom/oculus/vrshell/MainActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 344
    sget-object v0, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " surfaceCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oculus/vrshell/MainActivity;->nativeSurfaceCreated(JLandroid/view/Surface;)V

    .line 347
    iput-object p1, p0, Lcom/oculus/vrshell/MainActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 364
    sget-object p1, Lcom/oculus/vrshell/MainActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " surfaceDestroyed()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oculus/vrshell/MainActivity;->nativeSurfaceDestroyed(J)V

    const/4 p1, 0x0

    .line 367
    iput-object p1, p0, Lcom/oculus/vrshell/MainActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    :cond_0
    return-void
.end method
