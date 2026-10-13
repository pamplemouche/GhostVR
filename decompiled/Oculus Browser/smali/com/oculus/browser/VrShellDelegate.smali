.class public abstract Lcom/oculus/browser/VrShellDelegate;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LkT;


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final ENTER_VR_CANCELLED:I = 0x1

.field public static final ENTER_VR_NOT_NECESSARY:I = 0x0

.field public static final ENTER_VR_REQUESTED:I = 0x2

.field public static final ENTER_VR_SUCCEEDED:I = 0x3

.field public static final POLL_INTERVAL_MS:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = "VrShellDelegate.Oculus"

.field public static final VR_NAV_DELAY_MS:I = 0x1388

.field public static sInstance:Lcom/oculus/browser/VrShellDelegate;


# instance fields
.field public mBoundActivity:Landroid/app/Activity;

.field public final mContext:Landroid/content/Context;

.field public mInPause:Z

.field public mInVr:Z

.field public mIsEnteringVr:Z

.field public mListeningForWebVrActivate:Z

.field public mListeningForWebVrActivateBeforePause:Z

.field public mMountState:Z

.field public mNativeVrShellDelegate:J

.field public mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

.field public mRequestedWebVR:Z

.field public mRestoreOrientation:I

.field public mRestoreSystemUiVisibilityFlag:I

.field public mShutdownVRHandler:Landroid/os/Handler;

.field public mStartHistoryIndex:I

.field public mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field public mTabObserver:LpH0;

.field public mVrShell:Lcom/oculus/browser/VrShellImpl;

