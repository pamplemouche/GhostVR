.class public Lcom/oculus/browser/WebVRActivity;
.super Landroid/app/Activity;
.source "PG"

# interfaces
.implements LeI0;


# static fields
.field public static final INTENT_KEY_FROM_PKG:Ljava/lang/String; = "intent_pkg"

.field public static final TAG:Ljava/lang/String; = "WebVRActivity.Oculus"

.field public static final WEBVR_PRESENT_REQUESTED:Ljava/lang/String; = "WEBVR_PRESENT_REQUESTED"


# instance fields
.field public mMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/WebVRActivity;->mMainThreadHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebVRActivity CTOR! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WebVRActivity.Oculus"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private checkExtras(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "WEBVR_PRESENT_REQUESTED"

    .line 1
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "intent_pkg"

    .line 2
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez v1, :cond_2

    if-nez p1, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "WebVRActivity.Oculus"

    const-string v2, "The activity wasn\'t invoked by us or by SystemActivities: just start the browser."

    .line 3
    invoke-static {v1, v2, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/oculus/browser/WebVRActivity;->restartBrowserAsPanel()V

    .line 5
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->finish()V

    return v0

    :cond_2
    return v2
.end method

.method private getHydraApp()Lcom/oculus/browser/HydraApplication;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/oculus/browser/HydraApplication;

    return-object v0
.end method

.method private restartBrowserAsPanel()V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WebVRActivity.Oculus"

    const-string v2, "restartBrowserAsPanel"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oculus.vrshell"

    const-string v4, "com.oculus.vrshell.MainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apk://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Activity;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, -0x2003

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x8e

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->getDelegate()Lcom/oculus/browser/PanelAppVrShellDelegate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, p0}, Lcom/oculus/browser/VrShellDelegate;->isActivityBound(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v1, p1}, Lcom/oculus/browser/VrShellDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    .line 8
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_3
    return v0
.end method

.method public finish()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WebVRActivity.Oculus"

    const-string v2, "finish!"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Lcom/oculus/browser/PanelAppVrShellDelegate;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/WebVRActivity;->getHydraApp()Lcom/oculus/browser/HydraApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/browser/HydraApplication;->mVrShellDelegate:Lcom/oculus/browser/PanelAppVrShellDelegate;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTabCreator(Z)LbI0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/WebVRActivity;->getHydraApp()Lcom/oculus/browser/HydraApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/browser/HydraApplication;->getTabCreator(Z)LbI0;

    move-result-object p1

    return-object p1
.end method

