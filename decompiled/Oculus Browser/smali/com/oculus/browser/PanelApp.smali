.class public Lcom/oculus/browser/PanelApp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LeI0;
.implements Ly30;
.implements Lcom/oculus/browser/TabModelManager$TabSelectorObserver;
.implements Lcom/oculus/browser/OVRServiceManager$Listener;


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final AUX_CSS_DENSITY:I = 0x1

.field public static final AUX_WINDOW_HEIGHT:I = 0x5a0

.field public static final AUX_WINDOW_WIDTH:I = 0xa00

.field public static final CONTENT_WINDOW_HEIGHT:I = 0x258

.field public static final CONTENT_WINDOW_WIDTH:I = 0x320

.field public static final NAV_UI_BAR_HEIGHT:I = 0x30

.field public static final PANEL_CSS_DENSITY:I = 0x1

.field public static final ROOT_WINDOW_HEIGHT:I = 0x288

.field public static final ROOT_WINDOW_WIDTH:I = 0x320

.field public static final TAG:Ljava/lang/String; = "PanelApp"

.field public static final UI_VERTICAL_SPACING:I

.field public static final cbc:LcY;


# instance fields
.field public mAccessToken:Ljava/lang/String;

.field public mApplication:Lcom/oculus/browser/HydraApplication;

.field public mContentSurface:Lcom/oculus/browser/PanelSurface;

.field public mCookies:Ljava/util/ArrayList;

.field public mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

.field public mDeepLinkReturn:Ljava/lang/String;

.field public mDeepLinkUriParam:Ljava/lang/String;

.field public mDeferredStartupPosted:Z

.field public mFullscreenManager:Lcom/oculus/browser/PanelFullscreenManager;

.field public mIgnoreTabListChanges:Z

.field public mNativePanelApp:J

.field public mNavUiContentView:LnT0;

.field public mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

.field public mNavUiSurface:Lcom/oculus/browser/PanelSurface;

.field public mNavUiWebContentsObserver:Lg11;

.field public mOvrServiceManager:Lcom/oculus/browser/OVRServiceManager;

.field public mShellEnvironment:Lcom/oculus/browser/ShellEnvironment;

.field public mTabModelManager:Lcom/oculus/browser/TabModelManager;

.field public mTabModelObserver:LlI0;

.field public mTabModelSelectorObserver:LxI0;

.field public mTabObserver:LpH0;

.field public mVrApi:Lcom/oculus/browser/VrApi$Wrapper;

.field public mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field public mWebContentsGestureTarget:Lcom/oculus/browser/OculusUiGestureTarget;

.field public mWebNavUiGestureTarget:Lcom/oculus/browser/OculusUiGestureTarget;

