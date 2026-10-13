.class public LG70;
.super LDI0;
.source "PG"


# instance fields
.field public A:LpI0;

.field public B:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

.field public w:Ljava/lang/String;

.field public x:Z

.field public y:Ljava/util/Map;

.field public z:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method public constructor <init>(LpI0;Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LDI0;-><init>(LpI0;)V

    .line 2
    iput-object p1, p0, LG70;->A:LpI0;

    .line 3
    iput-object p2, p0, LG70;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LG70;->y:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/content_public/browser/WebContents;)Lg11;
    .locals 2

    .line 1
    iget-object v0, p0, LG70;->A:LpI0;

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v1, LF70;

    invoke-direct {v1, p0, p1, p1, v0}, LF70;-><init>(LG70;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/WebContents;I)V

    return-object v1
.end method

.method public b()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .line 1
    iget-object v0, p0, LG70;->A:LpI0;

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, LG70;->A:LpI0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, LG70;->b()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p0}, LG70;->b()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/NavigationController;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-static {}, LC70;->a()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 6
    :goto_1
    iget-object v1, p0, LG70;->y:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v2, :cond_5

    iget-object v1, p0, LG70;->y:Ljava/util/Map;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH70;

    iget v1, v1, LH70;->b:I

    if-nez v1, :cond_5

    iget-object v1, p0, LG70;->y:Ljava/util/Map;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH70;

    iget-boolean v0, v0, LH70;->c:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    iget-object v0, p0, LG70;->A:LpI0;

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 10
    invoke-static {v0}, LJ/N;->MqhmiFry(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public destroy()V
    .locals 4

    .line 1
    invoke-super {p0}, LDI0;->destroy()V

    .line 2
    iget-object v0, p0, LG70;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    iget-object v2, p0, LG70;->A:LpI0;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v2, LrI0;

    invoke-virtual {v2, v3}, LrI0;->a(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH70;

    .line 5
    iget-object v3, v1, LH70;->a:Lg11;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lg11;->destroy()V

    :cond_1
    if-eqz v2, :cond_0

    .line 6
    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 7
    sget-object v3, LJ70;->C:Ljava/lang/Class;

    invoke-virtual {v2, v3}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v2

    check-cast v2, LJ70;

    .line 8
    iget-object v1, v1, LH70;->g:LI70;

    .line 9
    iget-object v2, v2, LJ70;->w:LWT;

    invoke-virtual {v2, v1}, LWT;->b(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, LG70;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    sget-object v0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->a:LG70;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    sput-object v1, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->a:LG70;

    .line 13
    :goto_1
    iput-object v1, p0, LG70;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 14
    iput-object v1, p0, LG70;->A:LpI0;

    return-void
.end method

.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .line 1
    iget-object v0, p0, LG70;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LG70;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH70;

    iget-boolean v0, v0, LH70;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LZS0;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LG70;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH70;

    .line 4
    iget-object v1, p0, LG70;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v0, LH70;

    invoke-direct {v0}, LH70;-><init>()V

    .line 6
    iget-object v1, p0, LG70;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x1

    .line 7
    iput v1, v0, LH70;->b:I

    .line 8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LH70;->d:Ljava/lang/String;

    .line 9
    iget-object v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p0, v1}, LG70;->a(Lorg/chromium/content_public/browser/WebContents;)Lg11;

    move-result-object v1

    iput-object v1, v0, LH70;->a:Lg11;

    .line 11
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LZS0;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 12
    iput v1, v0, LH70;->b:I

    .line 13
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LG70;->w:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, LG70;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH70;

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v1, v0, LH70;->e:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "DomDistiller.ReaderShownForPageLoad"

    .line 3
    invoke-static {v2, v1}, LfV;->a(Ljava/lang/String;Z)V

    .line 4
    :cond_1
    iget-boolean v1, v0, LH70;->f:Z

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, LH70;->a()J

    move-result-wide v1

    const-string v3, "DomDistiller.Time.ViewingReaderModePage"

    .line 6
    invoke-static {v3, v1, v2}, LfV;->a(Ljava/lang/String;J)V

    .line 7
    :cond_2
    iget-object v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 8
    sget-object v2, LJ70;->C:Ljava/lang/Class;

    invoke-virtual {v1, v2}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v1

    check-cast v1, LJ70;

    .line 9
    iget-object v0, v0, LH70;->g:LI70;

    .line 10
    iget-object v1, v1, LJ70;->w:LWT;

    invoke-virtual {v1, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    .line 12
    iget-object v0, p0, LG70;->y:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    iget-object v0, p0, LG70;->y:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH70;

    .line 14
    iget-object v0, v0, LH70;->a:Lg11;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Lg11;->destroy()V

    .line 16
    :cond_5
    iget-object v0, p0, LG70;->y:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 1

    .line 1
    iget-object p2, p0, LG70;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LH70;

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p2, p1, LH70;->f:Z

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, LH70;->a()J

    move-result-wide p1

    const-string v0, "DomDistiller.Time.ViewingReaderModePage"

    .line 4
    invoke-static {v0, p1, p2}, LfV;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onLoadUrl(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;I)V
    .locals 0

    if-eqz p1, :cond_2

    .line 1
    iget-object p3, p0, LG70;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/ChromeActivity;->V0()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2
    iget-object p2, p2, Lorg/chromium/content_public/browser/LoadUrlParams;->a:Ljava/lang/String;

    .line 3
    invoke-static {p2}, LZS0;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance p2, LE70;

    invoke-direct {p2, p0}, LE70;-><init>(LG70;)V

    iput-object p2, p0, LG70;->B:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    .line 6
    invoke-static {p2, p1}, LJ/N;->MEwGhN3r(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 3

    .line 1
    iget-object p2, p0, LG70;->A:LpI0;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p2

    .line 3
    iget-object v0, p0, LG70;->y:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LG70;->y:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH70;

    iget-boolean v0, v0, LH70;->c:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    sput-object p0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->a:LG70;

    .line 5
    iget-object v0, p0, LG70;->y:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH70;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, LH70;

    invoke-direct {v0}, LH70;-><init>()V

    const/4 v1, 0x1

    .line 7
    iput v1, v0, LH70;->b:I

    .line 8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LH70;->d:Ljava/lang/String;

    .line 9
    iget-object v1, p0, LG70;->y:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    iget-object p2, v0, LH70;->g:LI70;

    if-nez p2, :cond_3

    .line 11
    iget-object p2, p0, LG70;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LH70;

    new-instance v1, LD70;

    invoke-direct {v1, p0}, LD70;-><init>(LG70;)V

    iput-object v1, p2, LH70;->g:LI70;

    .line 12
    iget-object p2, p1, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 13
    sget-object v1, LJ70;->C:Ljava/lang/Class;

    invoke-virtual {p2, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p2

    check-cast p2, LJ70;

    .line 14
    iget-object v1, p0, LG70;->y:Ljava/util/Map;

    .line 15
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH70;

    iget-object v1, v1, LH70;->g:LI70;

    .line 16
    iget-object p2, p2, LJ70;->w:LWT;

    invoke-virtual {p2, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LZS0;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-boolean p2, v0, LH70;->f:Z

    if-nez p2, :cond_4

    .line 18
    invoke-virtual {v0}, LH70;->b()V

    .line 19
    :cond_4
    iget-object p2, v0, LH70;->a:Lg11;

    if-nez p2, :cond_5

    .line 20
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 21
    invoke-virtual {p0, p1}, LG70;->a(Lorg/chromium/content_public/browser/WebContents;)Lg11;

    move-result-object p1

    iput-object p1, v0, LH70;->a:Lg11;

    .line 22
    :cond_5
    invoke-virtual {p0}, LG70;->c()V

    return-void
.end method
