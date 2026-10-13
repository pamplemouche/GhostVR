.class public Lorg/chromium/ui/base/WindowAndroid;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEc1;
.implements Lbd1;


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final MAX_REFRESH_RATE_DELTA:F = 2.0f

.field public static final START_INTENT_FAILURE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "WindowAndroid"

.field public static final WINDOW_CALLBACK_ERRORS:Ljava/lang/String; = "window_callback_errors"


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActivityStateObservers:LWT;

.field public mAnimationPlaceholderView:Landroid/view/View;

.field public mAnimationsOverContent:Ljava/util/HashSet;

.field public final mContextMenuCloseListeners:LWT;

.field public mContextRef:Ljava/lang/ref/WeakReference;

.field public final mCursorObserver:LYe1;

.field public final mDisplayAndroid:Lcd1;

.field public mIntentErrors:Ljava/util/HashMap;

.field public mIsTouchExplorationEnabled:Z

.field public mKeyboardVisibilityDelegate:Lrc1;

.field public mNativeWindowAndroid:J

.field public mPendingVSyncRequest:Z

.field public mPermissionDelegate:LEc1;

.field public mSelectionHandlesActive:Z

.field public mSelectionHandlesObservers:LWT;

.field public mSupportedRefreshRateModes:Ljava/util/List;

.field public mTouchExplorationMonitor:Lad1;

.field public final mVSyncListener:Lyc1;

.field public final mVSyncMonitor:Lzc1;

.field public mVSyncPaused:Z