.field public final tabWindowIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LcY;

    invoke-direct {v0}, LcY;-><init>()V

    sput-object v0, Lcom/oculus/browser/PanelApp;->cbc:LcY;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/browser/HydraApplication;JLorg/chromium/content_public/browser/WebContents;Lcom/oculus/browser/PanelSurface;Lcom/oculus/browser/PanelSurface;Lcom/oculus/browser/VrApi$Wrapper;Lcom/oculus/browser/TabModelManager;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/oculus/browser/VrApi$Wrapper;

    invoke-direct {v0}, Lcom/oculus/browser/VrApi$Wrapper;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/PanelApp;->mVrApi:Lcom/oculus/browser/VrApi$Wrapper;

    .line 49
    iput-object p1, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    .line 50
    iput-wide p2, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    .line 51
    iput-object p4, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    .line 52
    iput-object p5, p0, Lcom/oculus/browser/PanelApp;->mNavUiSurface:Lcom/oculus/browser/PanelSurface;

    .line 53
    iput-object p6, p0, Lcom/oculus/browser/PanelApp;->mContentSurface:Lcom/oculus/browser/PanelSurface;

    .line 54
    iput-object p7, p0, Lcom/oculus/browser/PanelApp;->mVrApi:Lcom/oculus/browser/VrApi$Wrapper;

    .line 55
    iput-object p8, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/oculus/browser/PanelApp;->tabWindowIndex:I

    .line 57
    iput-object p9, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/browser/HydraApplication;Landroid/view/Surface;Ljava/util/Map;Lcom/oculus/browser/ShellEnvironment;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/oculus/browser/VrApi$Wrapper;

    invoke-direct {v0}, Lcom/oculus/browser/VrApi$Wrapper;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/PanelApp;->mVrApi:Lcom/oculus/browser/VrApi$Wrapper;

    const/4 v0, 0x0

    const-string v1, "PanelApp.constructor"

    .line 3
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/oculus/browser/PanelApp;->mDeferredStartupPosted:Z

    .line 5
    iput-boolean v0, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    .line 6
    iput-object p1, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    .line 7
    iput-object p4, p0, Lcom/oculus/browser/PanelApp;->mShellEnvironment:Lcom/oculus/browser/ShellEnvironment;

    .line 8
    invoke-static {}, Lcom/oculus/browser/Gatekeeper;->getInstance()Lcom/oculus/browser/Gatekeeper;

    move-result-object p1

    invoke-static {}, Lcom/oculus/browser/GatekeeperProjects;->MultiPanel()Lcom/oculus/browser/GatekeeperProjects;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/oculus/browser/Gatekeeper;->getValue(Lcom/oculus/browser/GatekeeperProjects;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    iget-object p4, p0, Lcom/oculus/browser/PanelApp;->mShellEnvironment:Lcom/oculus/browser/ShellEnvironment;

    invoke-virtual {p4}, Lcom/oculus/browser/ShellEnvironment;->getPanelId()I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/oculus/browser/HydraApplication;->allocateWindowIndexForPanelId(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iput p1, p0, Lcom/oculus/browser/PanelApp;->tabWindowIndex:I

    .line 11
    iget-object p4, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-static {p1, p4, p0}, Lcom/oculus/browser/TabModelManager;->createInstance(ILandroid/content/Context;LeI0;)Lcom/oculus/browser/TabModelManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    .line 12
    iget-object p4, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {p1, p4, p0}, Lcom/oculus/browser/TabModelManager;->loadModels(Landroid/content/Context;Ly30;)V

    const-string p1, "navui"

    .line 13
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    const-string v2, "#main"

    if-eqz p4, :cond_1

    .line 14
    new-instance p4, Lcom/oculus/browser/PanelSurface;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/Surface;

    iget-object v3, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    .line 15
    invoke-virtual {v3}, Lcom/oculus/browser/TabModelManager;->getNavUiRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v3

    invoke-direct {p4, p3, v3, p1}, Lcom/oculus/browser/PanelSurface;-><init>(Landroid/view/Surface;Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/oculus/browser/PanelApp;->mNavUiSurface:Lcom/oculus/browser/PanelSurface;

    .line 16
    new-instance p1, Lcom/oculus/browser/PanelSurface;

    iget-object p3, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    .line 17
    invoke-virtual {p3}, Lcom/oculus/browser/TabModelManager;->getContentRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object p3

    invoke-direct {p1, p2, p3, v2}, Lcom/oculus/browser/PanelSurface;-><init>(Landroid/view/Surface;Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oculus/browser/PanelApp;->mContentSurface:Lcom/oculus/browser/PanelSurface;

    goto :goto_1

    :cond_1
    const-string p1, "content"

    .line 18
    new-instance p4, Lcom/oculus/browser/PanelSurface;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/Surface;

    iget-object v3, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    .line 19
    invoke-virtual {v3}, Lcom/oculus/browser/TabModelManager;->getContentRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v3

    invoke-direct {p4, p3, v3, p1}, Lcom/oculus/browser/PanelSurface;-><init>(Landroid/view/Surface;Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/oculus/browser/PanelApp;->mContentSurface:Lcom/oculus/browser/PanelSurface;

    .line 20
    new-instance p1, Lcom/oculus/browser/PanelSurface;

    iget-object p3, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    .line 21
    invoke-virtual {p3}, Lcom/oculus/browser/TabModelManager;->getNavUiRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object p3

    invoke-direct {p1, p2, p3, v2}, Lcom/oculus/browser/PanelSurface;-><init>(Landroid/view/Surface;Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oculus/browser/PanelApp;->mNavUiSurface:Lcom/oculus/browser/PanelSurface;

    .line 22
    :goto_1
    iget-object p1, p0, Lcom/oculus/browser/PanelApp;->mFullscreenManager:Lcom/oculus/browser/PanelFullscreenManager;

    if-nez p1, :cond_2

    .line 23
    new-instance p1, Lcom/oculus/browser/PanelFullscreenManager;

    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oculus/browser/PanelFullscreenManager;-><init>(LpI0;)V

    iput-object p1, p0, Lcom/oculus/browser/PanelApp;->mFullscreenManager:Lcom/oculus/browser/PanelFullscreenManager;

    .line 24
    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 25
    new-instance p2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p2, p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 26
    invoke-virtual {p2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p2

    .line 27
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 28
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v2

    iget-object v4, p0, Lcom/oculus/browser/PanelApp;->mNavUiSurface:Lcom/oculus/browser/PanelSurface;

    iget-object v5, p0, Lcom/oculus/browser/PanelApp;->mContentSurface:Lcom/oculus/browser/PanelSurface;

    iget-object v6, p0, Lcom/oculus/browser/PanelApp;->mShellEnvironment:Lcom/oculus/browser/ShellEnvironment;

    .line 29
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getPanelId()I

    move-result v7

    move-object v3, p0

    .line 30
    invoke-interface/range {v2 .. v7}, Lcom/oculus/browser/PanelApp$Natives;->init(Lcom/oculus/browser/PanelApp;Lcom/oculus/browser/PanelSurface;Lcom/oculus/browser/PanelSurface;Lcom/oculus/browser/ShellEnvironment;I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    const-wide/16 v2, 0x0

    const/4 p4, 0x1

    cmp-long v4, p2, v2

    if-eqz v4, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    const-string p3, "mNativePanelApp is ZERO!"

    .line 31
    invoke-static {p2, p3}, Lcom/oculus/browser/JavaHelper;->runtimeAssert(ZLjava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/oculus/browser/Experimentation;->getInstance()Lcom/oculus/browser/Experimentation;

    move-result-object p2

    iget-object p3, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-static {}, Lcom/oculus/browser/OculusUser;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lcom/oculus/browser/Experimentation;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 34
    new-instance p1, Lcom/oculus/browser/PanelApp$1;

    invoke-direct {p1, p0}, Lcom/oculus/browser/PanelApp$1;-><init>(Lcom/oculus/browser/PanelApp;)V

    iput-object p1, p0, Lcom/oculus/browser/PanelApp;->mTabObserver:LpH0;

    .line 35
    new-instance p1, Lcom/oculus/browser/PanelApp$2;

    invoke-direct {p1, p0}, Lcom/oculus/browser/PanelApp$2;-><init>(Lcom/oculus/browser/PanelApp;)V

    iput-object p1, p0, Lcom/oculus/browser/PanelApp;->mTabModelObserver:LlI0;

    .line 36
    new-instance p1, Lcom/oculus/browser/PanelApp$3;

    invoke-direct {p1, p0}, Lcom/oculus/browser/PanelApp$3;-><init>(Lcom/oculus/browser/PanelApp;)V

    iput-object p1, p0, Lcom/oculus/browser/PanelApp;->mTabModelSelectorObserver:LxI0;

    .line 37
    iput-boolean p4, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    .line 38
    iget-object p1, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {p1, p0}, Lcom/oculus/browser/TabModelManager;->setTabSelectorObserver(Lcom/oculus/browser/TabModelManager$TabSelectorObserver;)V

    .line 39
    iput-boolean v0, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    .line 40
    iget-object p1, p0, Lcom/oculus/browser/PanelApp;->mShellEnvironment:Lcom/oculus/browser/ShellEnvironment;

    invoke-virtual {p1}, Lcom/oculus/browser/ShellEnvironment;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oculus/browser/PanelApp;->handleDeepLink(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    iget p2, p0, Lcom/oculus/browser/PanelApp;->tabWindowIndex:I

    invoke-virtual {p1, p0, p2}, Lcom/oculus/browser/HydraApplication;->onAppCreated(Lcom/oculus/browser/PanelApp;I)V

    .line 42
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->onForeground()V

    .line 43
    invoke-static {p0}, Lcom/oculus/browser/OVRServiceManager;->addListener(Lcom/oculus/browser/OVRServiceManager$Listener;)V

    .line 44
    iget-object p1, p0, Lcom/oculus/browser/PanelApp;->mVrApi:Lcom/oculus/browser/VrApi$Wrapper;

    iget-object p2, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {p1, p2}, Lcom/oculus/browser/VrApi$Wrapper;->initialize(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->postDeferredStartupIfNeeded()V

    .line 46
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method

.method private GetGestureTarget(Lorg/chromium/content_public/browser/WebContents;)Lcom/oculus/browser/OculusUiGestureTarget;
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PanelApp"

    const-string v3, "GetGestureTarget"

    .line 1
    invoke-static {v2, v3, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->p()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GetGestureTarget - OculusUiGestureTarget"

    .line 3
    invoke-static {v2, v1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/oculus/browser/OculusUiGestureTarget;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ccccccd    # 0.025f

    const/4 v3, 0x5

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/oculus/browser/OculusUiGestureTarget;-><init>(Landroid/view/View;FFI)V

    return-object v0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "GetGestureTarget - no view"

    .line 5
    invoke-static {v2, v0, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance p1, Ljava/lang/Error;

    const-string v0, "webContents does not have an associated View."

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic access$000(Lcom/oculus/browser/PanelApp;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/oculus/browser/PanelApp;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oculus/browser/PanelApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->onTabListChanged()V

    return-void
.end method

.method public static synthetic access$300(Lcom/oculus/browser/PanelApp;)Lcom/oculus/browser/PanelFullscreenManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/PanelApp;->mFullscreenManager:Lcom/oculus/browser/PanelFullscreenManager;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oculus/browser/PanelApp;)LlI0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/PanelApp;->mTabModelObserver:LlI0;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/oculus/browser/PanelApp;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/PanelApp;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/oculus/browser/PanelApp;)Lcom/oculus/browser/HydraApplication;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/oculus/browser/PanelApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->clearNavUI()V

    return-void
.end method

.method public static synthetic access$800(Lcom/oculus/browser/PanelApp;)Lcom/oculus/browser/TabModelManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    return-object p0
.end method

.method private clearNavUI()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiWebContentsObserver:Lg11;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lg11;->destroy()V

    .line 3
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mNavUiWebContentsObserver:Lg11;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->destroy()V

    .line 6
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PanelApp"

    const-string v2, "Clearing navui!"

    .line 7
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0, v0}, Lcom/oculus/browser/PanelApp;->onNavUIChanged(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method private createNavUi()V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PanelApp"

    const-string v3, "Creating NavUI."

    .line 1
    invoke-static {v2, v3, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {v0, v0}, Lj00;->a(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    .line 3
    iget-object v2, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-static {v2, v1}, LnT0;->a(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)LnT0;

    move-result-object v1

    .line 4
    iget-object v3, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    .line 5
    new-instance v5, Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-direct {v5, v1}, Lorg/chromium/ui/base/ViewAndroidDelegate;-><init>(Landroid/view/ViewGroup;)V

    .line 6
    iget-object v2, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    .line 7
    invoke-virtual {v2}, Lcom/oculus/browser/HydraApplication;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v7

    .line 8
    new-instance v8, Lc11;

    invoke-direct {v8}, Lc11;-><init>()V

    const-string v4, "79.0.3945.126"

    move-object v6, v1

    .line 9
    invoke-interface/range {v3 .. v8}, Lorg/chromium/content_public/browser/WebContents;->a(Ljava/lang/String;Lorg/chromium/ui/base/ViewAndroidDelegate;La11;Lorg/chromium/ui/base/WindowAndroid;Ld11;)V

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    new-instance v0, Lcom/oculus/browser/PanelApp$5;

    iget-object v1, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {v0, p0, v1}, Lcom/oculus/browser/PanelApp$5;-><init>(Lcom/oculus/browser/PanelApp;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiWebContentsObserver:Lg11;

    .line 12
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0, v0}, Lcom/oculus/browser/PanelApp;->onNavUIChanged(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method private createTabList()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 2
    invoke-interface {v0}, LdI0;->getCount()I

    move-result v1

    .line 3
    new-array v2, v1, [Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 4
    invoke-interface {v0, v4}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v4, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    const-string v1, "mNativePanelApp is ZERO!"

    invoke-static {v3, v1}, Lcom/oculus/browser/JavaHelper;->runtimeAssert(ZLjava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v1

    iget-wide v3, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    .line 7
    invoke-static {v0}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    .line 9
    :goto_1
    invoke-interface {v1, v3, v4, v2, v0}, Lcom/oculus/browser/PanelApp$Natives;->setTabList(J[Lorg/chromium/chrome/browser/tab/Tab;I)V

    return-void
.end method

.method private ensureNavUI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->createNavUi()V

    :cond_0
    return-void
.end method

.method private ensureTabExists(Ljava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v1

    check-cast v1, LrI0;

    invoke-virtual {v1}, LrI0;->f()Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v2}, Lcom/oculus/browser/TabModelManager;->isSingleTabMode()Z

    .line 4
    iget-object v2, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v2}, Lcom/oculus/browser/TabModelManager;->isSingleTabMode()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v2

    check-cast v2, LrI0;

    invoke-virtual {v2, v1}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-interface {v2}, LdI0;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->getNewTabUrl()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_3
    invoke-virtual {p0, v1}, Lcom/oculus/browser/PanelApp;->getTabCreator(Z)LbI0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LbI0;->launchUrl(Ljava/lang/String;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/oculus/browser/PanelApp;->setFocusToTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    :cond_4
    return-void
.end method

.method private getNewTabUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "chrome://oculus-ntp-private"

    goto :goto_0

    :cond_0
    const-string v0, "chrome://oculus-ntp"

    :goto_0
    return-object v0
.end method

.method private onTabListChanged()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_4

    .line 4
    invoke-static {v1}, Lcom/oculus/browser/PanelApp;->releaseFocusFromTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 5
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->unhookCurrentTab()V

    .line 6
    iput-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 7
    iget-object v1, p0, Lcom/oculus/browser/PanelApp;->mFullscreenManager:Lcom/oculus/browser/PanelFullscreenManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lkd0;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_4

    .line 9
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 10
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->b(Z)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v5, p0, Lcom/oculus/browser/PanelApp;->mTabObserver:LpH0;

    .line 13
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, v5}, LWT;->a(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, LVG0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LVG0;

    move-result-object v0

    new-instance v5, Lxa0;

    new-instance v6, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;

    iget-object v7, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {v6, p0, v7}, Lcom/oculus/browser/PanelApp$TabNavigationDelegateImpl;-><init>(Lcom/oculus/browser/PanelApp;Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-direct {v5, v6}, Lxa0;-><init>(Lpa0;)V

    .line 15
    iput-object v5, v0, LVG0;->B:Lxa0;

    if-eqz v1, :cond_3

    .line 16
    invoke-interface {v1, v2}, Lorg/chromium/content_public/browser/WebContents;->b(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v1}, Lcom/oculus/browser/TabModelManager;->getNavUiRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 18
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->getNavUiRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/ui/base/WindowAndroid;->onVisibilityChanged(Z)V

    .line 19
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, Lcom/oculus/browser/PanelApp;->setFocusToTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    const-string v1, "mNativePanelApp is ZERO!"

    const-string v5, "PanelApp"

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_7

    .line 21
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 22
    iget-object v2, p0, Lcom/oculus/browser/PanelApp;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eq v0, v2, :cond_6

    .line 23
    iput-object v0, p0, Lcom/oculus/browser/PanelApp;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    const-string v2, "calling GetGestureTarget - content: "

    .line 24
    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/oculus/browser/PanelApp;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 25
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    .line 26
    invoke-static {v5, v2, v4}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0, v0}, Lcom/oculus/browser/PanelApp;->GetGestureTarget(Lorg/chromium/content_public/browser/WebContents;)Lcom/oculus/browser/OculusUiGestureTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/browser/PanelApp;->mWebContentsGestureTarget:Lcom/oculus/browser/OculusUiGestureTarget;

    .line 28
    iget-wide v4, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3, v1}, Lcom/oculus/browser/JavaHelper;->runtimeAssert(ZLjava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v4

    iget-wide v5, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    iget-object v7, p0, Lcom/oculus/browser/PanelApp;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iget-object v8, p0, Lcom/oculus/browser/PanelApp;->mWebContentsGestureTarget:Lcom/oculus/browser/OculusUiGestureTarget;

    .line 30
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->f()Z

    move-result v9

    .line 31
    invoke-interface/range {v4 .. v9}, Lcom/oculus/browser/PanelApp$Natives;->setWebContents(JLorg/chromium/content_public/browser/WebContents;Lcom/oculus/browser/OculusUiGestureTarget;Z)V

    .line 32
    :cond_6
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->createTabList()V

    goto :goto_2

    .line 33
    :cond_7
    iget-wide v8, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3, v1}, Lcom/oculus/browser/JavaHelper;->runtimeAssert(ZLjava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v6

    iget-wide v7, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->f()Z

    move-result v11

    .line 36
    invoke-interface/range {v6 .. v11}, Lcom/oculus/browser/PanelApp$Natives;->setWebContents(JLorg/chromium/content_public/browser/WebContents;Lcom/oculus/browser/OculusUiGestureTarget;Z)V

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "resetting mWebContentsGestureTarget - onTabListChanged"

    .line 37
    invoke-static {v5, v1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iput-object v2, p0, Lcom/oculus/browser/PanelApp;->mWebContentsGestureTarget:Lcom/oculus/browser/OculusUiGestureTarget;

    :goto_2
    return-void
.end method

.method public static releaseFocusFromTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method private resetTabList()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->unhookCurrentTab()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iput-object v0, p0, Lcom/oculus/browser/PanelApp;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 4
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->onTabListChanged()V

    return-void
.end method

.method public static setFocusToTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->n()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->d(I)V

    :cond_2
    return-void
.end method

.method private unhookCurrentTab()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->b(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lcom/oculus/browser/PanelApp;->mTabObserver:LpH0;

    .line 6
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private validateExternalUriForWebtasks(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public cancelWebVRDeepLinkIfNeeded(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelWebVRDeepLinkIfNeeded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/browser/HydraApplication;->isDeepLinkingTo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->restorePanelState()V

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0, p1}, Lcom/oculus/browser/HydraApplication;->cancelWebVRDeepLink(Lorg/chromium/chrome/browser/tab/Tab;)V

    :cond_0
    return-void
.end method

.method public closeAllTabs()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->unhookCurrentTab()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    .line 3
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v1

    check-cast v1, LrI0;

    invoke-virtual {v1}, LrI0;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v1

    check-cast v1, LrI0;

    invoke-virtual {v1, v0}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(ZZ)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0, v2}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(ZZ)V

    .line 6
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->getNewTabUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/browser/PanelApp;->newTab(Ljava/lang/String;)V

    .line 7
    :goto_0
    iput-boolean v2, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    .line 8
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->onTabListChanged()V

    return-void
.end method

.method public closeTab(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->getNewTabUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/browser/PanelApp;->newTab(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {v0, p1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 5
    invoke-interface {v0, p1, v2, v1, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->isInWebVR()Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy, is in VR? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PanelApp"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0, p0}, Lcom/oculus/browser/HydraApplication;->onAppHidden(Lcom/oculus/browser/PanelApp;)V

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0, p0}, Lcom/oculus/browser/HydraApplication;->onAppDestroyed(Lcom/oculus/browser/PanelApp;)V

    .line 5
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/browser/TabModelManager;->setTabSelectorObserver(Lcom/oculus/browser/TabModelManager$TabSelectorObserver;)V

    .line 6
    invoke-static {p0}, Lcom/oculus/browser/OVRServiceManager;->removeListener(Lcom/oculus/browser/OVRServiceManager$Listener;)V

    .line 7
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mFullscreenManager:Lcom/oculus/browser/PanelFullscreenManager;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/oculus/browser/PanelFullscreenManager;->destroy()V

    .line 9
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mFullscreenManager:Lcom/oculus/browser/PanelFullscreenManager;

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->onBackground()V

    .line 11
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->unhookCurrentTab()V

    .line 12
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiSurface:Lcom/oculus/browser/PanelSurface;

    invoke-virtual {v0}, Lcom/oculus/browser/PanelSurface;->destroy()V

    .line 13
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mNavUiSurface:Lcom/oculus/browser/PanelSurface;

    .line 14
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiWebContentsObserver:Lg11;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lg11;->destroy()V

    .line 16
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mNavUiWebContentsObserver:Lg11;

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_2

    .line 18
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->destroy()V

    .line 19
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mContentSurface:Lcom/oculus/browser/PanelSurface;

    invoke-virtual {v0}, Lcom/oculus/browser/PanelSurface;->destroy()V

    .line 21
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mContentSurface:Lcom/oculus/browser/PanelSurface;

    .line 22
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelObserver:LlI0;

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/browser/PanelApp;->mTabModelObserver:LlI0;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(LlI0;)V

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelSelectorObserver:LxI0;

    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/browser/PanelApp;->mTabModelSelectorObserver:LxI0;

    check-cast v0, LrI0;

    .line 26
    iget-object v0, v0, LrI0;->d:LWT;

    invoke-virtual {v0, v2}, LWT;->b(Ljava/lang/Object;)Z

    .line 27
    :cond_4
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    .line 28
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    const-wide/16 v2, 0x0

    .line 29
    iput-wide v2, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    .line 30
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 31
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mTabObserver:LpH0;

    .line 32
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mTabModelObserver:LlI0;

    .line 33
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mTabModelSelectorObserver:LxI0;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    return-void
.end method

.method public determineSingleTabMode(Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ovrweb"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webtask"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    const-string p1, "determineSingleTabMode - "

    .line 4
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v1, :cond_2

    const-string v2, "single tab"

    goto :goto_2

    :cond_2
    const-string v2, "multi tab"

    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PanelApp"

    invoke-static {v2, p1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/oculus/browser/PanelApp;->setTabMode(Z)V

    return-void
.end method

.method public exitWebVR()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PanelApp"

    const-string v2, "exitWebVR"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->exitWebVR()V

    return-void
.end method

.method public finalizeHiding()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PanelApp"

    const-string v2, "finalizeHiding"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->suspendAllMediaPlayers()V

    .line 3
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    invoke-interface {v0}, LpI0;->d()V

    .line 4
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->b(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->closeModels()V

    return-void
.end method

.method public getFullscreenManager()Lcom/oculus/browser/PanelFullscreenManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mFullscreenManager:Lcom/oculus/browser/PanelFullscreenManager;

    return-object v0
.end method

.method public getLastCrashReportCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->getLastCrashReportCount()I

    move-result v0

    return v0
.end method

.method public getLastCrashScanTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->getLastCrashScanTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePointer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    return-wide v0
.end method

.method public getNavUiRootWindow()Lcom/oculus/browser/PanelWindowAndroid;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->getNavUiRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayTranslateY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPanelId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mShellEnvironment:Lcom/oculus/browser/ShellEnvironment;

    invoke-virtual {v0}, Lcom/oculus/browser/ShellEnvironment;->getPanelId()I

    move-result v0

    return v0
.end method

.method public getShellEnvironment()Lcom/oculus/browser/ShellEnvironment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mShellEnvironment:Lcom/oculus/browser/ShellEnvironment;

    return-object v0
.end method

.method public getTabCreator(Z)LbI0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0, p1}, Lcom/oculus/browser/TabModelManager;->getTabCreator(Z)LbI0;

    move-result-object p1

    return-object p1
.end method

.method public getTabModelSelector()LpI0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->getTabModelSelector()LpI0;

    move-result-object v0

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->h()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->h()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/browser/PanelApp;->closeTab(I)V

    :cond_1
    return v1
.end method

.method public handleDeepLink(Ljava/lang/String;)V
    .locals 12

    const-string v0, "PanelApp"

    .line 1
    iget-wide v1, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "mNativePanelApp is ZERO!"

    invoke-static {v1, v2}, Lcom/oculus/browser/JavaHelper;->runtimeAssert(ZLjava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 3
    :try_start_0
    iput-boolean v5, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/oculus/browser/PanelApp;->parseOvrSocialLaunch(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v2}, Lcom/oculus/browser/PanelApp;->determineSingleTabMode(Landroid/net/Uri;)V

    const-string v3, "ovrweb"

    .line 7
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "ovrweb scheme deeplink detected"

    new-array v4, v6, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v3, v4}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "webtask"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_1
    const-string v7, "media"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v7, "exit"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_3
    const-string v7, "vr"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string v7, "search"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_5
    const-string v7, "onWebVRExit"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    const/4 v4, 0x5

    :cond_1
    :goto_1
    if-eqz v4, :cond_a

    const-string v3, "uri"

    if-eq v4, v5, :cond_9

    if-eq v4, v11, :cond_8

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_2

    goto/16 :goto_5

    :cond_2
    :try_start_1
    const-string v2, "handleDeepLink - onWebVRExit"

    new-array v3, v6, [Ljava/lang/Object;

    .line 10
    invoke-static {v0, v2, v3}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->restorePanelState()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    iput-boolean v6, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    .line 13
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->onTabListChanged()V

    return-void

    :cond_3
    :try_start_3
    const-string v2, "handleDeepLink - exit"

    new-array v3, v6, [Ljava/lang/Object;

    .line 14
    invoke-static {v0, v2, v3}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15
    :try_start_4
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->requestExit()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    iput-boolean v6, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    .line 17
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->onTabListChanged()V

    return-void

    :catchall_0
    move-exception v0

    const/4 v3, 0x1

    goto/16 :goto_b

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_4
    :try_start_5
    const-string v4, "handleDeepLink - vr"

    new-array v7, v6, [Ljava/lang/Object;

    .line 18
    invoke-static {v0, v4, v7}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkUriParam:Ljava/lang/String;

    const-string v3, "returntocaller"

    .line 20
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_6

    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 23
    :goto_2
    :try_start_6
    iget-object v4, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkUriParam:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkUriParam:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    .line 24
    :goto_3
    :try_start_7
    iget-object v7, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v7}, Lcom/oculus/browser/HydraApplication;->isInWebVR()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 25
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->exitWebVR()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_6

    :catch_1
    move-exception v2

    move v7, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_8
    :try_start_8
    const-string v4, "handleDeepLink - webtask"

    new-array v7, v6, [Ljava/lang/Object;

    .line 26
    invoke-static {v0, v4, v7}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkUriParam:Ljava/lang/String;

    const-string v3, "return"

    .line 28
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkReturn:Ljava/lang/String;

    if-eqz v3, :cond_d

    const-string v4, "UTF-8"

    .line 29
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkReturn:Ljava/lang/String;

    goto :goto_5

    :cond_9
    const-string v4, "handleDeepLink - media"

    new-array v7, v6, [Ljava/lang/Object;

    .line 30
    invoke-static {v0, v4, v7}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkUriParam:Ljava/lang/String;

    const-string v4, "projection"

    .line 32
    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    .line 34
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v7

    iget-wide v8, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    const-string v10, "projectionMode"

    filled-new-array {v10, v3}, [Ljava/lang/String;

    move-result-object v3

    new-array v10, v11, [Ljava/lang/String;

    aput-object v4, v10, v6

    iget-object v4, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkUriParam:Ljava/lang/String;

    aput-object v4, v10, v5

    invoke-interface {v7, v8, v9, v3, v10}, Lcom/oculus/browser/PanelApp$Natives;->setTransientProperties(J[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    const-string v3, "handleDeepLink - search "

    new-array v4, v6, [Ljava/lang/Object;

    .line 35
    invoke-static {v0, v3, v4}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "query"

    .line 36
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_4

    .line 38
    :cond_b
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkUriParam:Ljava/lang/String;

    goto :goto_5

    .line 39
    :cond_c
    :goto_4
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v4

    iget-wide v7, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    invoke-interface {v4, v7, v8, v3}, Lcom/oculus/browser/PanelApp$Natives;->getDefaultSearchUri(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkUriParam:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_d
    :goto_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 40
    :cond_e
    :goto_6
    :try_start_9
    iget-object v7, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkUriParam:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/oculus/browser/PanelApp;->validateExternalUriForWebtasks(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 41
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    check-cast v7, LrI0;

    :try_start_a
    invoke-virtual {v7}, LrI0;->f()Z

    move-result v7

    iget-object v8, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkUriParam:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, v7, v8}, Lcom/oculus/browser/PanelApp;->setIncognitoModeEnabled(ZLjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move v7, v3

    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    move v7, v3

    const/4 v3, 0x0

    goto :goto_7

    :catch_2
    move-exception v2

    move v7, v3

    const/4 v3, 0x0

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 43
    :goto_7
    :try_start_b
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 44
    iput-boolean v6, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    if-nez v3, :cond_11

    goto :goto_a

    :catch_3
    move-exception v2

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto :goto_b

    :catch_4
    move-exception v2

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_9
    :try_start_c
    const-string v8, "Failed to parse deep link URL"

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v2, v9, v6

    .line 45
    invoke-static {v0, v8, v9}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""

    .line 46
    invoke-virtual {p0, v1}, Lcom/oculus/browser/PanelApp;->determineSingleTabMode(Landroid/net/Uri;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 47
    iput-boolean v6, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    if-nez v3, :cond_11

    .line 48
    :goto_a
    invoke-direct {p0, p1, v5}, Lcom/oculus/browser/PanelApp;->ensureTabExists(Ljava/lang/String;I)V

    .line 49
    :cond_11
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->onTabListChanged()V

    if-eqz v4, :cond_14

    .line 50
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object p1

    iget-wide v2, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    invoke-interface {p1, v2, v3, v5}, Lcom/oculus/browser/PanelApp$Natives;->setWebVRRequestedMode(JZ)V

    .line 51
    iget-object p1, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1, v0, v7}, Lcom/oculus/browser/HydraApplication;->requestWebVRDeepLink(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_c

    :catchall_2
    move-exception v0

    .line 52
    :goto_b
    iput-boolean v6, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    if-nez v3, :cond_12

    .line 53
    invoke-direct {p0, p1, v5}, Lcom/oculus/browser/PanelApp;->ensureTabExists(Ljava/lang/String;I)V

    .line 54
    :cond_12
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->onTabListChanged()V

    throw v0

    .line 55
    :cond_13
    invoke-virtual {p0, v1}, Lcom/oculus/browser/PanelApp;->determineSingleTabMode(Landroid/net/Uri;)V

    .line 56
    invoke-direct {p0, p1, v5}, Lcom/oculus/browser/PanelApp;->ensureTabExists(Ljava/lang/String;I)V

    .line 57
    :cond_14
    :goto_c
    iput-object v1, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkUriParam:Ljava/lang/String;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x42a74cd1 -> :sswitch_5
        -0x36059a58 -> :sswitch_4
        0xebc -> :sswitch_3
        0x2fb91e -> :sswitch_2
        0x62f6fe4 -> :sswitch_1
        0x48fa36d9 -> :sswitch_0
    .end sparse-switch
.end method

.method public isCrashScanInProgress()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->isCrashScanInProgress()Z

    move-result v0

    return v0
.end method

.method public loadUrl(Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p1, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-boolean p3, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->n:Z

    .line 5
    iget-object p3, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {p1, p3}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a(Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iput-object p1, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->g:Ljava/lang/String;

    .line 7
    iput p2, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->d:I

    .line 8
    iget-object p1, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    :cond_0
    return-void
.end method

.method public newTab(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->isSingleTabMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->f()Z

    move-result v0

    const-string v1, ""

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->getNewTabUrl()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oculus/browser/PanelApp;->getTabCreator(Z)LbI0;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, LbI0;->launchUrl(Ljava/lang/String;I)Lorg/chromium/chrome/browser/tab/Tab;

    :cond_1
    return-void
.end method

.method public onAccessTokenReceived(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/PanelApp;->mAccessToken:Ljava/lang/String;

    .line 2
    new-instance p1, Lcom/oculus/browser/PanelApp$4;

    invoke-direct {p1, p0}, Lcom/oculus/browser/PanelApp$4;-><init>(Lcom/oculus/browser/PanelApp;)V

    invoke-static {p1}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAccessTokenRequestFailed()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PanelApp"

    const-string v2, "Failed to retrieve Oculus access token"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onBackground()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v1}, Lcom/oculus/browser/HydraApplication;->isInWebVR()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PanelApp"

    const-string v3, "onBackground, inWebVR = %b"

    invoke-static {v1, v3, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/chrome/browser/metrics/UmaUtils;->c:J

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->isInWebVR()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->n()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0, p0}, Lcom/oculus/browser/HydraApplication;->onAppHidden(Lcom/oculus/browser/PanelApp;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiSurface:Lcom/oculus/browser/PanelSurface;

    invoke-virtual {v0}, Lcom/oculus/browser/PanelSurface;->onBackground()V

    .line 8
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mContentSurface:Lcom/oculus/browser/PanelSurface;

    invoke-virtual {v0}, Lcom/oculus/browser/PanelSurface;->onBackground()V

    .line 9
    iget-wide v0, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    .line 10
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v0

    iget-wide v3, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    invoke-interface {v0, v3, v4, v2}, Lcom/oculus/browser/PanelApp$Natives;->setWebVRRequestedMode(JZ)V

    :cond_2
    return-void
.end method

.method public onForeground()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PanelApp"

    const-string v2, "onForeground"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaUtils;->b()V

    .line 3
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->ensureNavUI()V

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->w()V

    .line 6
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/WebContents;->b(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 7
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    iget-object v1, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v1}, Lcom/oculus/browser/TabModelManager;->getNavUiRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/WebContents;->b(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->restoreAllMediaPlayers()V

    .line 9
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0, p0}, Lcom/oculus/browser/HydraApplication;->onAppShown(Lcom/oculus/browser/PanelApp;)V

    .line 10
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->resetTabList()V

    .line 11
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiSurface:Lcom/oculus/browser/PanelSurface;

    invoke-virtual {v0}, Lcom/oculus/browser/PanelSurface;->onForeground()V

    .line 12
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mContentSurface:Lcom/oculus/browser/PanelSurface;

    invoke-virtual {v0}, Lcom/oculus/browser/PanelSurface;->onForeground()V

    return-void
.end method

.method public onHandsModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0, p1}, Lcom/oculus/browser/HydraApplication;->onHandsModeChanged(Z)V

    return-void
.end method

.method public onNavUIChanged(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 11

    const-string v0, "calling GetGestureTarget - navui "

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PanelApp"

    .line 3
    invoke-static {v3, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/oculus/browser/PanelApp;->GetGestureTarget(Lorg/chromium/content_public/browser/WebContents;)Lcom/oculus/browser/OculusUiGestureTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/browser/PanelApp;->mWebNavUiGestureTarget:Lcom/oculus/browser/OculusUiGestureTarget;

    .line 5
    iget-wide v4, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v2, "mNativePanelApp is ZERO!"

    invoke-static {v0, v2}, Lcom/oculus/browser/JavaHelper;->runtimeAssert(ZLjava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v4

    iget-wide v5, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    iget-object v8, p0, Lcom/oculus/browser/PanelApp;->mWebNavUiGestureTarget:Lcom/oculus/browser/OculusUiGestureTarget;

    iget-object v9, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkReturn:Ljava/lang/String;

    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    .line 7
    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->isSingleTabMode()Z

    move-result v10

    move-object v7, p1

    .line 8
    invoke-interface/range {v4 .. v10}, Lcom/oculus/browser/PanelApp$Natives;->setNavUiContents(JLorg/chromium/content_public/browser/WebContents;Lcom/oculus/browser/OculusUiGestureTarget;Ljava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    iget-object v2, p0, Lcom/oculus/browser/PanelApp;->mAccessToken:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v2}, Lcom/oculus/browser/PanelApp$Natives;->setAccessToken(JLjava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "onNavUIChanged"

    .line 11
    invoke-static {v3, v0, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->resetTabList()V

    goto :goto_2

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "onNavUIChanged - no navui"

    .line 13
    invoke-static {v3, v0, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onTabSelectorChanged(LpI0;LpI0;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    check-cast p2, LrI0;

    invoke-virtual {p2}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelObserver:LlI0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/browser/PanelApp;->mTabModelObserver:LlI0;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(LlI0;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelSelectorObserver:LxI0;

    if-eqz v0, :cond_1

    .line 5
    iget-object p2, p2, LrI0;->d:LWT;

    invoke-virtual {p2, v0}, LWT;->b(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    iget-object p2, p0, Lcom/oculus/browser/PanelApp;->mTabModelSelectorObserver:LxI0;

    check-cast p1, LrI0;

    invoke-virtual {p1, p2}, LrI0;->a(LxI0;)V

    .line 7
    invoke-virtual {p1}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p1}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p1

    iget-object p2, p0, Lcom/oculus/browser/PanelApp;->mTabModelObserver:LlI0;

    invoke-interface {p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(LlI0;)V

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->onTabListChanged()V

    return-void
.end method

.method public parseOvrSocialLaunch(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ovr_social_launch"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deeplink_message"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final postDeferredStartupIfNeeded()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/PanelApp;->mDeferredStartupPosted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/oculus/browser/PanelApp;->mDeferredStartupPosted:Z

    .line 3
    invoke-static {}, LHh0;->f()LHh0;

    move-result-object v0

    invoke-virtual {v0}, LHh0;->b()V

    .line 4
    sget-object v0, LdZ;->a:LeZ;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, v0, LeZ;->c:J

    .line 6
    iput-wide v1, v0, LeZ;->b:J

    .line 7
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    new-instance v2, LcZ;

    invoke-direct {v2, v0}, LcZ;-><init>(LeZ;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    return-void
.end method

.method public recoveryNavUI()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PanelApp"

    const-string v3, "recoveryNavUI"

    .line 1
    invoke-static {v2, v3, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->clearNavUI()V

    .line 3
    iget-object v1, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v1}, Lcom/oculus/browser/HydraApplication;->shown()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Recreating navui!"

    .line 4
    invoke-static {v2, v1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->ensureNavUI()V

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Clearing navui!"

    .line 6
    invoke-static {v2, v1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0, v0}, Lcom/oculus/browser/PanelApp;->onNavUIChanged(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public requestExit()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->handleBackPressed()Z

    .line 2
    iget-wide v0, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "mNativePanelApp is ZERO!"

    invoke-static {v0, v1}, Lcom/oculus/browser/JavaHelper;->runtimeAssert(ZLjava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    invoke-interface {v0, v1, v2, v4}, Lcom/oculus/browser/PanelApp$Natives;->setWebVRRequestedMode(JZ)V

    .line 4
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    invoke-interface {v0, v1, v2}, Lcom/oculus/browser/PanelApp$Natives;->requestExit(J)V

    return-void
.end method

.method public restoreAllMediaPlayers()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    .line 2
    iget-object v0, v0, LrI0;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {v1}, LdI0;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 5
    invoke-interface {v1, v3}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    .line 6
    iget-object v4, v4, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {v4, v2}, Lorg/chromium/content_public/browser/WebContents;->a(Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public restorePanelState()V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "mNativePanelApp is ZERO!"

    invoke-static {v0, v1}, Lcom/oculus/browser/JavaHelper;->runtimeAssert(ZLjava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    invoke-interface {v0, v1, v2, v4}, Lcom/oculus/browser/PanelApp$Natives;->setWebVRRequestedMode(JZ)V

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_3

    const-string v0, "calling nativeSetWebContents - restorePanelState "

    .line 4
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/oculus/browser/PanelApp;->mWebContentsGestureTarget:Lcom/oculus/browser/OculusUiGestureTarget;

    if-nez v1, :cond_1

    const-string v1, "null"

    goto :goto_1

    :cond_1
    const-string v1, "not null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "PanelApp"

    .line 6
    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v3

    iget-wide v4, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    iget-object v6, p0, Lcom/oculus/browser/PanelApp;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iget-object v7, p0, Lcom/oculus/browser/PanelApp;->mWebContentsGestureTarget:Lcom/oculus/browser/OculusUiGestureTarget;

    .line 8
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->f()Z

    move-result v8

    .line 9
    invoke-interface/range {v3 .. v8}, Lcom/oculus/browser/PanelApp$Natives;->setWebContents(JLorg/chromium/content_public/browser/WebContents;Lcom/oculus/browser/OculusUiGestureTarget;Z)V

    .line 10
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mContentSurface:Lcom/oculus/browser/PanelSurface;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/oculus/browser/PanelSurface;->onForeground()V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mNavUiSurface:Lcom/oculus/browser/PanelSurface;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/oculus/browser/PanelSurface;->onForeground()V

    :cond_3
    return-void
.end method

.method public scrollToTop(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PanelApp"

    const-string v3, "scrollToTop"

    .line 1
    invoke-static {v2, v3, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->p()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public selectTab(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, LdI0;->b(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result p1

    const/4 v1, 0x3

    .line 4
    invoke-interface {v0, p1, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(II)V

    return-void
.end method

.method public setIncognitoModeEnabled(ZLjava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    .line 3
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v2

    check-cast v2, LrI0;

    invoke-virtual {v2}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v2

    invoke-interface {v2, p1}, LpI0;->a(Z)V

    .line 7
    iget-object p1, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkUriParam:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v1, 0x2

    .line 8
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/oculus/browser/PanelApp;->ensureTabExists(Ljava/lang/String;I)V

    .line 9
    iput-boolean v0, p0, Lcom/oculus/browser/PanelApp;->mIgnoreTabListChanges:Z

    if-nez v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/oculus/browser/PanelApp;->onTabListChanged()V

    :cond_2
    return-void
.end method

.method public setTabMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0, p1}, Lcom/oculus/browser/TabModelManager;->setTabMode(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->recoveryNavUI()V

    :cond_0
    return-void
.end method

.method public setUseDesktopUserAgent(ZZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUseDesktopUserAgent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PanelApp"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oculus/browser/PanelApp;->mDeepLinkUriParam:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/chromium/content_public/browser/NavigationController;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public setVSyncPaused(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->getNavUiRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/WindowAndroid;->setVSyncPaused(Z)V

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->getContentRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/WindowAndroid;->setVSyncPaused(Z)V

    return-void
.end method

.method public setWebContentsWindowAndSize(Lorg/chromium/content_public/browser/WebContents;ZII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v1, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWebContentsWindowAndSize useContentWindow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",  windowWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", windowHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v8, "PanelApp"

    invoke-static {v8, v2, v4}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v1}, Lcom/oculus/browser/TabModelManager;->getContentRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v1}, Lcom/oculus/browser/TabModelManager;->getNavUiRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v1

    .line 4
    :goto_0
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 5
    invoke-virtual {v1}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lcd1;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lgd1;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v9 .. v20}, Lgd1;->a(Landroid/graphics/Point;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Landroid/view/Display$Mode;Ljava/util/List;)V

    .line 7
    invoke-interface {v7, v1}, Lorg/chromium/content_public/browser/WebContents;->b(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWebContentsWindowAndSize onSizeChanged width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v8, v1, v4}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-interface {v7, v5, v6}, Lorg/chromium/content_public/browser/WebContents;->a(II)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWebContentsWindowAndSize nativeOnPhysicalBackingSizeChanged width:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v1

    iget-wide v2, v0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/oculus/browser/PanelApp$Natives;->onPhysicalBackingSizeChanged(JLorg/chromium/content_public/browser/WebContents;II)V

    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/chromium/content_public/browser/WebContents;->w()V

    return-void
.end method

.method public showIncognitoNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsMediaSession()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public suspendAllMediaPlayers()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    .line 2
    iget-object v0, v0, LrI0;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {v1}, LdI0;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    invoke-interface {v1, v2}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 6
    iget-object v4, v3, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    .line 7
    invoke-interface {v4, v5}, Lorg/chromium/content_public/browser/WebContents;->a(Z)V

    .line 8
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/oculus/browser/PanelApp$Natives;->suspendAllMedia(Lorg/chromium/chrome/browser/tab/Tab;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toggleNewPanelsAllowed(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/browser/PanelApp;->mNativePanelApp:J

    invoke-interface {v0, v1, v2, p1}, Lcom/oculus/browser/PanelApp$Natives;->toggleNewPanelsAllowed(JZ)V

    return-void
.end method

.method public updateRefreshRate(F)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRefreshRate: rate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PanelApp"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->getNavUiRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/WindowAndroid;->onRefreshRateChanged(F)V

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->getContentRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/WindowAndroid;->onRefreshRateChanged(F)V

    return-void
.end method

.method public uploadCrashReports()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->uploadCrashReports()V

    return-void
.end method
