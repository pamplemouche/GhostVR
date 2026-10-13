.class public abstract LmH0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 31
    sget-object v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->K:Ljava/lang/Class;

    invoke-virtual {v0, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 33
    sget-object v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->K:Ljava/lang/Class;

    new-instance v2, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {v0, v1, v2}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 34
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 35
    sget-object v1, LDH0;->z:Ljava/lang/Class;

    invoke-virtual {v0, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v0

    check-cast v0, LDH0;

    if-nez v0, :cond_1

    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 37
    sget-object v1, LDH0;->z:Ljava/lang/Class;

    new-instance v2, LDH0;

    invoke-direct {v2, p0}, LDH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {v0, v1, v2}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    .line 38
    :cond_1
    invoke-static {p0}, La00;->a(Lorg/chromium/chrome/browser/tab/Tab;)La00;

    .line 39
    invoke-static {p0}, Lorg/chromium/chrome/browser/tab/TabFavicon;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TabFavicon;

    move-result-object v0

    if-nez v0, :cond_2

    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 41
    sget-object v1, Lorg/chromium/chrome/browser/tab/TabFavicon;->E:Ljava/lang/Class;

    new-instance v2, Lorg/chromium/chrome/browser/tab/TabFavicon;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/tab/TabFavicon;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {v0, v1, v2}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabFavicon;

    .line 42
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 43
    sget-object v1, Lorg/chromium/chrome/browser/tab/TrustedCdn;->A:Ljava/lang/Class;

    invoke-virtual {v0, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TrustedCdn;

    if-nez v0, :cond_3

    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 45
    sget-object v1, Lorg/chromium/chrome/browser/tab/TrustedCdn;->A:Ljava/lang/Class;

    new-instance v2, Lorg/chromium/chrome/browser/tab/TrustedCdn;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/tab/TrustedCdn;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {v0, v1, v2}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TrustedCdn;

    .line 46
    :cond_3
    invoke-static {p0}, LdH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LdH0;

    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 48
    invoke-static {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v1

    .line 49
    new-instance v2, LrY;

    invoke-direct {v2, p0, v0}, LrY;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;)V

    .line 50
    invoke-interface {v1, v2}, LX01;->a(Landroid/view/ActionMode$Callback;)V

    .line 51
    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    move-result-object p0

    const/4 v0, 0x1

    .line 52
    invoke-interface {p0, v0}, Le11;->a(Z)V

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/Integer;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p2}, LzH0;->a(Lorg/chromium/chrome/browser/tab/Tab;I)LzH0;

    .line 2
    :cond_0
    iget-object p2, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 3
    sget-object v0, LJ70;->C:Ljava/lang/Class;

    new-instance v1, LJ70;

    invoke-direct {v1, p0}, LJ70;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {p2, v0, v1}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    .line 4
    iget-object p2, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 5
    sget-object v0, LxH0;->B:Ljava/lang/Class;

    new-instance v1, LxH0;

    invoke-direct {v1, p0}, LxH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {p2, v0, v1}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    .line 6
    iget-object p2, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 7
    sget-object v0, LVG0;->E:Ljava/lang/Class;

    new-instance v1, LVG0;

    invoke-direct {v1, p0}, LVG0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {p2, v0, v1}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    .line 8
    new-instance p2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;

    invoke-direct {p2, p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 9
    invoke-static {}, LPY;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ShoppingAssist"

    .line 10
    invoke-static {p2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    sget-object p2, LjJ0;->y:LjJ0;

    if-nez p2, :cond_1

    new-instance p2, LjJ0;

    invoke-direct {p2, p0}, LjJ0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    sput-object p2, LjJ0;->y:LjJ0;

    .line 12
    :cond_1
    iget-object p2, p0, Lorg/chromium/chrome/browser/tab/Tab;->H:LeI0;

    if-eqz p2, :cond_2

    .line 13
    invoke-interface {p2}, LeI0;->supportsMediaSession()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 14
    new-instance p2, LDk0;

    invoke-direct {p2, p0}, LDk0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {p0}, LeH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LeH0;

    move-result-object p2

    .line 16
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 17
    invoke-static {v0}, LJ/N;->MjsSsYT7(Ljava/lang/Object;)J

    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 19
    iget-object p2, p2, LeH0;->w:Ljava/util/Map;

    if-nez v0, :cond_4

    sget-object v0, LeH0;->y:Ljava/lang/Object;

    :cond_4
    const-string v1, "ParentTaskId"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p0}, LeH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LeH0;

    move-result-object p2

    .line 21
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 22
    invoke-static {p1}, LJ/N;->M848Q9ZH(Ljava/lang/Object;)J

    move-result-wide v0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 24
    iget-object p2, p2, LeH0;->w:Ljava/util/Map;

    if-nez p1, :cond_5

    sget-object p1, LeH0;->y:Ljava/lang/Object;

    :cond_5
    const-string v0, "ParentRootTaskId"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :goto_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 26
    sget-object p2, LgH0;->F:Ljava/lang/Class;

    new-instance v0, LgH0;

    invoke-direct {v0, p0}, LgH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {p1, p2, v0}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    .line 27
    iget-boolean p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-eqz p0, :cond_6

    .line 28
    sget-object p0, Li60;->a:Lj60;

    .line 29
    invoke-virtual {p0}, Lj60;->a()V

    :cond_6
    return-void
.end method