.method public getTabModelSelector()LpI0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/WebVRActivity;->getHydraApp()Lcom/oculus/browser/HydraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->getTabModelSelector()LpI0;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "WebVRActivity.Oculus"

    invoke-static {v3, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->getDelegate()Lcom/oculus/browser/PanelAppVrShellDelegate;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "onBackPressed, isFinishing(), doing nothing"

    .line 4
    invoke-static {v3, v1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0, p0}, Lcom/oculus/browser/VrShellDelegate;->isActivityBound(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {v0}, Lcom/oculus/browser/PanelAppVrShellDelegate;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lcom/oculus/browser/VrShellDelegate;->getSavedHistoryIndex()I

    move-result v4

    .line 8
    invoke-virtual {v0}, Lcom/oculus/browser/VrShellDelegate;->getCurrentHistoryIndex()I

    move-result v5

    if-le v5, v4, :cond_2

    .line 9
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "going back, index %d, startidx %d"

    invoke-static {v3, v1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->b()V

    :cond_1
    return-void

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/oculus/browser/PanelAppVrShellDelegate;->isReturnToCallerRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ovrweb://exit"

    .line 14
    invoke-virtual {v0, v1}, Lcom/oculus/browser/PanelAppVrShellDelegate;->broadcastToBrowser(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v0}, Lcom/oculus/browser/VrShellDelegate;->forceExitVR()V

    .line 16
    :cond_4
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "WebVRActivity.Oculus"

    invoke-static {v2, p1, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "WebVRActivity.create"

    .line 3
    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/oculus/browser/WebVRActivity;->checkExtras(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v1, "WebVRActivity.start"

    .line 6
    invoke-static {v1, p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->getDelegate()Lcom/oculus/browser/PanelAppVrShellDelegate;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/oculus/browser/VrShellDelegate;->hasBoundActivity()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, p0}, Lcom/oculus/browser/VrShellDelegate;->isActivityBound(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/oculus/browser/VrShellDelegate;->getBoundActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {p1, v3, v4}, Lcom/oculus/browser/VrShellDelegate;->onActivityStateChange(Landroid/app/Activity;I)V

    .line 11
    invoke-virtual {p1}, Lcom/oculus/browser/VrShellDelegate;->getBoundActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x6

    .line 12
    invoke-virtual {p1, v3, v4}, Lcom/oculus/browser/VrShellDelegate;->onActivityStateChange(Landroid/app/Activity;I)V

    :cond_1
    const/4 v3, 0x1

    .line 13
    invoke-virtual {p1, p0, v3}, Lcom/oculus/browser/VrShellDelegate;->onActivityStateChange(Landroid/app/Activity;I)V

    .line 14
    invoke-virtual {p1}, Lcom/oculus/browser/VrShellDelegate;->isWebVRRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/oculus/browser/VrShellDelegate;->saveHistoryIndex()V

    .line 16
    invoke-virtual {p1}, Lcom/oculus/browser/VrShellDelegate;->setRequestPresentResult()V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/oculus/browser/VrShellDelegate;->isInVR()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/oculus/browser/VrShellDelegate;->reenterVr()V

    goto :goto_0

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "not presenting, finishing..."

    .line 19
    invoke-static {v2, v0, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->finish()V

    .line 21
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onCreate: no vrshelldelegate, finishing"

    .line 22
    invoke-static {v2, v0, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->getDelegate()Lcom/oculus/browser/PanelAppVrShellDelegate;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " delegate? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "WebVRActivity.Oculus"

    invoke-static {v4, v1, v3}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "WebVRActivity.onDestroy"

    .line 3
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x6

    .line 4
    :try_start_0
    invoke-virtual {v0, p0, v2}, Lcom/oculus/browser/VrShellDelegate;->onActivityStateChange(Landroid/app/Activity;I)V

    .line 5
    invoke-virtual {v0}, Lcom/oculus/browser/PanelAppVrShellDelegate;->isReturnToCallerRequested()Z

    move-result v2

    .line 6
    invoke-virtual {v0}, Lcom/oculus/browser/VrShellDelegate;->forceExitVR()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/oculus/browser/WebVRActivity;->restartBrowserAsPanel()V

    .line 8
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 9
    invoke-static {v3, v1}, Lcom/oculus/browser/WebVRActivity;->$closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_3
    return-void

    .line 10
    :goto_2
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 11
    invoke-static {v0, v1}, Lcom/oculus/browser/WebVRActivity;->$closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_4
    throw v2
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->getDelegate()Lcom/oculus/browser/PanelAppVrShellDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/oculus/browser/VrShellDelegate;->isActivityBound(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/oculus/browser/VrShellDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WebVRActivity.Oculus"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/oculus/browser/WebVRActivity;->checkExtras(Landroid/content/Intent;)Z

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->getDelegate()Lcom/oculus/browser/PanelAppVrShellDelegate;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " delegate? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "WebVRActivity.Oculus"

    invoke-static {v3, v1, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "WebVRActivity.onPause"

    .line 3
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x4

    .line 4
    :try_start_0
    invoke-virtual {v0, p0, v3}, Lcom/oculus/browser/VrShellDelegate;->onActivityStateChange(Landroid/app/Activity;I)V

    .line 5
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v2, v1}, Lcom/oculus/browser/WebVRActivity;->$closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 8
    invoke-static {v0, v1}, Lcom/oculus/browser/WebVRActivity;->$closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_3
    throw v2
.end method

.method public onRestart()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestart! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "WebVRActivity.Oculus"

    invoke-static {v3, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "WebVRActivity.onRestart"

    .line 2
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->getDelegate()Lcom/oculus/browser/PanelAppVrShellDelegate;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/oculus/browser/VrShellDelegate;->isInVR()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "not presenting, finishing..."

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {v3, v4, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->finish()V

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    .line 7
    invoke-virtual {v2, p0, v1}, Lcom/oculus/browser/VrShellDelegate;->onActivityStateChange(Landroid/app/Activity;I)V

    .line 8
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 9
    invoke-static {v1, v0}, Lcom/oculus/browser/WebVRActivity;->$closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v1, v0}, Lcom/oculus/browser/WebVRActivity;->$closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_3
    throw v2
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->getDelegate()Lcom/oculus/browser/PanelAppVrShellDelegate;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " delegate? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "WebVRActivity.Oculus"

    invoke-static {v3, v1, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "WebVRActivity.onResume"

    .line 3
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    .line 5
    invoke-virtual {v0, p0, v3}, Lcom/oculus/browser/VrShellDelegate;->onActivityStateChange(Landroid/app/Activity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    invoke-static {v2, v1}, Lcom/oculus/browser/WebVRActivity;->$closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 8
    invoke-static {v0, v1}, Lcom/oculus/browser/WebVRActivity;->$closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_3
    throw v2
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->getDelegate()Lcom/oculus/browser/PanelAppVrShellDelegate;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " delegate? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "WebVRActivity.Oculus"

    invoke-static {v3, v1, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, p0, v1}, Lcom/oculus/browser/VrShellDelegate;->onActivityStateChange(Landroid/app/Activity;I)V

    .line 4
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "WebVRActivity.start"

    .line 5
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->getDelegate()Lcom/oculus/browser/PanelAppVrShellDelegate;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " delegate? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "WebVRActivity.Oculus"

    invoke-static {v3, v1, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "WebVRActivity.onStop"

    .line 3
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x5

    .line 4
    :try_start_0
    invoke-virtual {v0, p0, v3}, Lcom/oculus/browser/VrShellDelegate;->onActivityStateChange(Landroid/app/Activity;I)V

    .line 5
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v2, v1}, Lcom/oculus/browser/WebVRActivity;->$closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 8
    invoke-static {v0, v1}, Lcom/oculus/browser/WebVRActivity;->$closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_3
    throw v2
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method public showIncognitoNotifications()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/WebVRActivity;->getHydraApp()Lcom/oculus/browser/HydraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->showIncognitoNotifications()Z

    move-result v0

    return v0
.end method

.method public supportsMediaSession()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/WebVRActivity;->getHydraApp()Lcom/oculus/browser/HydraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/browser/HydraApplication;->supportsMediaSession()Z

    move-result v0

    return v0
.end method

.method public terminate()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "WebVRActivity.Oculus"

    invoke-static {v3, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "WebVRActivity.terminate"

    .line 2
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->getDelegate()Lcom/oculus/browser/PanelAppVrShellDelegate;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Lcom/oculus/browser/VrShellDelegate;->isAutopresentWebVrScheduled()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "deepLink to VR was requested: do NOT return to Browser via vrshell"

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {v3, v2, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v4, v0}, Lcom/oculus/browser/WebVRActivity;->$closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x6

    .line 7
    :try_start_1
    invoke-virtual {v2, p0, v1}, Lcom/oculus/browser/VrShellDelegate;->onActivityStateChange(Landroid/app/Activity;I)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/browser/WebVRActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {v4, v0}, Lcom/oculus/browser/WebVRActivity;->$closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_4

    .line 11
    invoke-static {v1, v0}, Lcom/oculus/browser/WebVRActivity;->$closeResource(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_4
    throw v2
.end method
