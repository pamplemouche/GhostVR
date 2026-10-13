.class public LCH0;
.super Lg11;
.source "PG"


# instance fields
.field public final synthetic a:LDH0;


# direct methods
.method public constructor <init>(LDH0;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    iput-object p1, p0, LCH0;->a:LDH0;

    .line 2
    invoke-direct {p0, p2}, Lg11;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, LCH0;->a:LDH0;

    .line 3
    iget-object p1, p1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    const/16 p1, -0x16

    if-ne p3, p1, :cond_0

    .line 5
    iget-object p1, p0, LCH0;->a:LDH0;

    .line 6
    iget-object p1, p1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 7
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public destroy()V
    .locals 4

    .line 1
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 2
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LCH0;->a:LDH0;

    .line 4
    iget-object v1, v1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, LCH0;->a:LDH0;

    .line 6
    iget-object v3, v3, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 7
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->a(Landroid/content/Context;ILorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V

    .line 9
    invoke-super {p0}, Lg11;->destroy()V

    return-void
.end method

.method public didAttachInterstitialPage()V
    .locals 3

    .line 1
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 2
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(I)V

    .line 4
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 5
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->B()V

    .line 7
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 8
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    iget-object v2, p0, LCH0;->a:LDH0;

    .line 12
    iget-object v2, v2, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 13
    invoke-interface {v1, v2}, LpH0;->onDidAttachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 15
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 16
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->c(I)V

    .line 17
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 18
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 19
    invoke-static {v0}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 20
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 22
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 23
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 24
    invoke-static {v0}, LJ/N;->MX4bLIGx(Ljava/lang/Object;)I

    .line 25
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 26
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 27
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 28
    throw v0
.end method

.method public didChangeThemeColor(I)V
    .locals 1

    .line 1
    iget-object p1, p0, LCH0;->a:LDH0;

    .line 2
    iget-object p1, p1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-static {p1}, LxH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LxH0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LxH0;->c(Z)V

    return-void
.end method

.method public didDetachInterstitialPage()V
    .locals 4

    .line 1
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 2
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->a(I)V

    .line 4
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 5
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    iget-object v3, p0, LCH0;->a:LDH0;

    .line 9
    iget-object v3, v3, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 10
    invoke-interface {v2, v3}, LpH0;->onDidDetachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 12
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 13
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tab/Tab;->c(I)V

    .line 14
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 15
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 16
    invoke-static {v0}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 17
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 18
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 19
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/chromium/chrome/browser/tab/Tab;->a(Ljava/lang/String;Z)Z

    .line 20
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 21
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 22
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->B()V

    return-void
.end method

.method public didFailLoad(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 2
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LpH0;

    iget-object v1, p0, LCH0;->a:LDH0;

    .line 6
    iget-object v3, v1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 7
    invoke-interface/range {v2 .. v7}, LpH0;->onDidFailLoad(Lorg/chromium/chrome/browser/tab/Tab;ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, LCH0;->a:LDH0;

    .line 9
    iget-object p1, p1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 10
    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/tab/Tab;->a(I)V

    .line 11
    :cond_1
    invoke-virtual {p0, p4, p3, p2}, LCH0;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object p1, p0, LCH0;->a:LDH0;

    .line 2
    iget-object p1, p1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object p2, p1, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    if-eqz p2, :cond_0

    .line 4
    iget-wide v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->a:J

    .line 5
    check-cast p2, Lrl0;

    .line 6
    iget-object v2, p2, Lrl0;->w:Ljava/lang/String;

    .line 7
    iget-object p2, p2, Lrl0;->x:Ljava/lang/String;

    .line 8
    invoke-static {v0, v1, p1, v2, p2}, LJ/N;->MxWBxdqL(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 9
    iget-object p1, p0, LCH0;->a:LDH0;

    .line 10
    iget-object p1, p1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 11
    invoke-virtual {p1, p3}, Lorg/chromium/chrome/browser/tab/Tab;->a(Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, LCH0;->a:LDH0;

    .line 14
    iget-object p1, p1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 15
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 16
    throw p1
.end method

.method public didFinishNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 4

    .line 1
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 2
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    iget-object v2, p0, LCH0;->a:LDH0;

    .line 6
    iget-object v2, v2, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 7
    invoke-interface {v1, v2, p1}, LpH0;->onDidFinishNavigation(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/NavigationHandle;)V

    goto :goto_0

    .line 8
    :cond_0
    iget v1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->h:I

    if-eqz v1, :cond_2

    .line 9
    iget-boolean v2, p1, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, LCH0;->a:LDH0;

    .line 11
    iget-object v2, v2, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 12
    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/tab/Tab;->a(I)V

    .line 13
    :cond_1
    iget-object v1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 14
    iget v2, p1, Lorg/chromium/content_public/browser/NavigationHandle;->h:I

    const-string v3, ""

    .line 15
    invoke-virtual {p0, v1, v3, v2}, LCH0;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    :cond_2
    iget-boolean v1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    if-nez v1, :cond_3

    return-void

    .line 17
    :cond_3
    iget-boolean v1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz v1, :cond_6

    .line 18
    iget-object v1, p0, LCH0;->a:LDH0;

    .line 19
    iget-object v1, v1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v2, 0x1

    .line 20
    iput-boolean v2, v1, Lorg/chromium/chrome/browser/tab/Tab;->p:Z

    .line 21
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->G()V

    .line 22
    iget-object v1, p0, LCH0;->a:LDH0;

    .line 23
    iget-object v1, v1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 24
    iget-object v2, p1, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 25
    iget-object v2, p1, Lorg/chromium/content_public/browser/NavigationHandle;->c:Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 26
    iput-boolean v3, v1, Lorg/chromium/chrome/browser/tab/Tab;->C:Z

    if-eqz v2, :cond_4

    .line 27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 28
    :cond_4
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->p()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 29
    :cond_5
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    .line 30
    :goto_1
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->B()V

    .line 31
    iget-object v1, p0, LCH0;->a:LDH0;

    .line 32
    iget-object v1, v1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 33
    iget-boolean v2, p1, Lorg/chromium/content_public/browser/NavigationHandle;->f:Z

    .line 34
    iput-boolean v2, v1, Lorg/chromium/chrome/browser/tab/Tab;->o:Z

    .line 35
    move-object v1, v0

    check-cast v1, LUT;

    invoke-virtual {v1}, LUT;->b()V

    .line 36
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    iget-object v2, p0, LCH0;->a:LDH0;

    .line 38
    iget-object v2, v2, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 39
    invoke-interface {v1, v2}, LpH0;->onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_2

    .line 40
    :cond_6
    iget-boolean p1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz p1, :cond_9

    .line 41
    iget-object p1, p0, LCH0;->a:LDH0;

    .line 42
    iget-object p1, p1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 43
    invoke-static {p1}, La00;->b(Lorg/chromium/chrome/browser/tab/Tab;)La00;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 44
    iget-object v0, p1, La00;->y:LZb1;

    if-eqz v0, :cond_9

    .line 45
    iget-boolean v0, v0, LZb1;->y:Z

    if-nez v0, :cond_7

    goto :goto_3

    .line 46
    :cond_7
    invoke-virtual {p1}, La00;->b()V

    .line 47
    iget-object v0, p1, La00;->y:LZb1;

    .line 48
    iget-object v1, p1, La00;->C:Ljava/lang/Runnable;

    if-nez v1, :cond_8

    .line 49
    new-instance v1, LXZ;

    invoke-direct {v1, p1}, LXZ;-><init>(La00;)V

    iput-object v1, p1, La00;->C:Ljava/lang/Runnable;

    .line 50
    :cond_8
    iget-object p1, p1, La00;->C:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    .line 51
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_3
    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 3

    .line 1
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 2
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    iget-object v2, p0, LCH0;->a:LDH0;

    .line 6
    iget-object v2, v2, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 7
    invoke-interface {v1, v2}, LpH0;->didFirstVisuallyNonEmptyPaint(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didRedirectNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 3

    .line 1
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 2
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    iget-object v2, p0, LCH0;->a:LDH0;

    .line 6
    iget-object v2, v2, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 7
    invoke-interface {v1, v2, p1}, LpH0;->onDidRedirectNavigation(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/NavigationHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didStartNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 4
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    iget-object v1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->b(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 8
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    iget-object v2, p0, LCH0;->a:LDH0;

    .line 12
    iget-object v2, v2, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 13
    invoke-interface {v1, v2, p1}, LpH0;->onDidStartNavigation(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/NavigationHandle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public navigationEntriesChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 2
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->p:Z

    return-void
.end method

.method public navigationEntriesDeleted()V
    .locals 1

    .line 1
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 2
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->y()V

    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 13

    const-string v0, "renderProcessGone() for tab id: "

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LCH0;->a:LDH0;

    .line 2
    iget-object v1, v1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oom protected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", already needs reload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LCH0;->a:LDH0;

    .line 5
    iget-object v1, v1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->w()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TabWebContentsObs"

    .line 7
    invoke-static {v3, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 9
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 10
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->w()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, LCH0;->a:LDH0;

    .line 11
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 12
    invoke-static {v0}, LaH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_c

    .line 13
    :cond_0
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-eqz p1, :cond_5

    if-eqz v3, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x2

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    const/4 p1, 0x3

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    const/4 p1, 0x4

    goto :goto_2

    :cond_7
    const/4 p1, 0x5

    :goto_2
    const/4 v0, 0x6

    const-string v7, "Tab.RendererExitStatus"

    .line 14
    invoke-static {v7, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    .line 15
    iget-object p1, p0, LCH0;->a:LDH0;

    .line 16
    iget-object p1, p1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 17
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 18
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_8

    const/4 p1, 0x2

    goto :goto_3

    .line 19
    :cond_8
    invoke-static {p1}, Lorg/chromium/base/ApplicationStatus;->a(Landroid/app/Activity;)I

    move-result p1

    .line 20
    :goto_3
    iget-object v7, p0, LCH0;->a:LDH0;

    .line 21
    iget-object v7, v7, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 22
    iget-boolean v8, v7, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-nez v8, :cond_12

    if-eq p1, v4, :cond_12

    if-eq p1, v5, :cond_12

    if-ne p1, v0, :cond_9

    goto/16 :goto_9

    .line 23
    :cond_9
    iget-object p1, v7, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 24
    sget-object v0, LaH0;->z:Ljava/lang/Class;

    invoke-virtual {p1, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p1

    check-cast p1, LaH0;

    if-nez p1, :cond_a

    .line 25
    iget-object p1, v7, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 26
    sget-object v0, LaH0;->z:Ljava/lang/Class;

    new-instance v3, LaH0;

    invoke-direct {v3, v7}, LaH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {p1, v0, v3}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    move-result-object p1

    check-cast p1, LaH0;

    .line 27
    :cond_a
    iget-object v0, p1, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 28
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_b

    goto/16 :goto_8

    .line 29
    :cond_b
    iget v0, p1, LaH0;->y:I

    if-lt v0, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    .line 30
    :goto_4
    new-instance v3, LXG0;

    invoke-direct {v3, p1}, LXG0;-><init>(LaH0;)V

    .line 31
    new-instance v4, LYG0;

    invoke-direct {v4, p1, v0}, LYG0;-><init>(LaH0;Z)V

    .line 32
    iget-object v5, p1, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 33
    iget-boolean v7, v5, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 34
    iget-object v5, v5, Lorg/chromium/chrome/browser/tab/Tab;->d:Landroid/content/Context;

    const-string v8, "layout_inflater"

    .line 35
    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const v9, 0x7f0e018c

    const/4 v10, 0x0

    .line 36
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b038f

    .line 37
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    const v10, 0x7f130538

    goto :goto_5

    :cond_d
    const v10, 0x7f13053c

    .line 38
    :goto_5
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    if-eqz v0, :cond_f

    const v9, 0x7f0b038e

    .line 39
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 40
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v10, 0x7f130539

    .line 41
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    const v9, 0x7f0b038d

    .line 42
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 43
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v11, "\n"

    if-nez v7, :cond_e

    const v7, 0x7f130533

    .line 45
    invoke-static {v5, v7}, LaH0;->a(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 46
    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_e
    const v7, 0x7f130536

    .line 47
    invoke-static {v5, v7}, LaH0;->a(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 48
    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    const v12, 0x7f130537

    .line 49
    invoke-static {v5, v12}, LaH0;->a(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    .line 50
    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 51
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    const v7, 0x7f0b038c

    .line 52
    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 53
    new-instance v9, LVe1;

    .line 54
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, LWG0;

    invoke-direct {v11, v0, v3}, LWG0;-><init>(ZLjava/lang/Runnable;)V

    invoke-direct {v9, v10, v11}, LVe1;-><init>(Landroid/content/res/Resources;Lorg/chromium/base/Callback;)V

    if-eqz v0, :cond_10

    .line 55
    new-instance v3, Landroid/text/SpannableString;

    const v10, 0x7f130535

    .line 56
    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v3, v9, v1, v5, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 58
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f130532

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f13053b

    .line 59
    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [LWe1;

    .line 60
    new-instance v10, LWe1;

    const-string v11, "<link>"

    const-string v12, "</link>"

    invoke-direct {v10, v11, v12, v9}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v10, v5, v1

    invoke-static {v3, v5}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v3

    .line 61
    :goto_6
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v3, 0x7f0b038a

    .line 63
    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v0, :cond_11

    const v5, 0x7f13053a

    goto :goto_7

    :cond_11
    const v5, 0x7f130534

    .line 64
    :goto_7
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 65
    new-instance v5, LZG0;

    invoke-direct {v5, p1, v0, v4}, LZG0;-><init>(LaH0;ZLjava/lang/Runnable;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-static {v0, v1}, LaH0;->a(ZI)V

    .line 67
    iput-object v8, p1, LaH0;->x:Landroid/view/View;

    .line 68
    iget v0, p1, LaH0;->y:I

    add-int/2addr v0, v2

    iput v0, p1, LaH0;->y:I

    .line 69
    iget-object v0, p1, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 70
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    .line 71
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object p1, p1, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->x()V

    :goto_8
    const-string p1, "Stability.Android.RendererCrash"

    .line 73
    invoke-static {p1, v2}, LfV;->a(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    goto :goto_a

    .line 74
    :cond_12
    :goto_9
    iget-object p1, p0, LCH0;->a:LDH0;

    .line 75
    iget-object p1, p1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 76
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 77
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/content_public/browser/NavigationController;->a()V

    if-eqz v3, :cond_13

    goto :goto_a

    :cond_13
    const/4 v2, 0x2

    :goto_a
    const-string p1, "Tab.RendererCrashStatus"

    .line 78
    invoke-static {p1, v2, v6}, LfV;->a(Ljava/lang/String;II)V

    .line 79
    iget-object p1, p0, LCH0;->a:LDH0;

    .line 80
    iget-object p1, p1, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 81
    iput-boolean v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->v:Z

    .line 82
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 83
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    invoke-interface {v2, p1}, LpH0;->onCrash(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_b

    .line 84
    :cond_14
    iput-boolean v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->w:Z

    :cond_15
    :goto_c
    return-void
.end method

.method public titleWasSet(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 2
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->B:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->p:Z

    .line 5
    iput-object p1, v0, Lorg/chromium/chrome/browser/tab/Tab;->B:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->z()V

    :goto_0
    return-void
.end method

.method public viewportFitChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, LCH0;->a:LDH0;

    .line 2
    iget-object v0, v0, LDH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 4
    sget-object v2, Lv70;->A:Ljava/lang/Class;

    invoke-virtual {v1, v2}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v2

    check-cast v2, Lv70;

    if-nez v2, :cond_0

    .line 5
    sget-object v2, Lv70;->A:Ljava/lang/Class;

    new-instance v3, Lv70;

    invoke-direct {v3, v0}, Lv70;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {v1, v2, v3}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lv70;

    .line 6
    :cond_0
    iget v0, v2, Lv70;->x:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iput p1, v2, Lv70;->x:I

    .line 8
    invoke-virtual {v2}, Lv70;->b()V

    :goto_0
    return-void
.end method