.field public mWindowisWideColorGamut:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcd1;->a(Landroid/content/Context;)Lcd1;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;Lcd1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcd1;)V
    .locals 11

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lrc1;->x:Lrc1;

    .line 4
    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityDelegate:Lrc1;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    .line 6
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mActivityStateObservers:LWT;

    .line 7
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mSelectionHandlesObservers:LWT;

    .line 8
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mContextMenuCloseListeners:LWT;

    .line 9
    new-instance v0, LSc1;

    invoke-direct {v0, p0}, LSc1;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncListener:Lyc1;

    .line 10
    new-instance v0, LTc1;

    invoke-direct {v0, p0}, LTc1;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mCursorObserver:LYe1;

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    .line 13
    iput-object p2, p0, Lorg/chromium/ui/base/WindowAndroid;->mDisplayAndroid:Lcd1;

    .line 14
    iget-object v0, p2, Lcd1;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->b()V

    .line 16
    :cond_0
    invoke-static {}, LqU;->a()LqU;

    move-result-object v0

    .line 17
    :try_start_0
    new-instance v1, Lzc1;

    iget-object v2, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncListener:Lyc1;

    iget-object v3, p0, Lorg/chromium/ui/base/WindowAndroid;->mDisplayAndroid:Lcd1;

    .line 18
    iget v3, v3, Lcd1;->h:F

    .line 19
    invoke-direct {v1, v2, v3}, Lzc1;-><init>(Lyc1;F)V

    iput-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lzc1;

    .line 20
    sget-object v1, LzT;->a:Landroid/content/Context;

    const-string v2, "accessibility"

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {v0}, LqU;->close()V

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "8.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    invoke-static {p1}, LzT;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 26
    invoke-static {p1}, LBU;->a(Landroid/content/res/Configuration;)Z

    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    .line 28
    invoke-virtual/range {v0 .. v10}, Lcd1;->a(Landroid/graphics/Point;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Landroid/view/Display$Mode;Ljava/util/List;)V

    .line 29
    :cond_1
    iget-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mCursorObserver:LYe1;

    invoke-static {p1}, LZe1;->a(LYe1;)V

    return-void

    :catchall_0
    move-exception p1

    .line 30
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 31
    :try_start_2
    invoke-virtual {v0}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 32
    sget-object v1, LRB;->a:LLB;

    invoke-virtual {v1, p1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 33
    :goto_0
    throw p2
.end method

.method private clearNativePointer()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    return-void
.end method

.method public static createForTesting()J
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/ui/base/WindowAndroid;

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-direct {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-direct {v0}, Lorg/chromium/ui/base/WindowAndroid;->getNativePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method private getNativePointer()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 2
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mDisplayAndroid:Lcd1;

    .line 3
    iget v0, v0, Lcd1;->b:I

    .line 4
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 5
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101004d

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->a()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v2}, LCU;->a(Landroid/view/Window;)Z

    move-result v3

    .line 11
    :goto_1
    invoke-static {p0, v0, v1, v3}, LJ/N;->MFjTMMS_(Ljava/lang/Object;IFZ)J

    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 13
    iget-boolean v2, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncPaused:Z

    .line 14
    invoke-static {v0, v1, p0, v2}, LJ/N;->MotttR54(JLjava/lang/Object;Z)V

    .line 15
    :cond_3
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    return-wide v0
.end method

.method private getRefreshRate()F
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mDisplayAndroid:Lcd1;

    .line 2
    iget v0, v0, Lcd1;->h:F

    return v0
.end method

.method private getSupportedRefreshRates()[F
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mSupportedRefreshRateModes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/chromium/ui/base/WindowAndroid;->mSupportedRefreshRateModes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lorg/chromium/ui/base/WindowAndroid;->mSupportedRefreshRateModes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display$Mode;

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private onSelectionHandlesStateChanged(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mSelectionHandlesActive:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mSelectionHandlesObservers:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LYc1;

    .line 3
    invoke-interface {v1, p1}, LYc1;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestVSyncUpdate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPendingVSyncRequest:Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lzc1;

    invoke-virtual {v0}, Lzc1;->b()V

    return-void
.end method

.method private setPreferredRefreshRate(F)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mSupportedRefreshRateModes:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move-object v3, v0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v4, p0, Lorg/chromium/ui/base/WindowAndroid;->mSupportedRefreshRateModes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 3
    iget-object v4, p0, Lorg/chromium/ui/base/WindowAndroid;->mSupportedRefreshRateModes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    .line 4
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    sub-float v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_2

    move-object v3, v4

    move v2, v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh rate not supported : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "WindowAndroid"

    invoke-static {v2, p1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    .line 7
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->a()Landroid/view/Window;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 9
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-ne v2, v1, :cond_5

    return-void

    .line 10
    :cond_5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/Window;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, LzT;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public addActivityStateObserver(LVc1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mActivityStateObservers:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public addContextMenuCloseListener(LXc1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mContextMenuCloseListeners:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSelectionHandlesObserver(LYc1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mSelectionHandlesObservers:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 2
    iget-boolean v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mSelectionHandlesActive:Z

    invoke-interface {p1, v0}, LYc1;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mDisplayAndroid:Lcd1;

    .line 2
    iget-object v1, v0, Lcd1;->i:Landroid/view/Display$Mode;

    .line 3
    iget-object v0, v0, Lcd1;->j:Ljava/util/List;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/Display$Mode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$Mode;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 9
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$Mode;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 10
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$Mode;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mSupportedRefreshRateModes:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 13
    iput-object v2, p0, Lorg/chromium/ui/base/WindowAndroid;->mSupportedRefreshRateModes:Ljava/util/List;

    .line 14
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 15
    invoke-direct {p0}, Lorg/chromium/ui/base/WindowAndroid;->getSupportedRefreshRates()[F

    move-result-object v2

    .line 16
    invoke-static {v0, v1, p0, v2}, LJ/N;->MTDQeb$o(JLjava/lang/Object;[F)V

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->willNotDraw()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 3
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_1
    return-void
.end method

.method public final canRequestPermission(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:LEc1;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, LEc1;->canRequestPermission(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "WindowAndroid"

    const-string v2, "Cannot determine the request permission state as the context is not an Activity"

    .line 3
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public canResolveActivity(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public cancelIntent(I)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MV00Qksi(JLjava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mTouchExplorationMonitor:Lad1;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, v0, Lad1;->b:Lorg/chromium/ui/base/WindowAndroid;

    .line 6
    iget-object v1, v1, Lorg/chromium/ui/base/WindowAndroid;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 7
    iget-object v0, v0, Lad1;->a:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mCursorObserver:LYe1;

    invoke-static {v0}, LZe1;->b(LYe1;)V

    return-void
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getActivityState()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getContext()Ljava/lang/ref/WeakReference;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getDisplay()Lcd1;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mDisplayAndroid:Lcd1;

    return-object v0
.end method

.method public getKeyboardDelegate()Lrc1;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityDelegate:Lrc1;

    return-object v0
.end method

.method public getReadbackView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVsyncPeriodInMillis()J
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lzc1;

    invoke-virtual {v0}, Lzc1;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->a()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public handlePermissionResult(I[Ljava/lang/String;[I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:LEc1;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, LEc1;->handlePermissionResult(I[Ljava/lang/String;[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:LEc1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LEc1;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 4
    invoke-static {v0, p1, v1, v2}, LdT;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public haveAnimationsEnded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isInsideVSync()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lzc1;

    .line 2
    iget-boolean v0, v0, Lzc1;->a:Z

    return v0
.end method

.method public final isPermissionRevokedByPolicy(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:LEc1;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, LEc1;->isPermissionRevokedByPolicy(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "WindowAndroid"

    const-string v2, "Cannot determine the policy permission state as the context is not an Activity"

    .line 3
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public onActivityPaused()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mActivityStateObservers:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVc1;

    check-cast v1, LbX0;

    .line 2
    iget-boolean v2, v1, LbX0;->y:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, LbX0;->y:Z

    .line 4
    invoke-virtual {v1}, LbX0;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onActivityResumed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mActivityStateObservers:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVc1;

    check-cast v1, LbX0;

    .line 2
    iget-boolean v2, v1, LbX0;->y:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v1, LbX0;->y:Z

    .line 4
    invoke-virtual {v1}, LbX0;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onActivityStarted()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MbyUPhMo(JLjava/lang/Object;)V

    return-void
.end method

.method public onActivityStopped()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MMLuxHp6(JLjava/lang/Object;)V

    return-void
.end method

.method public onContextMenuClosed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mContextMenuCloseListeners:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LXc1;

    .line 2
    check-cast v1, Li40;

    .line 3
    iget-object v2, v1, Li40;->b:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    .line 4
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->D:Lorg/chromium/base/Callback;

    const/4 v3, 0x0

    .line 5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 6
    iget-object v2, v1, Li40;->a:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v2, v1}, Lorg/chromium/ui/base/WindowAndroid;->removeContextMenuCloseListener(LXc1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCurrentModeChanged(Landroid/view/Display$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->b()V

    return-void
.end method

.method public onDIPScaleChanged(F)V
    .locals 0

    return-void
.end method

.method public onDisplayModesChanged(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->b()V

    return-void
.end method

.method public onRefreshRateChanged(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lzc1;

    invoke-virtual {v0, p1}, Lzc1;->a(F)V

    .line 2
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 4
    invoke-static {v0, v1, p0, p1}, LJ/N;->MWNjxKcW(JLjava/lang/Object;F)V

    :cond_0
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 3
    invoke-static {v0, v1, p0, p1}, LJ/N;->MrnNdVRa(JLjava/lang/Object;Z)V

    return-void
.end method

.method public removeActivityStateObserver(LVc1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mActivityStateObservers:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeContextMenuCloseListener(LXc1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mContextMenuCloseListeners:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeIntentCallback(LWc1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeSelectionHandlesObserver(LYc1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mSelectionHandlesObservers:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;LKc1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:LEc1;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, LEc1;->requestPermissions([Ljava/lang/String;LKc1;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "WindowAndroid"

    const-string v0, "Cannot request permissions as the context is not an Activity"

    .line 3
    invoke-static {p2, v0, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "window_callback_errors"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Ljava/util/HashMap;

    .line 4
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    const-string v1, "window_callback_errors"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setAndroidPermissionDelegate(LEc1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:LEc1;

    return-void
.end method

.method public setAnimationPlaceholderView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    .line 2
    iget-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsTouchExplorationEnabled:Z

    .line 3
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->c()V

    .line 4
    new-instance p1, Lad1;

    invoke-direct {p1, p0}, Lad1;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mTouchExplorationMonitor:Lad1;

    return-void
.end method

.method public setKeyboardDelegate(Lrc1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityDelegate:Lrc1;

    .line 2
    sput-object p1, Lrc1;->x:Lrc1;

    return-void
.end method

.method public setVSyncPaused(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncPaused:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncPaused:Z

    if-nez p1, :cond_1

    .line 3
    iget-boolean v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPendingVSyncRequest:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/ui/base/WindowAndroid;->requestVSyncUpdate()V

    .line 4
    :cond_1
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 5
    invoke-static {v0, v1, p0, p1}, LJ/N;->MotttR54(JLjava/lang/Object;Z)V

    :cond_2
    return-void
.end method

.method public showCallbackNonExistentError(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public showCancelableIntent(Landroid/app/PendingIntent;LWc1;Ljava/lang/Integer;)I
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t show intent as context is not an Activity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, -0x1

    return p1
.end method

.method public showCancelableIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)I
    .locals 0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t show intent as context is not an Activity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, -0x1

    return p1
.end method

.method public showCancelableIntent(Lorg/chromium/base/Callback;LWc1;Ljava/lang/Integer;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public showError(I)V
    .locals 1

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, LzT;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, v1}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public showIntent(Landroid/app/PendingIntent;LWc1;Ljava/lang/Integer;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/app/PendingIntent;LWc1;Ljava/lang/Integer;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public showIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public startAnimationOverContent(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 5
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->c()V

    .line 6
    new-instance v0, LUc1;

    invoke-direct {v0, p0}, LUc1;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Already Added."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Already started."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
