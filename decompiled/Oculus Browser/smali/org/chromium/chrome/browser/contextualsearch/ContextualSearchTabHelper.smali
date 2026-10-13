.class public Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;
.super LSG0;
.source "PG"

# interfaces
.implements Lm81;


# instance fields
.field public A:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

.field public B:LI01;

.field public C:LJ50;

.field public D:J

.field public E:Z

.field public F:Ljava/lang/Boolean;

.field public G:Lj30;

.field public final w:Lorg/chromium/chrome/browser/tab/Tab;

.field public final x:F

.field public y:LlU0;

.field public z:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    new-instance v0, Lq50;

    invoke-direct {v0, p0}, Lq50;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->G:Lj30;

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Lm81;)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    invoke-virtual {v1}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    invoke-virtual {p1}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p1

    .line 9
    :cond_1
    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->x:F

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->z:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public final a(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->E:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->r0()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->B:LI01;

    if-eqz v0, :cond_4

    .line 6
    invoke-static {p1}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->B:LI01;

    .line 8
    invoke-interface {v0, v1}, LH01;->b(LI01;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->B:LI01;

    .line 10
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->C:LJ50;

    if-eqz v1, :cond_2

    .line 11
    invoke-static {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->C:LJ50;

    .line 13
    iget-boolean v2, v1, LJ50;->a:Z

    if-eqz v2, :cond_1

    .line 14
    iget-object v0, v1, LJ50;->b:LV01;

    check-cast v0, LI50;

    .line 15
    iget-object v0, v0, LI50;->a:LV01;

    .line 16
    iput-object v0, v1, LJ50;->b:LV01;

    goto :goto_0

    .line 17
    :cond_1
    iput-object v0, v1, LJ50;->b:LV01;

    .line 18
    :goto_0
    iget-object v0, v1, LJ50;->b:LV01;

    .line 19
    invoke-interface {p1, v0}, LX01;->a(LV01;)V

    .line 20
    :cond_2
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, LP40;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->g:Lh50;

    invoke-interface {v0}, Lh50;->d()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(I)V

    :cond_4
    return-void
.end method

.method public final b(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;
    .locals 1

    .line 31
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 32
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 33
    instance-of v0, p1, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->t0()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->a(Lorg/chromium/content_public/browser/WebContents;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->a()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    invoke-static {}, LFc0;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/components/search_engines/TemplateUrlService;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/locale/LocaleManager;->getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/locale/LocaleManager;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    iget-boolean v4, v2, Lorg/chromium/chrome/browser/tab/Tab;->o:Z

    if-nez v4, :cond_3

    .line 10
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->u()Z

    move-result v2

    if-nez v2, :cond_3

    .line 11
    invoke-static {v3}, LP40;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->g:Lh50;

    invoke-interface {v0}, Lh50;->d()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-eqz v1, :cond_6

    .line 13
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->B:LI01;

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 15
    iget-object v1, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 16
    new-instance v3, Ln50;

    invoke-direct {v3, v1, v2}, Ln50;-><init>(Lo50;Lm50;)V

    .line 17
    iput-object v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->B:LI01;

    .line 18
    invoke-static {p1}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object v1

    .line 19
    iget-object v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->B:LI01;

    invoke-interface {v1, v3}, LH01;->a(LI01;)V

    .line 20
    invoke-static {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v1

    .line 21
    iget-object v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->C:LJ50;

    .line 22
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->e:Lf50;

    .line 23
    iget-boolean v4, v3, LJ50;->a:Z

    if-eqz v4, :cond_4

    .line 24
    new-instance v4, LI50;

    iget-object v5, v3, LJ50;->b:LV01;

    invoke-direct {v4, v5, v0, v2}, LI50;-><init>(LV01;LV01;LH50;)V

    iput-object v4, v3, LJ50;->b:LV01;

    goto :goto_2

    .line 25
    :cond_4
    iput-object v0, v3, LJ50;->b:LV01;

    .line 26
    :goto_2
    iget-object v0, v3, LJ50;->b:LV01;

    .line 27
    invoke-interface {v1, v0}, LX01;->a(LV01;)V

    .line 28
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->D:J

    iget v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->x:F

    .line 29
    invoke-static {v0, v1, p0, p1, v2}, LJ/N;->MGn2PSB6(JLjava/lang/Object;Ljava/lang/Object;F)V

    goto :goto_3

    .line 30
    :cond_5
    throw v2

    :cond_6
    :goto_3
    return-void
.end method

.method public final c(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->E:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->r0()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    :cond_2
    :goto_0
    return-void
.end method

.method public final d(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->z:Lorg/chromium/content_public/browser/WebContents;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->A:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 3
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 4
    :cond_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->z:Lorg/chromium/content_public/browser/WebContents;

    .line 5
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->A:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->z:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->C:LJ50;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, LJ50;

    invoke-direct {v0, p1}, LJ50;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->C:LJ50;

    .line 8
    :cond_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->z:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/content_public/browser/WebContents;)V

    :cond_2
    return-void
.end method

.method public onActivityAttachmentChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->d(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->z:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->a(Lorg/chromium/content_public/browser/WebContents;)V

    .line 4
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->c(Lorg/chromium/chrome/browser/tab/Tab;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->A:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    :goto_0
    return-void
.end method

.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->D:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, LJ/N;->MjIbQ3pN(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iput-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->D:J

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->y:LlU0;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lr50;

    invoke-direct {v0, p0}, Lr50;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->y:LlU0;

    .line 7
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->y:LlU0;

    .line 8
    iget-object v0, v0, Lorg/chromium/components/search_engines/TemplateUrlService;->b:LWT;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->d(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onContextMenuShown(Lorg/chromium/chrome/browser/tab/Tab;Landroid/view/ContextMenu;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    .line 3
    iget-object p1, p1, Lo50;->b:Lp50;

    invoke-interface {p1}, Lp50;->f()V

    :cond_0
    return-void
.end method

.method public onContextualSearchPrefChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->z:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/content_public/browser/WebContents;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, LJ/N;->Mhm1CPCt(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->D:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->D:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->M4Z1OGVX(JLjava/lang/Object;)V

    .line 4
    iput-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->D:J

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->y:LlU0;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->y:LlU0;

    .line 7
    iget-object v0, v0, Lorg/chromium/components/search_engines/TemplateUrlService;->b:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->b(Lm81;)V

    .line 10
    :cond_2
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->c(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 11
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->z:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->a(Lorg/chromium/content_public/browser/WebContents;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->z:Lorg/chromium/content_public/browser/WebContents;

    .line 13
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->A:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 14
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->C:LJ50;

    .line 15
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->B:LI01;

    return-void
.end method

.method public onEnterFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(I)V

    :cond_0
    return-void
.end method

.method public onExitFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(I)V

    :cond_0
    return-void
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->c(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->d(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    .line 4
    invoke-virtual {p1}, Lo50;->c()V

    :cond_0
    return-void
.end method

.method public onShowUnhandledTapUIIfNeeded(IIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->B:LI01;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object v1

    invoke-virtual {v1}, Lkd0;->isOverlayVideoMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->f:Lo50;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lo50;->g:Z

    .line 6
    iget v1, v0, Lo50;->f:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-boolean v1, v0, Lo50;->s:Z

    if-nez v1, :cond_1

    .line 7
    iget-wide v1, v0, Lo50;->o:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, v0, Lo50;->o:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, v0, Lo50;->q:I

    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lo50;->g:Z

    .line 10
    iput v1, v0, Lo50;->f:I

    int-to-float p1, p1

    .line 11
    iput p1, v0, Lo50;->j:F

    int-to-float p1, p2

    .line 12
    iput p1, v0, Lo50;->k:F

    .line 13
    iput p3, v0, Lo50;->l:I

    .line 14
    iput p4, v0, Lo50;->m:I

    .line 15
    iget-object p1, v0, Lo50;->b:Lp50;

    invoke-interface {p1}, Lp50;->g()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 16
    iput-object p1, v0, Lo50;->h:Ls50;

    .line 17
    iget-object p1, v0, Lo50;->b:Lp50;

    invoke-interface {p1}, Lp50;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->d(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method
