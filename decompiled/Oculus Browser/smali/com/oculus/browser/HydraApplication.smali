.class public Lcom/oculus/browser/HydraApplication;
.super LKY;
.source "PG"

# interfaces
.implements LeI0;
.implements Ly30;
.implements LnY;
.implements LnT;
.implements LH90;
.implements Lcom/oculus/browser/OVRServiceManager$Listener;


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "HydraApplication"


# instance fields
.field public mDevicePausedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mFacebookLoginManager:Lcom/oculus/browser/FacebookLoginManager;

.field public mHiddenWhileInVR:Z

.field public mOculusBrowserACRAClient:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

.field public mPanelAppHidden:Lcom/oculus/browser/PanelApp;

.field public mPanelIdToWindowIndex:Ljava/util/Map;

.field public mPanelLifecycleCallbacks:Ljava/util/ArrayList;

.field public mPermissionResponseBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mPostPanelAppInitComplete:Z

.field public mPrePanelAppInitComplete:Z

.field public mProfileManagerUtilsWrapper:Lcom/oculus/browser/HydraApplication$ProfileManagerUtilsWrapper;

.field public mShown:Z

.field public mTabModelManager:Lcom/oculus/browser/TabModelManager;

.field public mVrApi:Lcom/oculus/browser/VrApi$Wrapper;

.field public mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

.field public mWindowIndexToPanelApp:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/oculus/browser/HydraApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LKY;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/HydraApplication;->mPanelLifecycleCallbacks:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/oculus/browser/VrApi$Wrapper;

    invoke-direct {v0}, Lcom/oculus/browser/VrApi$Wrapper;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/HydraApplication;->mVrApi:Lcom/oculus/browser/VrApi$Wrapper;

    .line 4
    new-instance v0, Lcom/oculus/browser/HydraApplication$1;

    invoke-direct {v0, p0}, Lcom/oculus/browser/HydraApplication$1;-><init>(Lcom/oculus/browser/HydraApplication;)V

    iput-object v0, p0, Lcom/oculus/browser/HydraApplication;->mPermissionResponseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    new-instance v0, Lcom/oculus/browser/HydraApplication$2;

    invoke-direct {v0, p0}, Lcom/oculus/browser/HydraApplication$2;-><init>(Lcom/oculus/browser/HydraApplication;)V

    iput-object v0, p0, Lcom/oculus/browser/HydraApplication;->mDevicePausedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Lcom/oculus/browser/HydraApplication$ProfileManagerUtilsWrapper;

    invoke-direct {v0, p0}, Lcom/oculus/browser/HydraApplication$ProfileManagerUtilsWrapper;-><init>(Lcom/oculus/browser/HydraApplication;)V

    iput-object v0, p0, Lcom/oculus/browser/HydraApplication;->mProfileManagerUtilsWrapper:Lcom/oculus/browser/HydraApplication$ProfileManagerUtilsWrapper;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/browser/VrApi$Wrapper;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/oculus/browser/HydraApplication;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/oculus/browser/HydraApplication;->mVrApi:Lcom/oculus/browser/VrApi$Wrapper;

    return-void
.end method

