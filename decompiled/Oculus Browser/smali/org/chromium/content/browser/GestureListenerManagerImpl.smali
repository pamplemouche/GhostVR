.class public Lorg/chromium/content/browser/GestureListenerManagerImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LH01;
.implements LcX0;
.implements LxU;


# instance fields
.field public A:La11;

.field public B:J

.field public C:Z

.field public D:Z

.field public final w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

.field public final x:LWT;

.field public final y:LVT;

.field public z:Lorg/chromium/ui/base/ViewAndroidDelegate;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 3
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->x:LWT;

    .line 4
    invoke-virtual {p1}, LWT;->a()LVT;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    .line 5
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->p()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->z:Lorg/chromium/ui/base/ViewAndroidDelegate;

    .line 6
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object p1

    .line 7
    iget-object v0, p1, LgX0;->w:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 8
    iget-boolean p1, p1, LgX0;->z:Z

    if-eqz p1, :cond_0

    invoke-interface {p0}, LcX0;->onAttachedToWindow()V

    .line 9
    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 10
    invoke-static {p0, p1}, LJ/N;->MefCIE9S(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->B:J

    return-void
.end method

.method public static a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;
    .locals 2

    .line 1
    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    const-class v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;

    .line 2
    sget-object v1, LqW0;->a:Lt01;

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Ljava/lang/Class;Lt01;)LxU;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;

    return-object p0
.end method

