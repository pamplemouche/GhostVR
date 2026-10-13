.class public Lorg/chromium/content/browser/input/SelectPopup;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LBW0;
.implements LcX0;
.implements LxU;


# instance fields
.field public A:J

.field public final w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

.field public x:Landroid/view/View;

.field public y:LbY0;

.field public z:J


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopup;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->p()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->x:Landroid/view/View;

    .line 5
    iget-object p1, p1, Lorg/chromium/ui/base/ViewAndroidDelegate;->c:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lorg/chromium/content/browser/input/SelectPopup;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

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
    iget-object p1, p0, Lorg/chromium/content/browser/input/SelectPopup;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

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

.method public static create(Lorg/chromium/content_public/browser/WebContents;J)Lorg/chromium/content/browser/input/SelectPopup;
    .locals 2

    .line 1
    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    const-class v0, Lorg/chromium/content/browser/input/SelectPopup;

    .line 2
    sget-object v1, LdY0;->a:Lt01;

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Ljava/lang/Class;Lt01;)LxU;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/input/SelectPopup;

    .line 4
    iput-wide p1, p0, Lorg/chromium/content/browser/input/SelectPopup;->z:J

    return-object p0
.end method

.method private onNativeDestroyed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->z:J

    return-void
.end method

.method private show(Landroid/view/View;J[Ljava/lang/String;[IZ[IZ)V
    .locals 12

    move-object v8, p0

    move-wide v9, p2

    move-object/from16 v0, p4

    .line 1
    iget-object v1, v8, Lorg/chromium/content/browser/input/SelectPopup;->x:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v8, Lorg/chromium/content/browser/input/SelectPopup;->x:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v1, v8, Lorg/chromium/content/browser/input/SelectPopup;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v1}, LEW0;->b(Lorg/chromium/content_public/browser/WebContents;)V

    .line 3
    iget-object v1, v8, Lorg/chromium/content/browser/input/SelectPopup;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->h()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 6
    new-instance v3, LoY0;

    aget-object v5, v0, v1

    aget v6, p5, v1

    invoke-direct {v3, v5, v6}, LoY0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, v8, Lorg/chromium/content/browser/input/SelectPopup;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 8
    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    move-result-object v0

    .line 9
    invoke-static {}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p6, :cond_3

    .line 10
    iget-boolean v0, v0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->U:Z

    if-nez v0, :cond_3

    .line 11
    new-instance v11, LnY0;

    iget-object v7, v8, Lorg/chromium/content/browser/input/SelectPopup;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v7}, LnY0;-><init>(Lorg/chromium/content/browser/input/SelectPopup;Landroid/content/Context;Landroid/view/View;Ljava/util/List;[IZLorg/chromium/content_public/browser/WebContents;)V

    iput-object v11, v8, Lorg/chromium/content/browser/input/SelectPopup;->y:LbY0;

    goto :goto_1

    .line 12
    :cond_3
    new-instance v6, LjY0;

    move-object v0, v6

    move-object v1, p0

    move-object v3, v4

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, LjY0;-><init>(Lorg/chromium/content/browser/input/SelectPopup;Landroid/content/Context;Ljava/util/List;Z[I)V

    iput-object v6, v8, Lorg/chromium/content/browser/input/SelectPopup;->y:LbY0;

    .line 13
    :goto_1
    iput-wide v9, v8, Lorg/chromium/content/browser/input/SelectPopup;->A:J

    .line 14
    iget-object v0, v8, Lorg/chromium/content/browser/input/SelectPopup;->y:LbY0;

    invoke-interface {v0}, LbY0;->a()V

    return-void

    .line 15
    :cond_4
    :goto_2
    iput-wide v9, v8, Lorg/chromium/content/browser/input/SelectPopup;->A:J

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/SelectPopup;->a([I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->y:LbY0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LbY0;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopup;->y:LbY0;

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public a([I)V
    .locals 11

    .line 3
    iget-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->z:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 4
    iget-wide v5, p0, Lorg/chromium/content/browser/input/SelectPopup;->z:J

    iget-wide v8, p0, Lorg/chromium/content/browser/input/SelectPopup;->A:J

    move-object v7, p0

    move-object v10, p1

    .line 5
    invoke-static/range {v5 .. v10}, LJ/N;->ME0LgXse(JLjava/lang/Object;J[I)V

    .line 6
    :cond_0
    iput-wide v2, p0, Lorg/chromium/content/browser/input/SelectPopup;->A:J

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopup;->y:LbY0;

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public hideWithoutCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->y:LbY0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, LbY0;->a(Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->y:LbY0;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->A:J

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

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
    .locals 0

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

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method