.method public static synthetic access$000(Lcom/oculus/browser/HydraApplication;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/HydraApplication;->mWindowIndexToPanelApp:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oculus/browser/HydraApplication;)Lcom/oculus/browser/acra/OculusBrowserACRAClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/HydraApplication;->mOculusBrowserACRAClient:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/oculus/browser/HydraApplication;->nativeInitOvrPlatform(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private checkForMaxPanelApps()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mWindowIndexToPanelApp:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/oculus/browser/HydraApplication;->mWindowIndexToPanelApp:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/browser/PanelApp;

    .line 4
    invoke-virtual {v2, v0}, Lcom/oculus/browser/PanelApp;->toggleNewPanelsAllowed(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private clearAllPanelApps()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mWindowIndexToPanelApp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/browser/PanelApp;

    invoke-virtual {v1}, Lcom/oculus/browser/PanelApp;->finalizeHiding()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mWindowIndexToPanelApp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mPanelIdToWindowIndex:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private collectPanelLifecycleCallbacks()[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mPanelLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/oculus/browser/HydraApplication;->mPanelLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/oculus/browser/HydraApplication;->mPanelLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchPanelCreated(Lcom/oculus/browser/PanelApp;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/HydraApplication;->collectPanelLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3
    aget-object v1, p1, v0

    check-cast v1, LmT;

    check-cast v1, LgT;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Lorg/chromium/base/ApplicationStatus;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_1
    return-void
.end method

.method private dispatchPanelDestroyed(Lcom/oculus/browser/PanelApp;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/oculus/browser/HydraApplication;->collectPanelLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 3
    aget-object v1, p1, v0

    check-cast v1, LmT;

    check-cast v1, LgT;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 4
    invoke-static {v1}, Lorg/chromium/base/ApplicationStatus;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_2
    return-void
.end method

.method private dispatchPanelHidden(Lcom/oculus/browser/PanelApp;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/oculus/browser/HydraApplication;->collectPanelLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 3
    aget-object v1, p1, v0

    check-cast v1, LmT;

    check-cast v1, LgT;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Lorg/chromium/base/ApplicationStatus;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_2
    return-void
.end method

.method private dispatchPanelShown(Lcom/oculus/browser/PanelApp;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/HydraApplication;->collectPanelLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3
    aget-object v1, p1, v0

    check-cast v1, LmT;

    check-cast v1, LgT;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Lorg/chromium/base/ApplicationStatus;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_1
    return-void
.end method

.method public static native nativeInitOvrPlatform(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method private removePanelAppFromList(Lcom/oculus/browser/PanelApp;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/oculus/browser/HydraApplication;->mPanelIdToWindowIndex:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oculus/browser/PanelApp;->getPanelId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mPanelIdToWindowIndex:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oculus/browser/PanelApp;->getPanelId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/oculus/browser/HydraApplication;->mWindowIndexToPanelApp:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lcom/oculus/browser/HydraApplication;->checkForMaxPanelApps()V

    return-void
.end method


# virtual methods
.method public allocateWindowIndexForPanelId(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mPanelIdToWindowIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "panelId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " already associated with tabWindowIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/browser/HydraApplication;->mPanelIdToWindowIndex:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mPanelIdToWindowIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/oculus/browser/HydraApplication;->mPanelIdToWindowIndex:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/oculus/browser/HydraApplication;->mPanelIdToWindowIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public cancelWebVRDeepLink(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    invoke-virtual {v0, p1}, Lcom/oculus/browser/VrShellDelegate;->cancelVrNavigation(Lorg/chromium/chrome/browser/tab/Tab;)V

    :cond_0
    return-void
.end method

.method public exitWebVR()V
    .locals 2

    const-string v0, "HydraApplication"

    const-string v1, "exitWebVR"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/oculus/browser/VrShellDelegate;->exitVRIfNecessary()Z

    :cond_0
    return-void
.end method

.method public fakeInitialize(Lcom/oculus/browser/PanelAppVrShellDelegate;Lcom/oculus/browser/FacebookLoginManager;Lcom/oculus/browser/acra/OculusBrowserACRAClient;Lcom/oculus/browser/HydraApplication$ProfileManagerUtilsWrapper;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/HydraApplication;->mWindowIndexToPanelApp:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/HydraApplication;->mPanelIdToWindowIndex:Ljava/util/Map;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/oculus/browser/HydraApplication;->mPrePanelAppInitComplete:Z

    .line 4
    iput-object p1, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    .line 5
    iput-object p2, p0, Lcom/oculus/browser/HydraApplication;->mFacebookLoginManager:Lcom/oculus/browser/FacebookLoginManager;

    .line 6
    iput-object p3, p0, Lcom/oculus/browser/HydraApplication;->mOculusBrowserACRAClient:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    .line 7
    iput-object p4, p0, Lcom/oculus/browser/HydraApplication;->mProfileManagerUtilsWrapper:Lcom/oculus/browser/HydraApplication$ProfileManagerUtilsWrapper;

    return-void
.end method

.method public finalizeHiding()V
    .locals 2

    const-string v0, "HydraApplication"

    const-string v1, "finalizeHiding"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mPanelAppHidden:Lcom/oculus/browser/PanelApp;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/oculus/browser/PanelApp;->finalizeHiding()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/oculus/browser/HydraApplication;->mPanelAppHidden:Lcom/oculus/browser/PanelApp;

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/oculus/browser/HydraApplication;->mHiddenWhileInVR:Z

    return-void
.end method

.method public getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/HydraApplication;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getLastCrashReportCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mOculusBrowserACRAClient:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    invoke-virtual {v0}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->getLastReportCount()I

    move-result v0

    return v0
.end method

.method public getLastCrashScanTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mOculusBrowserACRAClient:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    invoke-virtual {v0}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->getLastScanTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayTranslateY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTabCreator(Z)LbI0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0, p1}, Lcom/oculus/browser/TabModelManager;->getTabCreator(Z)LbI0;

    move-result-object p1

    return-object p1
.end method

.method public getTabModelSelector()LpI0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->getTabModelSelector()LpI0;

    move-result-object v0

    return-object v0
.end method

.method public getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->getNavUiRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v0

    return-object v0
.end method

.method public isCrashScanInProgress()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mOculusBrowserACRAClient:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    invoke-virtual {v0}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->isScanInProgress()Z

    move-result v0

    return v0
.end method

.method public isDeepLinkingTo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oculus/browser/VrShellDelegate;->isDeepLinkingTo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInWebVR()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/browser/VrShellDelegate;->isInVR()Z

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oculus/browser/VrShellDelegate;->isWebVRRequested()Z

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/oculus/browser/VrShellDelegate;->isInVR()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    invoke-virtual {v0}, Lcom/oculus/browser/VrShellDelegate;->isWebVRRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAccessTokenReceived(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAccessTokenRequestFailed()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/oculus/browser/HydraApplication$5;

    invoke-direct {v1, p0, p0}, Lcom/oculus/browser/HydraApplication$5;-><init>(Lcom/oculus/browser/HydraApplication;Landroid/content/Context;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public onAppCreated(Lcom/oculus/browser/PanelApp;I)V
    .locals 2

    const-string v0, "HydraApplication"

    const-string v1, "onAppCreated"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mWindowIndexToPanelApp:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/oculus/browser/HydraApplication;->checkForMaxPanelApps()V

    .line 4
    invoke-direct {p0, p1}, Lcom/oculus/browser/HydraApplication;->dispatchPanelCreated(Lcom/oculus/browser/PanelApp;)V

    return-void
.end method

.method public onAppDestroyed(Lcom/oculus/browser/PanelApp;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/oculus/browser/HydraApplication;->mShown:Z

    const-string v0, "HydraApplication"

    const-string v1, "onAppDestroyed"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0, p1}, Lcom/oculus/browser/HydraApplication;->removePanelAppFromList(Lcom/oculus/browser/PanelApp;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/oculus/browser/HydraApplication;->dispatchPanelDestroyed(Lcom/oculus/browser/PanelApp;)V

    return-void
.end method

.method public onAppHidden(Lcom/oculus/browser/PanelApp;)V
    .locals 2

    const-string v0, "HydraApplication"

    const-string v1, "onAppHidden"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/oculus/browser/HydraApplication;->mShown:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/oculus/browser/PanelApp;->getShellEnvironment()Lcom/oculus/browser/ShellEnvironment;

    move-result-object v0

    const-string v1, "multiapp-v1"

    invoke-virtual {v0, v1}, Lcom/oculus/browser/ShellEnvironment;->isShellFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/oculus/browser/HydraApplication;->removePanelAppFromList(Lcom/oculus/browser/PanelApp;)V

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/oculus/browser/HydraApplication;->mPanelAppHidden:Lcom/oculus/browser/PanelApp;

    .line 6
    invoke-virtual {p0}, Lcom/oculus/browser/HydraApplication;->isInWebVR()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/oculus/browser/HydraApplication;->finalizeHiding()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/oculus/browser/HydraApplication;->mHiddenWhileInVR:Z

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mProfileManagerUtilsWrapper:Lcom/oculus/browser/HydraApplication$ProfileManagerUtilsWrapper;

    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication$ProfileManagerUtilsWrapper;->flushPersistentDataForAllProfiles()V

    .line 10
    invoke-direct {p0, p1}, Lcom/oculus/browser/HydraApplication;->dispatchPanelHidden(Lcom/oculus/browser/PanelApp;)V

    return-void
.end method

.method public onAppShown(Lcom/oculus/browser/PanelApp;)V
    .locals 2

    const-string v0, "HydraApplication"

    const-string v1, "onAppShown"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/oculus/browser/HydraApplication;->mShown:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/oculus/browser/HydraApplication;->mHiddenWhileInVR:Z

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/oculus/browser/VrShellDelegate;->exitVRIfNecessary()Z

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/browser/PanelApp;->getTabModelSelector()LpI0;

    move-result-object v0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-boolean v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->d(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->v()Z

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/oculus/browser/HydraApplication;->mPanelAppHidden:Lcom/oculus/browser/PanelApp;

    .line 11
    invoke-direct {p0, p1}, Lcom/oculus/browser/HydraApplication;->dispatchPanelShown(Lcom/oculus/browser/PanelApp;)V

    return-void
.end method

.method public onHandsModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/oculus/browser/VrShellDelegate;->onHandsModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public onRequestPanelPermissionsResult([Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    invoke-virtual {v0}, Lcom/oculus/browser/TabModelManager;->getNavUiRootWindow()Lcom/oculus/browser/PanelWindowAndroid;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oculus/browser/PanelWindowAndroid;->onRequestPermissionResponse([Ljava/lang/String;[I)V

    return-void
.end method

.method public onTerminate(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTerminate, restart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HydraApplication"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/oculus/browser/VrShellDelegate;->exitVRIfNecessary()Z

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/oculus/browser/HydraApplication;->clearAllPanelApps()V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/oculus/browser/HydraApplication;->onAppHidden(Lcom/oculus/browser/PanelApp;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/oculus/browser/HydraApplication;->onAppDestroyed(Lcom/oculus/browser/PanelApp;)V

    .line 7
    iget-object p1, p0, Lcom/oculus/browser/HydraApplication;->mVrApi:Lcom/oculus/browser/VrApi$Wrapper;

    invoke-virtual {p1, p0}, Lcom/oculus/browser/VrApi$Wrapper;->isInitializedWithContext(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/oculus/browser/HydraApplication;->mVrApi:Lcom/oculus/browser/VrApi$Wrapper;

    invoke-virtual {p1}, Lcom/oculus/browser/VrApi$Wrapper;->shutdown()V

    :cond_1
    return-void
.end method

.method public postPanelAppInitialize()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/HydraApplication;->mPostPanelAppInitComplete:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "HydraApplication.initialize2"

    .line 2
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HydraApplication"

    const-string v2, "initialize2-begin"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/oculus/browser/HydraApplication;->mPostPanelAppInitComplete:Z

    .line 5
    iget-object v2, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oculus/browser/PanelAppVrShellDelegate;->onNativeLibraryReady()V

    .line 6
    :cond_0
    sget-object v2, Lorg/chromium/chrome/browser/ApplicationLifetime;->a:LWT;

    invoke-virtual {v2, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.oculus.vrshell.panel.vr_permission.RESULT"

    .line 8
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, LY3;->a(Landroid/content/Context;)LY3;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/browser/HydraApplication;->mPermissionResponseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, LY3;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 10
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 11
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 13
    iget-object v4, p0, Lcom/oculus/browser/HydraApplication;->mDevicePausedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    new-instance v2, Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    new-instance v3, Lcom/oculus/browser/acra/reporter/OculusCrashReporter;

    invoke-direct {v3, p0}, Lcom/oculus/browser/acra/reporter/OculusCrashReporter;-><init>(Landroid/app/Application;)V

    .line 15
    invoke-static {}, Lcom/oculus/browser/acra/reporter/OculusCrashReporter;->getErrorUploadURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 16
    invoke-static {}, Lcom/oculus/browser/OculusUser;->getUserID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;-><init>(Lcom/oculus/browser/acra/reporter/ReportsCrashes;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v2, p0, Lcom/oculus/browser/HydraApplication;->mOculusBrowserACRAClient:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    .line 17
    new-instance v2, Lcom/oculus/browser/HydraApplication$3;

    invoke-direct {v2, p0}, Lcom/oculus/browser/HydraApplication$3;-><init>(Lcom/oculus/browser/HydraApplication;)V

    .line 18
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 19
    sput-object v2, Lorg/chromium/components/crash/browser/ChildProcessCrashObserver;->a:LWS0;

    .line 20
    invoke-static {}, Lcom/oculus/browser/OVRServiceManager;->getInstance()Lcom/oculus/browser/OVRServiceManager;

    invoke-static {p0}, Lcom/oculus/browser/OVRServiceManager;->addListener(Lcom/oculus/browser/OVRServiceManager$Listener;)V

    .line 21
    invoke-static {}, Lcom/oculus/browser/OVRServiceManager;->getInstance()Lcom/oculus/browser/OVRServiceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oculus/browser/OVRServiceManager;->requestUserCredentials(Landroid/content/Context;)V

    .line 22
    new-instance v2, Lcom/oculus/browser/HydraApplication$4;

    invoke-direct {v2, p0}, Lcom/oculus/browser/HydraApplication$4;-><init>(Lcom/oculus/browser/HydraApplication;)V

    sget-object v3, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 23
    invoke-virtual {v2, v3}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    const-string v2, "initialize2-end"

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public prePanelAppInitialize(Lcom/oculus/browser/ShellEnvironment;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/HydraApplication;->mPrePanelAppInitComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "HydraApplication.initialize"

    .line 2
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "initialize-begin"

    const-string v2, "HydraApplication"

    .line 3
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/oculus/browser/HydraApplication;->mPrePanelAppInitComplete:Z

    .line 5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/oculus/browser/HydraApplication;->mWindowIndexToPanelApp:Ljava/util/Map;

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/oculus/browser/HydraApplication;->mPanelIdToWindowIndex:Ljava/util/Map;

    .line 7
    new-instance v3, Lcom/oculus/browser/PanelAppVrShellDelegate;

    invoke-direct {v3, p0}, Lcom/oculus/browser/PanelAppVrShellDelegate;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    .line 8
    invoke-static {}, LwT;->c()LwT;

    move-result-object v3

    const-string v4, "disable-notifications"

    invoke-virtual {v3, v4}, LwT;->a(Ljava/lang/String;)V

    .line 9
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 10
    invoke-static {v3, v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b(Landroid/content/Context;Z)V

    .line 11
    invoke-static {p0}, Lcom/oculus/browser/Preferences;->init(Lcom/oculus/browser/HydraApplication;)V

    .line 12
    :try_start_0
    invoke-static {p0}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object v0

    invoke-virtual {v0}, LUg0;->b()V
    :try_end_0
    .catch LMU; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "ChromeBrowserInitializer failed"

    .line 13
    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    .line 14
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 15
    :goto_0
    invoke-static {}, Lcom/oculus/browser/Gatekeeper;->getInstance()Lcom/oculus/browser/Gatekeeper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/browser/Gatekeeper;->ensureDataAvailable(Lcom/oculus/browser/ShellEnvironment;)V

    .line 16
    new-instance p1, Lcom/oculus/browser/FacebookLoginManager;

    invoke-direct {p1, p0}, Lcom/oculus/browser/FacebookLoginManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oculus/browser/HydraApplication;->mFacebookLoginManager:Lcom/oculus/browser/FacebookLoginManager;

    const/4 p1, 0x0

    .line 17
    invoke-static {p1, p0, p0}, Lcom/oculus/browser/TabModelManager;->createInstance(ILandroid/content/Context;LeI0;)Lcom/oculus/browser/TabModelManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/browser/HydraApplication;->mTabModelManager:Lcom/oculus/browser/TabModelManager;

    .line 18
    invoke-virtual {p1, p0, p0}, Lcom/oculus/browser/TabModelManager;->loadModels(Landroid/content/Context;Ly30;)V

    const-string p1, "initialize-end"

    .line 19
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerPanelLifecycleCallbacks(LmT;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mPanelLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/oculus/browser/HydraApplication;->mPanelLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestWebVRDeepLink(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/oculus/browser/WebVRNavigationDescriptor;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, p2}, Lcom/oculus/browser/WebVRNavigationDescriptor;-><init>(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V

    invoke-virtual {v0, v1}, Lcom/oculus/browser/VrShellDelegate;->requestVrNavigation(Lcom/oculus/browser/WebVRNavigationDescriptor;)V

    :cond_0
    return-void
.end method

.method public setVSyncPaused(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mWindowIndexToPanelApp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/browser/PanelApp;

    invoke-virtual {v1, p1}, Lcom/oculus/browser/PanelApp;->setVSyncPaused(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showIncognitoNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/HydraApplication;->mShown:Z

    return v0
.end method

.method public supportsMediaSession()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unregisterPanelLifecycleCallbacks(LmT;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mPanelLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/oculus/browser/HydraApplication;->mPanelLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public uploadCrashReports()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/HydraApplication;->mOculusBrowserACRAClient:Lcom/oculus/browser/acra/OculusBrowserACRAClient;

    invoke-virtual {v0}, Lcom/oculus/browser/acra/OculusBrowserACRAClient;->uploadCrashReports()V

    return-void
.end method

.method public wasHiddenWhileInVR()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/HydraApplication;->mShown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/browser/HydraApplication;->mHiddenWhileInVR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