.method private filterTapOrPressEvent(III)Z
    .locals 0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->z:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onEventAck(IZ)V
    .locals 2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_8

    const/16 v0, 0x11

    if-eq p1, v0, :cond_7

    const/16 v0, 0x15

    if-eq p1, v0, :cond_5

    const/16 v0, 0x17

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    if-eqz p2, :cond_0

    .line 1
    iput-boolean v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->D:Z

    .line 2
    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->b(Z)V

    .line 3
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast p1, LUT;

    invoke-virtual {p1}, LUT;->b()V

    :goto_0
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 4
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LI01;

    .line 5
    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->d()I

    move-result p2

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->c()I

    move-result v0

    .line 6
    invoke-interface {p1, p2, v0}, LI01;->b(II)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->b()V

    goto/16 :goto_7

    :pswitch_1
    if-nez p2, :cond_1

    goto/16 :goto_7

    .line 8
    :cond_1
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->p()V

    .line 10
    :cond_2
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast p1, LUT;

    invoke-virtual {p1}, LUT;->b()V

    :goto_1
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 11
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LI01;

    invoke-interface {p1}, LI01;->e()V

    goto :goto_1

    .line 12
    :pswitch_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->b()V

    goto/16 :goto_7

    .line 13
    :pswitch_3
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->b(Z)V

    .line 14
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast p1, LUT;

    invoke-virtual {p1}, LUT;->b()V

    :goto_2
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 15
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LI01;

    .line 16
    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->d()I

    move-result p2

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->c()I

    move-result v0

    .line 17
    invoke-interface {p1, p2, v0}, LI01;->a(II)V

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    goto/16 :goto_7

    .line 18
    :cond_4
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->z:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 19
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast p1, LUT;

    invoke-virtual {p1}, LUT;->b()V

    :goto_3
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LI01;

    invoke-interface {p1}, LI01;->a()V

    goto :goto_3

    .line 20
    :cond_5
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->p()V

    .line 22
    :cond_6
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast p1, LUT;

    invoke-virtual {p1}, LUT;->b()V

    :goto_4
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 23
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LI01;

    invoke-interface {p1, p2}, LI01;->a(Z)V

    goto :goto_4

    .line 24
    :cond_7
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast p1, LUT;

    invoke-virtual {p1}, LUT;->b()V

    :goto_5
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LI01;

    invoke-interface {p1}, LI01;->f()V

    goto :goto_5

    .line 25
    :cond_8
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast p1, LUT;

    invoke-virtual {p1}, LUT;->b()V

    :goto_6
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LI01;

    invoke-interface {p1}, LI01;->d()V

    goto :goto_6

    :cond_9
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onFlingEnd()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->D:Z

    .line 2
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->b(Z)V

    .line 3
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI01;

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->d()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, LI01;->e(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onNativeDestroyed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI01;

    invoke-interface {v0}, LI01;->c()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->x:LWT;

    invoke-virtual {v0}, LWT;->clear()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->B:J

    return-void
.end method

.method private resetPopupsAndInput(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, LEW0;->b(Lorg/chromium/content_public/browser/WebContents;)V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->C:Z

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->b(Z)V

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->b()V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->D:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->onFlingEnd()V

    .line 8
    iput-boolean v1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->D:Z

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->g()V

    :cond_3
    return-void
.end method

.method private updateOnTouchDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI01;

    invoke-interface {v0}, LI01;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateScrollInfo(FFFFFFFFFFZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const/4 v6, 0x0

    const-string v7, "GestureListenerManagerImpl:updateScrollInfo"

    .line 1
    invoke-static {v7, v6}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v6, v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 3
    iget-object v6, v6, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 4
    iget v8, v6, LFW0;->j:F

    .line 5
    iget-object v9, v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->z:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {v9}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v9

    .line 6
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v8, v8, v3

    div-float/2addr v10, v8

    move/from16 v11, p6

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 7
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    move/from16 v8, p7

    .line 8
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 9
    iget v9, v6, LFW0;->h:F

    const/4 v11, 0x1

    const/4 v12, 0x0

    cmpl-float v9, v4, v9

    if-nez v9, :cond_1

    .line 10
    iget v9, v6, LFW0;->i:F

    cmpl-float v9, v5, v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x1

    .line 11
    :goto_1
    iget v13, v6, LFW0;->g:F

    cmpl-float v13, v3, v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_4

    .line 12
    iget v13, v6, LFW0;->a:F

    cmpl-float v13, v1, v13

    if-nez v13, :cond_4

    .line 13
    iget v13, v6, LFW0;->b:F

    cmpl-float v13, v2, v13

    if-eqz v13, :cond_3

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :cond_4
    :goto_3
    if-eqz v11, :cond_5

    .line 14
    iget-object v12, v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->A:La11;

    .line 15
    iget v13, v6, LFW0;->g:F

    mul-float v14, v1, v13

    iget v15, v6, LFW0;->j:F

    mul-float v14, v14, v15

    float-to-int v14, v14

    mul-float v13, v13, v2

    mul-float v13, v13, v15

    float-to-int v13, v13

    .line 16
    invoke-virtual {v6}, LFW0;->a()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v16, v7

    .line 17
    invoke-virtual {v6}, LFW0;->b()F

    move-result v7

    float-to-int v7, v7

    .line 18
    check-cast v12, LnT0;

    invoke-virtual {v12, v14, v13, v15, v7}, LnT0;->onScrollChanged(IIII)V

    goto :goto_4

    :cond_5
    move-object/from16 v16, v7

    .line 19
    :goto_4
    iput v1, v6, LFW0;->a:F

    .line 20
    iput v2, v6, LFW0;->b:F

    .line 21
    iput v3, v6, LFW0;->g:F

    .line 22
    iput v4, v6, LFW0;->h:F

    .line 23
    iput v5, v6, LFW0;->i:F

    move/from16 v1, p10

    .line 24
    iput v1, v6, LFW0;->k:F

    .line 25
    iput v10, v6, LFW0;->c:F

    .line 26
    iput v8, v6, LFW0;->d:F

    move/from16 v1, p8

    .line 27
    iput v1, v6, LFW0;->e:F

    move/from16 v1, p9

    .line 28
    iput v1, v6, LFW0;->f:F

    if-nez v11, :cond_6

    if-eqz p11, :cond_7

    .line 29
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->d()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->c()I

    move-result v2

    .line 30
    iget-object v3, v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast v3, LUT;

    invoke-virtual {v3}, LUT;->b()V

    :goto_5
    iget-object v3, v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 31
    iget-object v3, v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LI01;

    invoke-interface {v3, v1, v2}, LI01;->c(II)V

    goto :goto_5

    :cond_7
    if-eqz v9, :cond_8

    .line 32
    iget-object v1, v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast v1, LUT;

    invoke-virtual {v1}, LUT;->b()V

    :goto_6
    iget-object v1, v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 33
    iget-object v1, v0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LI01;

    invoke-interface {v1, v4, v5}, LI01;->a(FF)V

    goto :goto_6

    .line 34
    :cond_8
    invoke-static/range {v16 .. v16}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(LI01;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->x:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 5

    .line 5
    iget-wide v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->B:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 6
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->B:J

    .line 7
    invoke-static {v0, v1, p0, p1}, LJ/N;->M6a5zchR(JLjava/lang/Object;Z)V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->C:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->D:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->b(Z)V

    .line 3
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI01;

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->d()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, LI01;->d(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(LI01;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->x:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 5
    iput-boolean p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->C:Z

    .line 6
    iget-object p1, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a()Z

    move-result v0

    .line 8
    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Z)V

    return-void
.end method

.method public final c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 2
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 3
    iget v1, v0, LFW0;->f:F

    invoke-virtual {v0, v1}, LFW0;->a(F)F

    move-result v0

    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 2
    iget-object v0, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->C:LFW0;

    .line 3
    invoke-virtual {v0}, LFW0;->c()I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 0

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
    .locals 5

    if-nez p1, :cond_0

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->B:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MMR0DKoy(JLjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    check-cast v0, LUT;

    invoke-virtual {v0}, LUT;->b()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/chromium/content/browser/GestureListenerManagerImpl;->y:LVT;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI01;

    invoke-interface {v0, p1}, LI01;->onWindowFocusChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
