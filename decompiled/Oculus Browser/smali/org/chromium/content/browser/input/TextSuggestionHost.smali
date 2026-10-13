.class public Lorg/chromium/content/browser/input/TextSuggestionHost;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LcX0;
.implements LBW0;
.implements LxU;


# instance fields
.field public A:Z

.field public B:Lorg/chromium/ui/base/WindowAndroid;

.field public C:LpY0;

.field public D:LwY0;

.field public w:J

.field public final x:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

.field public final y:Landroid/content/Context;

.field public final z:Lorg/chromium/ui/base/ViewAndroidDelegate;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->x:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->h()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->y:Landroid/content/Context;

    .line 4
    iget-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->x:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->B:Lorg/chromium/ui/base/WindowAndroid;

    .line 5
    iget-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->x:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->p()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->z:Lorg/chromium/ui/base/ViewAndroidDelegate;

    .line 6
    iget-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->x:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, LEW0;->a(Lorg/chromium/content_public/browser/WebContents;)LEW0;

    move-result-object p1

    .line 8
    iget-object p1, p1, LEW0;->w:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    iget-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->x:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object p1

    .line 10
    iget-object v0, p1, LgX0;->w:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 11
    iget-boolean p1, p1, LgX0;->z:Z

    if-eqz p1, :cond_1

    invoke-interface {p0}, LcX0;->onAttachedToWindow()V

    :cond_1
    return-void
.end method

.method public static create(Lorg/chromium/content_public/browser/WebContents;J)Lorg/chromium/content/browser/input/TextSuggestionHost;
    .locals 2

    .line 1
    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    const-class v0, Lorg/chromium/content/browser/input/TextSuggestionHost;

    .line 2
    sget-object v1, LvY0;->a:Lt01;

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Ljava/lang/Class;Lt01;)LxU;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/input/TextSuggestionHost;

    .line 4
    iput-wide p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->w:J

    return-object p0
.end method

.method private onNativeDestroyed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->hidePopups()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->w:J

    return-void
.end method

.method private showSpellCheckSuggestionMenu(DDLjava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->A:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/TextSuggestionHost;->a(Z)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->hidePopups()V

    .line 4
    new-instance v0, LpY0;

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->y:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->B:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v3, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->z:Lorg/chromium/ui/base/ViewAndroidDelegate;

    .line 5
    invoke-virtual {v3}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, LpY0;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/input/TextSuggestionHost;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->C:LpY0;

    .line 6
    iget-object v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->x:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 7
    iget-object v1, v1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 8
    iget v1, v1, LFW0;->k:F

    float-to-double v1, v1

    add-double v3, p3, v1

    move-wide v1, p1

    move-object v5, p5

    move-object v6, p6

    .line 9
    invoke-virtual/range {v0 .. v6}, LpY0;->a(DDLjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private showTextSuggestionMenu(DDLjava/lang/String;[Lorg/chromium/content/browser/input/SuggestionInfo;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->A:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/TextSuggestionHost;->a(Z)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->hidePopups()V

    .line 4
    new-instance v0, LwY0;

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->y:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->B:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v3, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->z:Lorg/chromium/ui/base/ViewAndroidDelegate;

    .line 5
    invoke-virtual {v3}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, LwY0;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/input/TextSuggestionHost;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->D:LwY0;

    .line 6
    iget-object v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->x:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 7
    iget-object v1, v1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 8
    iget v1, v1, LFW0;->k:F

    float-to-double v1, v1

    add-double v3, p3, v1

    move-wide v1, p1

    move-object v5, p5

    move-object v6, p6

    .line 9
    invoke-virtual/range {v0 .. v6}, LwY0;->a(DDLjava/lang/String;[Lorg/chromium/content/browser/input/SuggestionInfo;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 7
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->hidePopups()V

    return-void
.end method

.method public a(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->B:Lorg/chromium/ui/base/WindowAndroid;

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->C:LpY0;

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, v0, LsY0;->z:Lorg/chromium/ui/base/WindowAndroid;

    .line 4
    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->D:LwY0;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->B:Lorg/chromium/ui/base/WindowAndroid;

    .line 6
    iput-object v0, p1, LsY0;->z:Lorg/chromium/ui/base/WindowAndroid;

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 8
    iget-wide v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->w:J

    .line 9
    invoke-static {v0, v1, p0}, LJ/N;->MnvYa0QF(JLjava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->C:LpY0;

    .line 11
    iput-object p1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->D:LwY0;

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public hidePopups()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->D:LwY0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, LsY0;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->D:LwY0;

    .line 4
    iget-object v0, v0, LsY0;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5
    iput-object v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->D:LwY0;

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->C:LpY0;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, v0, LsY0;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->C:LpY0;

    .line 9
    iget-object v0, v0, LsY0;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10
    iput-object v1, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->C:LpY0;

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->A:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCurrentModeChanged(Landroid/view/Display$Mode;)V
    .locals 0

    return-void
.end method

.method public onDIPScaleChanged(F)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/TextSuggestionHost;->A:Z

    return-void
.end method

.method public onDisplayModesChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onRefreshRateChanged(F)V
    .locals 0

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->hidePopups()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method
