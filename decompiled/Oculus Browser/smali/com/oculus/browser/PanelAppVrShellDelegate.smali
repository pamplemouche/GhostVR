.class public Lcom/oculus/browser/PanelAppVrShellDelegate;
.super Lcom/oculus/browser/VrShellDelegate;
.source "PG"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final SHELL_LAUNCH_ACTION:Ljava/lang/String; = "com.oculus.vrshell.intent.action.LAUNCH"

.field public static final SYSTEM_SHELL_PACKAGE:Ljava/lang/String; = "com.oculus.vrshell"

.field public static final TAG:Ljava/lang/String; = "PanelAppVrShellDelegate"


# instance fields
.field public mDeepLinkBackToCallerRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oculus/browser/VrShellDelegate;-><init>(Landroid/content/Context;)V

    .line 2
    sput-object p0, Lcom/oculus/browser/VrShellDelegate;->sInstance:Lcom/oculus/browser/VrShellDelegate;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/oculus/browser/PanelAppVrShellDelegate;->mDeepLinkBackToCallerRequested:Z

    return-void
.end method

.method public static getBroadcastIntentForVrShell(Landroid/app/Application;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.oculus.vrshell.intent.action.LAUNCH"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.oculus.vrshell"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.oculus.browser/com.oculus.browser.PanelService"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "intent_data"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "blackscreen"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method private getHydraApp()Lcom/oculus/browser/HydraApplication;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/oculus/browser/HydraApplication;

    return-object v0
.end method

.method private getWebVRActivity()Lcom/oculus/browser/WebVRActivity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->getBoundActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oculus/browser/WebVRActivity;

    return-object v0
.end method


# virtual methods
.method public activitySupportsPresentation(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/oculus/browser/WebVRActivity;

    return p1
.end method

.method public addVrViewsIfNeeded()V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "PanelAppVrShellDelegate.addVrViewsIfNeeded"

    .line 1
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    invoke-virtual {v0}, Lcom/oculus/browser/VrShellImpl;->hasNewSurfaceView()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "PanelAppVrShellDelegate"

    if-eqz v0, :cond_0

    const-string v0, "addVrViewsIfNeeded, view = "

    .line 3
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    invoke-virtual {v4}, Lcom/oculus/browser/VrShellImpl;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->getBoundActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    invoke-virtual {v2}, Lcom/oculus/browser/VrShellImpl;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "No need in addVrViewsIfNeeded, view = "

    .line 5
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    invoke-virtual {v4}, Lcom/oculus/browser/VrShellImpl;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_0
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method

.method public broadcastToBrowser(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/oculus/browser/PanelAppVrShellDelegate;->mDeepLinkBackToCallerRequested:Z

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/oculus/browser/PanelAppVrShellDelegate;->getBroadcastIntentForVrShell(Landroid/app/Application;)Landroid/content/Intent;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v2, "uri"

    .line 4
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public createVrShell(Lorg/chromium/chrome/browser/tab/Tab;Z)Z
    .locals 1

    .line 1
    new-instance p2, Lcom/oculus/browser/VrShellImpl;

    invoke-virtual {p0}, Lcom/oculus/browser/PanelAppVrShellDelegate;->getTabModelSelector()LpI0;

    move-result-object v0

    invoke-direct {p2, v0, p1, p0}, Lcom/oculus/browser/VrShellImpl;-><init>(LpI0;Lorg/chromium/chrome/browser/tab/Tab;Lcom/oculus/browser/VrShellDelegate;)V

    iput-object p2, p0, Lcom/oculus/browser/VrShellDelegate;->mVrShell:Lcom/oculus/browser/VrShellImpl;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/PanelAppVrShellDelegate;->getHydraApp()Lcom/oculus/browser/HydraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getTabModelSelector()LpI0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/PanelAppVrShellDelegate;->getHydraApp()Lcom/oculus/browser/HydraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->getTabModelSelector()LpI0;

    move-result-object v0

    return-object v0
.end method

.method public isReturnToCallerRequested()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/PanelAppVrShellDelegate;->mDeepLinkBackToCallerRequested:Z

    return v0
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

    const-string v2, "PanelAppVrShellDelegate"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/oculus/browser/PanelAppVrShellDelegate;->getHydraApp()Lcom/oculus/browser/HydraApplication;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->wasHiddenWhileInVR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->finalizeHiding()V

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/oculus/browser/VrShellDelegate;->onActivityDestroyed()V

    return-void
.end method

.method public onNativeLibraryReady()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/browser/VrApi;->initialize(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/oculus/browser/VrShellDelegate;->onNativeLibraryAvailable()V

    .line 3
    invoke-super {p0}, Lcom/oculus/browser/VrShellDelegate;->onNativeLibraryReady()V

    return-void
.end method

.method public presentRequestedInternal()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PanelAppVrShellDelegate"

    const-string v3, "presentRequestedInternal"

    .line 1
    invoke-static {v2, v3, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->stopVrNavigation()V

    .line 3
    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/oculus/browser/WebVRNavigationDescriptor;->isReturnToCallerRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/oculus/browser/PanelAppVrShellDelegate;->mDeepLinkBackToCallerRequested:Z

    .line 5
    iput-boolean v3, p0, Lcom/oculus/browser/VrShellDelegate;->mRequestedWebVR:Z

    .line 6
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->hasBoundActivity()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const-string v4, "WebVRActivity.create"

    .line 7
    invoke-static {v4, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 9
    iget-object v4, p0, Lcom/oculus/browser/VrShellDelegate;->mContext:Landroid/content/Context;

    const-class v5, Lcom/oculus/browser/WebVRActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 10
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x10000

    .line 11
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "WEBVR_PRESENT_REQUESTED"

    .line 12
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 13
    iget-object v3, p0, Lcom/oculus/browser/VrShellDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "presentRequestedInternal: Activity has started! "

    .line 14
    invoke-static {v2, v1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "presentRequestedInternal: Activity is already started! "

    .line 15
    invoke-static {v2, v1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellDelegate;->setRequestPresentResult()V

    :goto_1
    return-void
.end method

.method public removeVrViews()V
    .locals 0

    return-void
.end method

.method public setVSyncPaused(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/PanelAppVrShellDelegate;->getHydraApp()Lcom/oculus/browser/HydraApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/browser/HydraApplication;->setVSyncPaused(Z)V

    return-void
.end method

.method public shutdownVR()V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "PanelAppVrShellDelegate.shutdownVR"

    .line 1
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/oculus/browser/PanelAppVrShellDelegate;->getWebVRActivity()Lcom/oculus/browser/WebVRActivity;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/oculus/browser/WebVRNavigationDescriptor;->isNavigating()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-super {p0}, Lcom/oculus/browser/VrShellDelegate;->shutdownVR()V

    if-nez v2, :cond_3

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/oculus/browser/WebVRActivity;->terminate()V

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/oculus/browser/PanelAppVrShellDelegate;->mDeepLinkBackToCallerRequested:Z

    if-eqz v0, :cond_2

    const-string v0, "ovrweb://exit"

    .line 8
    invoke-virtual {p0, v0}, Lcom/oculus/browser/PanelAppVrShellDelegate;->broadcastToBrowser(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "ovrweb://onWebVRExit"

    .line 9
    invoke-virtual {p0, v0}, Lcom/oculus/browser/PanelAppVrShellDelegate;->broadcastToBrowser(Ljava/lang/String;)V

    .line 10
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/oculus/browser/PanelAppVrShellDelegate;->mDeepLinkBackToCallerRequested:Z

    .line 11
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method
