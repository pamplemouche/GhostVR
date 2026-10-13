.class public LuI0;
.super LDI0;
.source "PG"


# instance fields
.field public final synthetic w:LwI0;


# direct methods
.method public constructor <init>(LwI0;LpI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LuI0;->w:LwI0;

    invoke-direct {p0, p2}, LDI0;-><init>(LpI0;)V

    return-void
.end method


# virtual methods
.method public onActivityAttachmentChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, LuI0;->w:LwI0;

    .line 2
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 3
    invoke-virtual {p2, v0}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->c(Lorg/chromium/chrome/browser/tab/Tab;)V

    :cond_0
    return-void
.end method

.method public onCloseContents(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, LuI0;->w:LwI0;

    invoke-virtual {v0, p1}, LrI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    return-void
.end method

.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .line 1
    invoke-static {p1}, LaH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LuI0;->w:LwI0;

    .line 2
    iget-object v0, v0, LwI0;->m:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a(I)V

    .line 4
    :cond_0
    iget-object v0, p0, LuI0;->w:LwI0;

    .line 5
    iget-object v0, v0, LwI0;->o:LEI0;

    .line 6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    .line 7
    iget v1, v0, LEI0;->w:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne p1, v1, :cond_1

    .line 8
    iput v2, v0, LEI0;->w:I

    :cond_1
    return-void
.end method

.method public onLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, LuI0;->w:LwI0;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p2, LwI0;->i:LYI0;

    .line 3
    invoke-virtual {p2, p1}, LYI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 4
    invoke-virtual {p2}, LYI0;->d()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public onNavigationEntriesDeleted(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, LuI0;->w:LwI0;

    .line 2
    iget-object v0, v0, LwI0;->i:LYI0;

    .line 3
    invoke-virtual {v0, p1}, LYI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 4
    invoke-virtual {v0}, LYI0;->d()V

    return-void
.end method

.method public onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 6

    .line 1
    iget-object p2, p0, LuI0;->w:LwI0;

    .line 2
    iget-object p2, p2, LwI0;->o:LEI0;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    .line 4
    iget v0, p2, LEI0;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne p1, v0, :cond_1

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 6
    iget-wide v4, p2, LEI0;->x:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p2, p1}, LEI0;->a(I)V

    .line 8
    :cond_0
    iput v1, p2, LEI0;->w:I

    :cond_1
    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, LuI0;->w:LwI0;

    .line 2
    iget-object p2, p2, LwI0;->o:LEI0;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    .line 4
    iget v0, p2, LEI0;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p2, p1}, LEI0;->a(I)V

    .line 6
    iput v1, p2, LEI0;->w:I

    :cond_0
    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, LuI0;->w:LwI0;

    .line 3
    iget-object v0, v0, LwI0;->m:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    .line 5
    iget-wide v1, v0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 6
    invoke-static {v1, v2, v0, p1, p2}, LJ/N;->MO5IR90z(JLjava/lang/Object;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRootIdChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    iget-object p2, p0, LuI0;->w:LwI0;

    .line 2
    iget-object p2, p2, LwI0;->i:LYI0;

    .line 3
    invoke-virtual {p2, p1}, LYI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 4
    invoke-virtual {p2}, LYI0;->d()V

    return-void
.end method

.method public onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 5

    .line 1
    iget-object v0, p0, LuI0;->w:LwI0;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, v0, LrI0;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, v0, LrI0;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 4
    invoke-static {v3, v1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-interface {v3, v1}, LdI0;->c(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, LuI0;->w:LwI0;

    invoke-virtual {v0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    if-ne v3, v0, :cond_3

    .line 6
    iget-object v0, p0, LuI0;->w:LwI0;

    .line 7
    iget-object v0, v0, LwI0;->m:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a(ILjava/lang/String;)V

    :cond_3
    return-void
.end method
