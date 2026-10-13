.class public LTG0;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:LVG0;


# direct methods
.method public constructor <init>(LVG0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LTG0;->w:LVG0;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityAttachmentChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, LTG0;->w:LVG0;

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->D:LlH0;

    .line 3
    invoke-interface {v0, p1}, LlH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)Lxa0;

    move-result-object p1

    .line 4
    iput-object p1, p2, LVG0;->B:Lxa0;

    :cond_0
    return-void
.end method

.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, LTG0;->w:LVG0;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 3
    invoke-virtual {v0, p1}, LVG0;->a(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object p1, p0, LTG0;->w:LVG0;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, LVG0;->a(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public onDidFinishNavigation(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 3

    .line 1
    iget-boolean p1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    if-eqz p1, :cond_4

    .line 2
    iget-boolean p1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-nez p1, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget-object p1, p0, LTG0;->w:LVG0;

    .line 4
    iget-object p2, p1, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    iget-object p2, p2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 6
    iget-boolean v0, p1, LVG0;->C:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 7
    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p2

    invoke-interface {p2}, Lorg/chromium/content_public/browser/NavigationController;->j()V

    goto :goto_2

    .line 8
    :cond_1
    iget-boolean v0, p1, LVG0;->D:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 9
    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p2

    .line 10
    iget-object v0, p1, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 11
    invoke-static {v0}, LrH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LrH0;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, LrH0;->getLastCommittedEntryIndexBeforeStartingNavigation()I

    move-result v0

    .line 13
    iget-object v1, p1, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 14
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    const/4 v2, -0x1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/NavigationController;->c()I

    move-result v1

    :goto_0
    add-int/2addr v1, v2

    :goto_1
    if-le v1, v0, :cond_3

    .line 16
    invoke-interface {p2, v1}, Lorg/chromium/content_public/browser/NavigationController;->b(I)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p1, LVG0;->C:Z

    .line 18
    iput-boolean p2, p1, LVG0;->D:Z

    :cond_4
    :goto_3
    return-void
.end method
