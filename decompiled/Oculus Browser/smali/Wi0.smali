.class public LWi0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LWi0;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lorg/chromium/content_public/browser/WebContents;Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 4

    .line 28
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->i()Landroid/graphics/Rect;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const p0, 0x3ed639d7

    const v1, 0x4018f5c3    # 2.39f

    invoke-static {v0, p0, v1}, LEO0;->a(FFF)F

    move-result p0

    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v1, v0

    int-to-float v2, p1

    div-float v3, v1, v2

    cmpl-float v3, p0, v3

    if-lez v3, :cond_1

    div-float/2addr v1, p0

    float-to-int p0, v1

    move v1, p0

    move p0, v0

    goto :goto_0

    :cond_1
    mul-float v2, v2, p0

    float-to-int p0, v2

    move v1, p1

    :goto_0
    sub-int/2addr v0, p0

    .line 33
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v1

    .line 34
    div-int/lit8 p1, p1, 0x2

    .line 35
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr p0, v0

    add-int/2addr v1, p1

    invoke-direct {v2, v0, p1, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(I)V
    .locals 2

    const-string v0, "Media.VideoPersistence.AttemptResult"

    const/16 v1, 0x9

    .line 2
    invoke-static {v0, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic a(LWi0;Lorg/chromium/chrome/browser/ChromeActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LWi0;->b(Lorg/chromium/chrome/browser/ChromeActivity;I)V

    return-void
.end method

.method private a(Lorg/chromium/chrome/browser/ChromeActivity;I)V
    .locals 2

    .line 36
    iget-object v0, p0, LWi0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, LWi0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/Callback;

    .line 38
    invoke-interface {v1, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, LWi0;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p1, "Media.VideoPersistence.EndReason"

    const/16 v0, 0x8

    .line 40
    invoke-static {p1, p2, v0}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method private b(Lorg/chromium/chrome/browser/ChromeActivity;I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 3
    invoke-direct {p0, p1, p2}, LWi0;->a(Lorg/chromium/chrome/browser/ChromeActivity;I)V

    return-void
.end method

.method public static c(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/content_public/browser/WebContents;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->Z()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p0

    .line 4
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    return-object p0
.end method

.method private d(Lorg/chromium/chrome/browser/ChromeActivity;)Z
    .locals 7

    .line 1
    invoke-static {p1}, LWi0;->c(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "VideoPersistence"

    .line 2
    invoke-static {v2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->l()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->D()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-ge v0, v2, :cond_3

    .line 6
    invoke-static {v3}, LWi0;->a(I)V

    return v1

    .line 7
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.picture_in_picture"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x2

    .line 8
    invoke-static {p1}, LWi0;->a(I)V

    return v1

    :cond_4
    const/4 v0, 0x3

    .line 9
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "supportsPictureInPicture"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 12
    invoke-static {v0}, LWi0;->a(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 13
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x4

    .line 14
    invoke-static {p1}, LWi0;->a(I)V

    return v1

    .line 15
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x5

    .line 16
    invoke-static {p1}, LWi0;->a(I)V

    return v1

    .line 17
    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x6

    .line 18
    invoke-static {p1}, LWi0;->a(I)V

    return v1

    .line 19
    :cond_8
    invoke-static {v1}, LWi0;->a(I)V

    return v3

    .line 20
    :catch_0
    invoke-static {v0}, LWi0;->a(I)V

    return v1

    :cond_9
    :goto_0
    const/16 p1, 0x8

    .line 21
    invoke-static {p1}, LWi0;->a(I)V

    return v1
.end method


# virtual methods
.method public a(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 9

    .line 3
    invoke-direct {p0, p1}, LWi0;->d(Lorg/chromium/chrome/browser/ChromeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, LWi0;->c(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v7

    .line 5
    invoke-static {v7, p1}, LWi0;->a(Lorg/chromium/content_public/browser/WebContents;Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    if-eqz v0, :cond_1

    .line 7
    new-instance v2, Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 8
    invoke-virtual {v1, v0}, Landroid/app/PictureInPictureParams$Builder;->setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;

    :cond_1
    const/4 v2, 0x1

    .line 9
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-interface {v7, v2}, Lorg/chromium/content_public/browser/WebContents;->c(Z)V

    .line 11
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->b(Z)V

    .line 12
    iget-object v0, p0, LWi0;->a:Ljava/util/List;

    new-instance v1, LQi0;

    invoke-direct {v1, p0, v7, p1}, LQi0;-><init>(LWi0;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/ChromeActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Media.VideoPersistence.TopFrame"

    .line 15
    invoke-static {v1, v0}, LJ/N;->MjCLWtXx(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v4, LTi0;

    invoke-direct {v4, p0, p1}, LTi0;-><init>(LWi0;Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 17
    new-instance v6, LUi0;

    invoke-direct {v6, p0, p1}, LUi0;-><init>(LWi0;Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 18
    new-instance v8, LVi0;

    invoke-direct {v8, p0, p1}, LVi0;-><init>(LWi0;Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 19
    invoke-static {v3}, LoI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LpI0;

    move-result-object p1

    .line 20
    iget-object v0, v3, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, v4}, LWT;->a(Ljava/lang/Object;)Z

    .line 21
    move-object v5, p1

    check-cast v5, LrI0;

    invoke-virtual {v5, v6}, LrI0;->a(LxI0;)V

    .line 22
    invoke-interface {v7, v8}, Lorg/chromium/content_public/browser/WebContents;->a(Lg11;)V

    .line 23
    iget-object p1, p0, LWi0;->a:Ljava/util/List;

    new-instance v0, LRi0;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, LRi0;-><init>(LWi0;Lorg/chromium/chrome/browser/tab/Tab;LpH0;LpI0;LxI0;Lorg/chromium/content_public/browser/WebContents;Lg11;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 25
    iget-object p1, p0, LWi0;->a:Ljava/util/List;

    new-instance v2, LSi0;

    invoke-direct {v2, p0, v0, v1}, LSi0;-><init>(LWi0;J)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object p1, v1, v0

    const-string p1, "VideoPersist"

    const-string v0, "Error entering PiP with bounds (%d, %d): %s"

    .line 27
    invoke-static {p1, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LWi0;->a(Lorg/chromium/chrome/browser/ChromeActivity;I)V

    return-void
.end method
