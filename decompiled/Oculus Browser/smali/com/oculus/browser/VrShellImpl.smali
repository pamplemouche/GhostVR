.class public Lcom/oculus/browser/VrShellImpl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "VrShellImpl"


# instance fields
.field public mApplication:Landroid/app/Application;

.field public mHostActivity:Landroid/app/Activity;

.field public mMainSurfaceView:Lcom/oculus/browser/VrApiSurfaceView;

.field public mMainThreadHandler:Landroid/os/Handler;

.field public mNativeVrShell:J

.field public mNonVrTabRedirectHandler:LrH0;

.field public mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field public mTabModelSelector:LpI0;

.field public mViewEventSink:Lb11;


# direct methods
.method public constructor <init>(LpI0;Lorg/chromium/chrome/browser/tab/Tab;Lcom/oculus/browser/VrShellDelegate;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/VrShellImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VrShellImpl constructor1, this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VrShellImpl"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/oculus/browser/VrShellImpl;->mTabModelSelector:LpI0;

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/oculus/browser/VrShellImpl;->initCtor(Lorg/chromium/chrome/browser/tab/Tab;Lcom/oculus/browser/VrShellDelegate;)V

    return-void
.end method

.method public static destroyActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    instance-of v0, p0, Lcom/oculus/browser/WebVRActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private initCtor(Lorg/chromium/chrome/browser/tab/Tab;Lcom/oculus/browser/VrShellDelegate;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/oculus/browser/VrShellDelegate;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/browser/VrShellImpl;->mApplication:Landroid/app/Application;

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/VrShellImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 5
    iget-object p1, p0, Lcom/oculus/browser/VrShellImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 7
    invoke-static {p1}, LbX0;->a(Lorg/chromium/content_public/browser/WebContents;)LbX0;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/oculus/browser/VrShellImpl;->mViewEventSink:Lb11;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, LbX0;->a(Z)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/oculus/browser/VrShellImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 11
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/oculus/browser/VrShellImpl;->nativeInit(Lorg/chromium/content_public/browser/WebContents;Lcom/oculus/browser/VrShellDelegate;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oculus/browser/VrShellImpl;->mNativeVrShell:J

    return-void
.end method

.method private native nativeInit(Lorg/chromium/content_public/browser/WebContents;Lcom/oculus/browser/VrShellDelegate;)J
.end method

.method private native nativeNavigationStatusUpdate(JLcom/oculus/browser/WebVRNavigationDescriptor;)V
.end method

.method private native nativeOnDestroyRequest(J)V
.end method

.method private native nativeOnPause(J)V
.end method

.method private native nativeOnResume(J)V
.end method

.method private native nativeSetActivity(JLandroid/app/Activity;)V
.end method

.method private native nativeSetVrApiSurface(JLandroid/view/Surface;)V
.end method

.method private sendKey(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellImpl;->mHostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/oculus/browser/VrShellImpl;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oculus/browser/VrShellImpl$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/oculus/browser/VrShellImpl$2;-><init>(Lcom/oculus/browser/VrShellImpl;Landroid/app/Activity;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->K()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    .line 4
    iget-wide v2, v0, Lorg/chromium/ui/base/EventForwarder;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v2, v3, v0, p1}, LJ/N;->MZE$0qqv(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public forceExitVr()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/oculus/browser/VrShellDelegate;->requestToExitVr()V

    return-void
.end method

.method public final getHostActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellImpl;->mHostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellImpl;->mMainSurfaceView:Lcom/oculus/browser/VrApiSurfaceView;

    return-object v0
.end method

.method public final getTabModelSelector()LpI0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellImpl;->mTabModelSelector:LpI0;

    return-object v0
.end method

.method public final hasNewSurfaceView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellImpl;->mMainSurfaceView:Lcom/oculus/browser/VrApiSurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->K()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/EventForwarder;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNavigationStatusChange(Lcom/oculus/browser/WebVRNavigationDescriptor;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/VrShellImpl;->mNativeVrShell:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/browser/VrShellImpl;->nativeNavigationStatusUpdate(JLcom/oculus/browser/WebVRNavigationDescriptor;)V

    return-void
.end method

.method public onPause()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/VrShellImpl;->mNativeVrShell:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/oculus/browser/VrShellImpl;->nativeOnPause(J)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/VrShellImpl;->mNativeVrShell:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/oculus/browser/VrShellImpl;->mNativeVrShell:J

    invoke-direct {p0, v1, v2}, Lcom/oculus/browser/VrShellImpl;->nativeOnResume(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    const-string p2, "artb: VrShellImpl.onSurfaceChanged "

    .line 1
    invoke-static {p2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " w = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " h = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string p4, "VrShellImpl"

    .line 3
    invoke-static {p4, p2, p3}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-wide p2, p0, Lcom/oculus/browser/VrShellImpl;->mNativeVrShell:J

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_0

    .line 5
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/oculus/browser/VrShellImpl;->nativeSetVrApiSurface(JLandroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    const-string v0, "artb: VrShellImpl.onSurfaceCreated "

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VrShellImpl"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-wide v0, p0, Lcom/oculus/browser/VrShellImpl;->mNativeVrShell:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/browser/VrShellImpl;->nativeSetVrApiSurface(JLandroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    const-string v0, "artb: VrShellImpl.onSurfaceDestroyed "

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VrShellImpl"

    invoke-static {v1, p1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-wide v0, p0, Lcom/oculus/browser/VrShellImpl;->mNativeVrShell:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/browser/VrShellImpl;->nativeSetVrApiSurface(JLandroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artb: shutdown, this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VrShellImpl"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/oculus/browser/VrShellImpl;->swapHostActivity(Landroid/app/Activity;)V

    .line 3
    iget-wide v1, p0, Lcom/oculus/browser/VrShellImpl;->mNativeVrShell:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/oculus/browser/VrShellImpl;->nativeOnDestroyRequest(J)V

    .line 5
    iput-wide v3, p0, Lcom/oculus/browser/VrShellImpl;->mNativeVrShell:J

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/oculus/browser/VrShellImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 7
    iput-object v0, p0, Lcom/oculus/browser/VrShellImpl;->mTabModelSelector:LpI0;

    return-void
.end method

.method public swapHostActivity(Landroid/app/Activity;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artb: swapHostActivity, this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHostActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/browser/VrShellImpl;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/VrShellImpl;->mHostActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "VrShell.swapHostActivity"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/oculus/browser/VrShellImpl;->mHostActivity:Landroid/app/Activity;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/oculus/browser/VrShellImpl;->mMainSurfaceView:Lcom/oculus/browser/VrApiSurfaceView;

    invoke-virtual {v2}, Lcom/oculus/browser/VrApiSurfaceView;->detach()V

    .line 6
    iput-object v1, p0, Lcom/oculus/browser/VrShellImpl;->mMainSurfaceView:Lcom/oculus/browser/VrApiSurfaceView;

    .line 7
    iget-object v2, p0, Lcom/oculus/browser/VrShellImpl;->mViewEventSink:Lb11;

    if-eqz v2, :cond_1

    .line 8
    check-cast v2, LbX0;

    invoke-virtual {v2}, LbX0;->b()V

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/oculus/browser/VrShellImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/oculus/browser/VrShellImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v5, p0, Lcom/oculus/browser/VrShellImpl;->mNonVrTabRedirectHandler:LrH0;

    invoke-static {v2, v5}, LrH0;->a(Lorg/chromium/chrome/browser/tab/Tab;LrH0;)LrH0;

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellImpl;->getTabModelSelector()LpI0;

    move-result-object v2

    check-cast v2, LrI0;

    invoke-virtual {v2}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-static {v2}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 12
    iget-wide v5, p0, Lcom/oculus/browser/VrShellImpl;->mNativeVrShell:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3

    .line 13
    invoke-direct {p0, v5, v6, v1}, Lcom/oculus/browser/VrShellImpl;->nativeSetActivity(JLandroid/app/Activity;)V

    .line 14
    iget-wide v5, p0, Lcom/oculus/browser/VrShellImpl;->mNativeVrShell:J

    invoke-direct {p0, v5, v6, v1}, Lcom/oculus/browser/VrShellImpl;->nativeSetVrApiSurface(JLandroid/view/Surface;)V

    .line 15
    :cond_3
    iput-object p1, p0, Lcom/oculus/browser/VrShellImpl;->mHostActivity:Landroid/app/Activity;

    if-eqz p1, :cond_6

    .line 16
    iget-object v1, p0, Lcom/oculus/browser/VrShellImpl;->mViewEventSink:Lb11;

    if-eqz v1, :cond_4

    .line 17
    check-cast v1, LbX0;

    invoke-virtual {v1}, LbX0;->a()V

    .line 18
    iget-object v1, p0, Lcom/oculus/browser/VrShellImpl;->mViewEventSink:Lb11;

    const/4 v2, 0x1

    check-cast v1, LbX0;

    invoke-virtual {v1, v2}, LbX0;->a(Z)V

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/oculus/browser/VrShellImpl;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    new-instance v2, Lcom/oculus/browser/VrShellImpl$1;

    invoke-direct {v2, p0}, Lcom/oculus/browser/VrShellImpl$1;-><init>(Lcom/oculus/browser/VrShellImpl;)V

    .line 20
    invoke-static {v1, v2}, LrH0;->a(Lorg/chromium/chrome/browser/tab/Tab;LrH0;)LrH0;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/browser/VrShellImpl;->mNonVrTabRedirectHandler:LrH0;

    .line 21
    new-instance v1, Lcom/oculus/browser/VrApiSurfaceView;

    iget-object v2, p0, Lcom/oculus/browser/VrShellImpl;->mHostActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/oculus/browser/VrApiSurfaceView;-><init>(Landroid/content/Context;Lcom/oculus/browser/VrShellImpl;)V

    iput-object v1, p0, Lcom/oculus/browser/VrShellImpl;->mMainSurfaceView:Lcom/oculus/browser/VrApiSurfaceView;

    .line 22
    iget-wide v1, p0, Lcom/oculus/browser/VrShellImpl;->mNativeVrShell:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    .line 23
    invoke-direct {p0, v1, v2, p1}, Lcom/oculus/browser/VrShellImpl;->nativeSetActivity(JLandroid/app/Activity;)V

    .line 24
    :cond_5
    invoke-virtual {p0}, Lcom/oculus/browser/VrShellImpl;->getTabModelSelector()LpI0;

    move-result-object p1

    check-cast p1, LrI0;

    invoke-virtual {p1}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    invoke-static {p1}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 25
    :cond_6
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method