.field public pollRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRestoreOrientation:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VrShellDelegate.Oculus"

    const-string v4, "VrShellDelegate CTOR"

    .line 3
    invoke-static {v3, v4, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/oculus/vrapi/SystemProps;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 5
    invoke-static {}, Lcom/oculus/vrapi/SystemProps;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "Device: %s %s"

    .line 6
    invoke-static {v3, v4, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iput-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    .line 8
    iput-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mInPause:Z

    .line 9
    iput v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRestoreSystemUiVisibilityFlag:I

    .line 10
    iput v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRestoreOrientation:I

    .line 11
    iput-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mIsEnteringVr:Z

    .line 12
    iput-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mMountState:Z

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mShutdownVRHandler:Landroid/os/Handler;

    .line 14
    iput v1, p0, Lcom/oculus/browser/VrShellDelegate;->mStartHistoryIndex:I

    .line 15
    iput-object p1, p0, Lcom/oculus/browser/VrShellDelegate;->mContext:Landroid/content/Context;

    .line 16
    new-instance p1, Lcom/oculus/browser/VrShellDelegate$1;

    invoke-direct {p1, p0}, Lcom/oculus/browser/VrShellDelegate$1;-><init>(Lcom/oculus/browser/VrShellDelegate;)V

    iput-object p1, p0, Lcom/oculus/browser/VrShellDelegate;->mTabObserver:LpH0;

    return-void
.end method

.method public static synthetic access$000(Lcom/oculus/browser/VrShellDelegate;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/browser/VrShellDelegate;->onNavigationStart(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic access$100(Lcom/oculus/browser/VrShellDelegate;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;ZZZZLjava/lang/Integer;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/oculus/browser/VrShellDelegate;->onNavigationFinish(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;ZZZZLjava/lang/Integer;I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/oculus/browser/VrShellDelegate;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oculus/browser/VrShellDelegate;->onLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/oculus/browser/VrShellDelegate;Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/oculus/browser/VrShellDelegate;->onLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/oculus/browser/VrShellDelegate;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/oculus/browser/VrShellDelegate;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oculus/browser/VrShellDelegate;->enterVRWithOrientationSet(Z)V

    return-void
.end method

.method public static synthetic access$600(Lcom/oculus/browser/VrShellDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->onMount()V

    return-void
.end method

.method public static synthetic access$700(Lcom/oculus/browser/VrShellDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->onUnmount()V

    return-void
.end method

.method public static synthetic access$800(Lcom/oculus/browser/VrShellDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->startWaitingForPresent()V

    return-void
.end method

.method public static synthetic access$900(Lcom/oculus/browser/VrShellDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->executeShutdownVR()V

    return-void
.end method

.method private canEnterVR()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    .line 2
    :cond_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 3
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-nez v0, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "can\'t enter VR: !LibraryLoader.isInitialized()"

    .line 4
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private clearVrModeWindowFlags()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3
    iget v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRestoreSystemUiVisibilityFlag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/oculus/browser/VrShellDelegate;->mRestoreSystemUiVisibilityFlag:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 5
    :cond_1
    iput v1, p0, Lcom/oculus/browser/VrShellDelegate;->mRestoreSystemUiVisibilityFlag:I

    return-void
.end method

.method private enterVR()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->hasBoundActivity()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "enterVR activity = "

    .line 2
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VrShellDelegate.Oculus"

    invoke-static {v3, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const-string v2, "VrShellDelegate.enterVR"

    .line 3
    invoke-static {v2, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mInPause:Z

    .line 5
    iget-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRequestedWebVR:Z

    invoke-direct {p0, v2, v0}, Lcom/oculus/browser/VrShellDelegate;->setEnterVRResult(ZZ)V

    return-void

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->canEnterVR()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRequestedWebVR:Z

    invoke-direct {p0, v1, v0}, Lcom/oculus/browser/VrShellDelegate;->setEnterVRResult(ZZ)V

    return-void

    .line 9
    :cond_2
    iput-boolean v2, p0, Lcom/oculus/browser/VrShellDelegate;->mIsEnteringVr:Z

    .line 10
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRestoreOrientation:I

    .line 11
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 12
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->setupVrModeWindowFlags()V

    .line 13
    iget-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRequestedWebVR:Z

    .line 14
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/oculus/browser/VrShellDelegate$2;

    invoke-direct {v2, p0, v0}, Lcom/oculus/browser/VrShellDelegate$2;-><init>(Lcom/oculus/browser/VrShellDelegate;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private enterVRWithOrientationSet(Z)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterVRWithOrientationSet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VrShellDelegate.Oculus"

    invoke-static {v3, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mIsEnteringVr:Z

    .line 4
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/oculus/browser/VrShellDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v2, :cond_1

    if-eq v2, v0, :cond_1

    .line 6
    iget-object v3, p0, Lcom/oculus/browser/VrShellDelegate;->mTabObserver:LpH0;

    .line 7
    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v2, v3}, LWT;->b(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lcom/oculus/browser/VrShellDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-nez v2, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/oculus/browser/VrShellDelegate;->createVrShell(Lorg/chromium/chrome/browser/tab/Tab;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/oculus/browser/VrShellDelegate;->mRestoreOrientation:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 11
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->clearVrModeWindowFlags()V

    .line 12
    invoke-direct {p0, v1, p1}, Lcom/oculus/browser/VrShellDelegate;->setEnterVRResult(ZZ)V

    return-void

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->notifyOnNavigationStatusChange()V

    .line 14
    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    iget-object v2, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/oculus/browser/VrShellImpl;->swapHostActivity(Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    .line 16
    invoke-static {}, Lcom/oculus/vrapi/SystemProps;->getHmtMounted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oculus/browser/VrShellDelegate;->mMountState:Z

    .line 17
    new-instance v2, Lcom/oculus/browser/VrShellDelegate$3;

    invoke-direct {v2, p0}, Lcom/oculus/browser/VrShellDelegate$3;-><init>(Lcom/oculus/browser/VrShellDelegate;)V

    iput-object v2, p0, Lcom/oculus/browser/VrShellDelegate;->pollRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    .line 18
    invoke-static {v2, v3, v4}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;J)V

    .line 19
    iget-object v2, p0, Lcom/oculus/browser/VrShellDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v2, :cond_3

    .line 20
    iput-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 21
    iget-object v2, p0, Lcom/oculus/browser/VrShellDelegate;->mTabObserver:LpH0;

    .line 22
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, v2}, LWT;->a(Ljava/lang/Object;)Z

    .line 23
    :cond_3
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->addVrViewsIfNeeded()V

    .line 24
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    invoke-virtual {v0}, Lcom/oculus/browser/VrShellImpl;->onResume()V

    .line 25
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-static {v0}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 26
    invoke-direct {p0, v1, p1}, Lcom/oculus/browser/VrShellDelegate;->setEnterVRResult(ZZ)V

    return-void
.end method

.method private executeShutdownVR()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x1388

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "executeShutdownVR, present wasn\'t requested in %d ms"

    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->stopShutdownVRTimer()V

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/oculus/browser/WebVRNavigationDescriptor;->onAbortNavigation()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->notifyOnNavigationStatusChange()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    .line 7
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->shutdownVR()V

    return-void
.end method

.method private exitWebVRPresent()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "exitWebVRPresent"

    .line 2
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->shutdownVR()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private fireControllersOnlyToast()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oculus.vrshell"

    const-string v4, "com.oculus.vrshell.MainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "systemux://dialog/app_launch_blocked_controller_required"

    .line 4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static getInstance()Lcom/oculus/browser/VrShellDelegate;
    .locals 1

    .line 1
    sget-object v0, Lcom/oculus/browser/VrShellDelegate;->sInstance:Lcom/oculus/browser/VrShellDelegate;

    return-object v0
.end method

.method private getNativePointer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    return-wide v0
.end method

.method private native nativeDisplayActivate(JLjava/lang/String;)V
.end method

.method private native nativeFinalizeShutdownVR(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeOnHandsModeChanged(JZ)V
.end method

.method public static native nativeOnLibraryAvailable()V
.end method

.method private native nativeSetPresentResult(JZ)V
.end method

.method private notifyOnNavigationStatusChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lcom/oculus/browser/VrShellImpl;->onNavigationStatusChange(Lcom/oculus/browser/WebVRNavigationDescriptor;)V

    :cond_0
    return-void
.end method

.method private onEnteredVR()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/oculus/browser/WebVRNavigationDescriptor;->resetDeepLinking()V

    :cond_0
    return-void
.end method

.method private onLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 2
    iget-object p2, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getStatus()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const-string p2, "VrShellDelegate.Oculus"

    const-string v1, "onLoadFailed of %s, err = %d, nav status = %d"

    .line 3
    invoke-static {p2, v1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/oculus/browser/WebVRNavigationDescriptor;->isNavigatingTo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->forceExitVR()V

    :cond_1
    return-void
.end method

.method private onLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getStatus()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "VrShellDelegate.Oculus"

    const-string v3, "onLoadFinished of %s, nav status = %d"

    .line 3
    invoke-static {v1, v3, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oculus/browser/WebVRNavigationDescriptor;->isNavigatingTo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    invoke-virtual {p1}, Lcom/oculus/browser/WebVRNavigationDescriptor;->onFinishNavigation()V

    .line 6
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->notifyOnNavigationStatusChange()V

    .line 7
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->startWaitingForPresent()V

    goto :goto_1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "onLoadFinished: seems like there\'s nothing to do..."

    .line 8
    invoke-static {v1, v0, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private onMount()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "Device mounted."

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/browser/VrShellImpl;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->maybeResumeVR()V

    :cond_0
    return-void
.end method

.method public static onNativeLibraryAvailable()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/oculus/browser/VrShellDelegate;->nativeOnLibraryAvailable()V

    return-void
.end method

.method private onNavigationFinish(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;ZZZZLjava/lang/Integer;I)V
    .locals 0

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p1, p5

    .line 1
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    const/4 p7, 0x1

    aput-object p6, p1, p7

    .line 2
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/4 p8, 0x2

    aput-object p6, p1, p8

    const-string p6, "VrShellDelegate.Oculus"

    const-string p8, "onNavigationFinish to %s, error page = %b, errorCode = %d"

    .line 3
    invoke-static {p6, p8, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz p1, :cond_0

    new-array p7, p7, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getUrl()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p7, p5

    const-string p1, "mNavigationSession to %s"

    invoke-static {p6, p1, p7}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_2

    .line 6
    iget-object p1, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/oculus/browser/WebVRNavigationDescriptor;->isNavigatingTo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "chrome://oculus-ntp"

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p4, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->forceExitVR()V

    :cond_2
    return-void
.end method

.method private onNavigationStart(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;ZZ)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 1
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "onNavigationStart to %s, error page = %b, inVR = %b"

    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->forceExitVR()V

    return-void

    .line 3
    :cond_0
    new-instance p3, Lcom/oculus/browser/WebVRNavigationDescriptor;

    invoke-direct {p3, p1, p2}, Lcom/oculus/browser/WebVRNavigationDescriptor;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    .line 4
    invoke-virtual {p3}, Lcom/oculus/browser/WebVRNavigationDescriptor;->onStartNavigation()V

    .line 5
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->notifyOnNavigationStatusChange()V

    :cond_1
    return-void
.end method

.method private onUnmount()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "Device unmounted."

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/browser/VrShellImpl;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->maybePauseVR()V

    :cond_0
    return-void
.end method

.method private pauseVR()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "pauseVR"

    .line 2
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    invoke-virtual {v0}, Lcom/oculus/browser/VrShellImpl;->onPause()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mInPause:Z

    return-void
.end method

.method private presentRequested()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/oculus/browser/VrShellDelegate;->setVSyncPaused(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->presentRequestedInternal()V

    return-void
.end method

.method public static requestToExitVr()V
    .locals 1

    .line 1
    sget-object v0, Lcom/oculus/browser/VrShellDelegate;->sInstance:Lcom/oculus/browser/VrShellDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/oculus/browser/VrShellDelegate;->exitVRIfNecessary()Z

    :cond_0
    return-void
.end method

.method private setEnterVRResult(ZZ)V
    .locals 5

    const-string v0, "VrShellDelegate.enterVR"

    .line 1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnterVRResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VrShellDelegate.Oculus"

    invoke-static {v3, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 4
    iget-wide v2, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    invoke-direct {p0, v2, v3, p1}, Lcom/oculus/browser/VrShellDelegate;->nativeSetPresentResult(JZ)V

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->stopShutdownVRTimer()V

    .line 6
    :cond_1
    iput-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mRequestedWebVR:Z

    return-void
.end method

.method private setListeningForWebVrActivate(Z)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mInPause:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "VrShellDelegate.Oculus"

    const-string v4, "setListeningForWebVrActivate(%b), inPause = %b, navSession.isNull? %b"

    .line 2
    invoke-static {v1, v4, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-boolean p1, p0, Lcom/oculus/browser/VrShellDelegate;->mListeningForWebVrActivate:Z

    if-eqz p1, :cond_3

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/oculus/browser/WebVRNavigationDescriptor;->isNavigatingOrNavigated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->startWaitingForPresent()V

    .line 7
    iget-object p1, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    invoke-virtual {p1}, Lcom/oculus/browser/WebVRNavigationDescriptor;->isDeepLinking()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    .line 8
    invoke-virtual {p1}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "chrome://oculus-ntp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "navigation"

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "deeplink"

    .line 9
    :goto_2
    iget-wide v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/browser/VrShellDelegate;->nativeDisplayActivate(JLjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    invoke-virtual {p1}, Lcom/oculus/browser/WebVRNavigationDescriptor;->onStopNavigation()V

    .line 11
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->notifyOnNavigationStatusChange()V

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    if-eqz p1, :cond_5

    new-array p1, v3, [Ljava/lang/Object;

    .line 12
    iget-object v3, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getStatus()I

    move-result v0

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "setListeningForWebVrActivate: no navigation - no activation. Status %d"

    .line 13
    invoke-static {v1, v0, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    new-array p1, v3, [Ljava/lang/Object;

    .line 14
    iget-object v3, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getStatus()I

    move-result v0

    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "setListeningForWebVrActivate: not listening. Status %d"

    .line 15
    invoke-static {v1, v0, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private setupVrModeWindowFlags()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRestoreSystemUiVisibilityFlag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRestoreSystemUiVisibilityFlag:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 8
    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private startWaitingForPresent()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    iget-object v2, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    invoke-virtual {v2}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "startWaitingForPresent, nav status = %d"

    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const-string v1, "VrShellDelegate.waitingForPresent"

    .line 2
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    invoke-virtual {v0}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/browser/PanelApp;->setFocusToTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 4
    new-instance v0, Lcom/oculus/browser/VrShellDelegate$5;

    invoke-direct {v0, p0}, Lcom/oculus/browser/VrShellDelegate$5;-><init>(Lcom/oculus/browser/VrShellDelegate;)V

    .line 5
    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mShutdownVRHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public abstract activitySupportsPresentation(Landroid/app/Activity;)Z
.end method

.method public abstract addVrViewsIfNeeded()V
.end method

.method public cancelVrNavigation(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    invoke-virtual {v1}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "VrShellDelegate.Oculus"

    const-string v1, "cancelVrNavigation for %s"

    invoke-static {v0, v1, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/oculus/browser/WebVRNavigationDescriptor;->onAbortNavigation()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->notifyOnNavigationStatusChange()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    :cond_1
    return-void
.end method

.method public abstract createVrShell(Lorg/chromium/chrome/browser/tab/Tab;Z)Z
.end method

.method public destroyVrShell()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "destroyVrShell"

    .line 2
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    invoke-virtual {v0}, Lcom/oculus/browser/VrShellImpl;->shutdown()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/oculus/browser/VrShellImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public enterVrInternal()I
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-boolean v2, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->canEnterVR()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "VrShellDelegate.Oculus"

    const-string v5, "enterVrInternal, mInVr = %b canEnterVR = %b"

    invoke-static {v2, v5, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mIsEnteringVr:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->canEnterVR()Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->enterVR()V

    return v0

    :cond_2
    :goto_0
    return v3
.end method

.method public exitVRIfNecessary()Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-boolean v2, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "VrShellDelegate.Oculus"

    const-string v4, "exitVRIfNecessary, inVR? %b"

    invoke-static {v2, v4, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    if-nez v1, :cond_0

    return v3

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->forceExitVR()V

    return v0
.end method

.method public forceExitVR()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "forceExitVR"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0, v0}, Lcom/oculus/browser/VrShellDelegate;->cancelVrNavigation(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 3
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->shutdownVR()V

    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public getBoundActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentHistoryIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->o()LS01;

    move-result-object v0

    .line 5
    iget v0, v0, LS01;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method public getSavedHistoryIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oculus/browser/VrShellDelegate;->mStartHistoryIndex:I

    return v0
.end method

.method public abstract getTabModelSelector()LpI0;
.end method

.method public hasBoundActivity()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivityBound(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAutopresentWebVrScheduled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/browser/WebVRNavigationDescriptor;->isNavigationDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeepLinkingTo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/browser/WebVRNavigationDescriptor;->isDeepLinking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    .line 2
    invoke-virtual {v0}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInVR()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    return v0
.end method

.method public isWebVRPaused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mInPause:Z

    return v0
.end method

.method public isWebVRRequested()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRequestedWebVR:Z

    return v0
.end method

.method public maybePauseVR()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VrShellDelegate.Oculus"

    const-string v3, "maybePauseVR"

    .line 1
    invoke-static {v2, v3, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybePauseVR: set mListeningForWebVrActivateBeforePause to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oculus/browser/VrShellDelegate;->mListeningForWebVrActivate:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mListeningForWebVrActivate:Z

    iput-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mListeningForWebVrActivateBeforePause:Z

    .line 4
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->pauseVR()V

    return-void
.end method

.method public maybeResumeVR()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mRequestedWebVR:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "VrShellDelegate.Oculus"

    const-string v4, "maybeResumeVR, mInVr? = %b, mRequestedWebVR? = %b"

    invoke-static {v1, v4, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v2, p0, Lcom/oculus/browser/VrShellDelegate;->mInPause:Z

    .line 5
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->setupVrModeWindowFlags()V

    .line 6
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 7
    :try_start_0
    iget-object v4, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    invoke-virtual {v4}, Lcom/oculus/browser/VrShellImpl;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "Unable to resume VrShell"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    .line 9
    invoke-static {v1, v5, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->enterVrInternal()I

    :goto_2
    return-void
.end method

.method public onActivityDestroyed()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityDestroyed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VrShellDelegate.Oculus"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->a(LkT;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityPaused()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityPaused! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VrShellDelegate.Oculus"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->maybePauseVR()V

    return-void
.end method

.method public onActivityResumed()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VrShellDelegate.Oculus"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->maybeResumeVR()V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityStarted! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VrShellDelegate.Oculus"

    invoke-static {v1, p1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->isInVR()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->reenterVr()V

    :cond_0
    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 3

    const-string v0, ", curAc: "

    packed-switch p2, :pswitch_data_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unk state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": ac: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 2
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityState.DESTROYED: ac: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Lcom/oculus/browser/VrShellDelegate;->isActivityBound(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->onActivityDestroyed()V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityState.STOPPED: ac: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Lcom/oculus/browser/VrShellDelegate;->isActivityBound(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->onActivityStopped()V

    goto/16 :goto_0

    .line 8
    :pswitch_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityState.PAUSED: ac: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p1}, Lcom/oculus/browser/VrShellDelegate;->isActivityBound(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->onActivityPaused()V

    goto :goto_0

    .line 11
    :pswitch_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityState.RESUMED: ac: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p1}, Lcom/oculus/browser/VrShellDelegate;->isActivityBound(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->onActivityResumed()V

    goto :goto_0

    .line 14
    :pswitch_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityState.STARTED: ac: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    invoke-virtual {p0, p1}, Lcom/oculus/browser/VrShellDelegate;->activitySupportsPresentation(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/oculus/browser/VrShellDelegate;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_0

    .line 17
    :pswitch_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityState.CREATED: ac: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityStopped()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStopped! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VrShellDelegate.Oculus"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->suspendVR()V

    return-void
.end method

.method public onBackPressedInternal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroyCompleted()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroyCompleted! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VrShellDelegate.Oculus"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onExitVrResult(Z)V
    .locals 0

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/oculus/browser/VrShellImpl;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onHandsModeChanged(Z)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/browser/VrShellDelegate;->nativeOnHandsModeChanged(JZ)V

    :cond_0
    return-void
.end method

.method public onNativeLibraryReady()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    const-string v0, "mNativeVrShellDelegate = "

    .line 2
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VrShellDelegate.Oculus"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public abstract presentRequestedInternal()V
.end method

.method public reenterVr()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mIsEnteringVr:Z

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRestoreOrientation:I

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 4
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->setupVrModeWindowFlags()V

    .line 5
    iput-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mRequestedWebVR:Z

    .line 6
    invoke-direct {p0, v1}, Lcom/oculus/browser/VrShellDelegate;->enterVRWithOrientationSet(Z)V

    return-void
.end method

.method public releaseHostActivity()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->removeVrViews()V

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/oculus/browser/VrShellImpl;->swapHostActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public abstract removeVrViews()V
.end method

.method public requestVrNavigation(Lcom/oculus/browser/WebVRNavigationDescriptor;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRequestedWebVR:Z

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/oculus/browser/WebVRNavigationDescriptor;->onRequestNavigation()V

    .line 4
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->notifyOnNavigationStatusChange()V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/oculus/browser/VrShellDelegate$4;

    invoke-direct {v0, p0}, Lcom/oculus/browser/VrShellDelegate$4;-><init>(Lcom/oculus/browser/VrShellDelegate;)V

    .line 8
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, v0}, LWT;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 10
    iget-boolean v2, p1, Lorg/chromium/chrome/browser/tab/Tab;->o:Z

    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "requestVrNavigation: page %s is already loaded. error = %b"

    .line 12
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 14
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->o:Z

    if-nez v0, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->startWaitingForPresent()V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oculus/browser/VrShellDelegate;->cancelVrNavigation(Lorg/chromium/chrome/browser/tab/Tab;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public saveHistoryIndex()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->getCurrentHistoryIndex()I

    move-result v0

    iput v0, p0, Lcom/oculus/browser/VrShellDelegate;->mStartHistoryIndex:I

    return-void
.end method

.method public setHostActivity()V
    .locals 2

    const-string v0, "setHostActivity to "

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVrShell = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/oculus/browser/VrShellImpl;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->removeVrViews()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/oculus/browser/VrShellImpl;->swapHostActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->removeVrViews()V

    :goto_0
    return-void
.end method

.method public setRequestPresentResult()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string v0, "setRequestPresentResult, mBoundActivity = "

    .line 2
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VrShellDelegate.Oculus"

    invoke-static {v3, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->setHostActivity()V

    .line 4
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->enterVrInternal()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Unexpected enum."

    .line 5
    invoke-static {v3, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v3, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    invoke-direct {p0, v3, v4, v2}, Lcom/oculus/browser/VrShellDelegate;->nativeSetPresentResult(JZ)V

    .line 7
    iput-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mRequestedWebVR:Z

    .line 8
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->stopShutdownVRTimer()V

    goto :goto_0

    .line 9
    :cond_2
    iget-wide v2, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    invoke-direct {p0, v2, v3, v1}, Lcom/oculus/browser/VrShellDelegate;->nativeSetPresentResult(JZ)V

    .line 10
    iput-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mRequestedWebVR:Z

    goto :goto_0

    .line 11
    :cond_3
    iget-wide v3, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    invoke-direct {p0, v3, v4, v2}, Lcom/oculus/browser/VrShellDelegate;->nativeSetPresentResult(JZ)V

    .line 12
    iput-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate;->mRequestedWebVR:Z

    .line 13
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->stopShutdownVRTimer()V

    :cond_4
    :goto_0
    return-void
.end method

.method public abstract setVSyncPaused(Z)V
.end method

.method public shutdownVR()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VrShellDelegate.Oculus"

    const-string v3, "shutdownVR"

    .line 2
    invoke-static {v2, v3, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "VrShellDelegate.shutdownVR"

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mRequestedWebVR:Z

    .line 5
    iget-object v3, p0, Lcom/oculus/browser/VrShellDelegate;->mBoundActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 6
    iget v4, p0, Lcom/oculus/browser/VrShellDelegate;->mRestoreOrientation:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Lcom/oculus/browser/VrShellImpl;->onPause()V

    .line 9
    :cond_2
    iget-object v3, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v3}, Lcom/oculus/browser/WebVRNavigationDescriptor;->isNavigating()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 11
    :goto_0
    iget-object v4, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-eqz v4, :cond_4

    if-nez v3, :cond_5

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->clearVrModeWindowFlags()V

    .line 13
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->releaseHostActivity()V

    .line 14
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->destroyVrShell()V

    .line 15
    iget-object v3, p0, Lcom/oculus/browser/VrShellDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v4, p0, Lcom/oculus/browser/VrShellDelegate;->mTabObserver:LpH0;

    .line 16
    iget-object v3, v3, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v3, v4}, LWT;->b(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->getTabModelSelector()LpI0;

    move-result-object v3

    check-cast v3, LrI0;

    invoke-virtual {v3}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    invoke-static {v3}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 18
    iget-wide v3, p0, Lcom/oculus/browser/VrShellDelegate;->mNativeVrShellDelegate:J

    invoke-direct {p0, v3, v4}, Lcom/oculus/browser/VrShellDelegate;->nativeFinalizeShutdownVR(J)V

    .line 19
    iput-object v2, p0, Lcom/oculus/browser/VrShellDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 20
    iput-object v2, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    .line 21
    invoke-virtual {p0, v0}, Lcom/oculus/browser/VrShellDelegate;->setVSyncPaused(Z)V

    .line 22
    :cond_5
    iput-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mInPause:Z

    iput-boolean v0, p0, Lcom/oculus/browser/VrShellDelegate;->mInVr:Z

    .line 23
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method

.method public stopShutdownVRTimer()V
    .locals 3

    const-string v0, "VrShellDelegate.waitingForPresent"

    .line 1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "stopShutdownVRTimer"

    .line 2
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mShutdownVRHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public stopVrNavigation()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "stopVrNavigation"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/oculus/browser/WebVRNavigationDescriptor;->onStopNavigation()V

    .line 4
    invoke-direct {p0}, Lcom/oculus/browser/VrShellDelegate;->notifyOnNavigationStatusChange()V

    :cond_0
    return-void
.end method

.method public suspendVR()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "suspendVR"

    .line 2
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->releaseHostActivity()V

    :cond_0
    return-void
.end method
