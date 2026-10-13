.class public LF70;
.super Lg11;
.source "PG"


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lorg/chromium/content_public/browser/WebContents;

.field public final synthetic d:I

.field public final synthetic e:LG70;


# direct methods
.method public constructor <init>(LG70;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/WebContents;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LF70;->e:LG70;

    iput-object p3, p0, LF70;->c:Lorg/chromium/content_public/browser/WebContents;

    iput p4, p0, LF70;->d:I

    invoke-direct {p0, p2}, Lg11;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public didFinishNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz v0, :cond_4

    .line 3
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, LF70;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p0, LF70;->a:Z

    .line 6
    iget-object v0, p0, LF70;->c:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    .line 7
    iget v2, p0, LF70;->b:I

    invoke-interface {v0, v2}, Lorg/chromium/content_public/browser/NavigationController;->c(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    iget v2, p0, LF70;->b:I

    invoke-interface {v0, v2}, Lorg/chromium/content_public/browser/NavigationController;->b(I)Z

    .line 9
    :cond_1
    iget-object v0, p0, LF70;->e:LG70;

    iget-object v0, v0, LG70;->y:Ljava/util/Map;

    iget v2, p0, LF70;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH70;

    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    iput v1, v0, LH70;->b:I

    .line 11
    iget-object p1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 12
    iget-object v2, p0, LF70;->e:LG70;

    .line 13
    iget-object v2, v2, LG70;->w:Ljava/lang/String;

    .line 14
    invoke-static {v2}, LZS0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 16
    iput p1, v0, LH70;->b:I

    .line 17
    iget-object p1, p0, LF70;->e:LG70;

    .line 18
    iput-boolean v1, p1, LG70;->x:Z

    .line 19
    :cond_3
    iget-object p1, p0, LF70;->e:LG70;

    const/4 v1, 0x0

    .line 20
    iput-object v1, p1, LG70;->w:Ljava/lang/String;

    .line 21
    iget v0, v0, LH70;->b:I

    if-nez v0, :cond_4

    invoke-virtual {p1}, LG70;->c()V

    :cond_4
    :goto_0
    return-void
.end method

.method public didStartNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LF70;->c:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->c()I

    move-result v1

    .line 5
    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/NavigationController;->c(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lorg/chromium/content_public/browser/NavigationEntry;->b:Ljava/lang/String;

    .line 7
    invoke-static {v0}, LZS0;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, LF70;->a:Z

    .line 9
    iput v1, p0, LF70;->b:I

    .line 10
    :cond_1
    iget-object v0, p0, LF70;->e:LG70;

    iget-object v0, v0, LG70;->y:Ljava/util/Map;

    iget v1, p0, LF70;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH70;

    if-nez v0, :cond_2

    return-void

    .line 11
    :cond_2
    iget-object v1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 12
    iput-object v1, v0, LH70;->d:Ljava/lang/String;

    .line 13
    invoke-static {v1}, LZS0;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 14
    iput v1, v0, LH70;->b:I

    .line 15
    iget-object v0, p0, LF70;->e:LG70;

    .line 16
    iget-object p1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 17
    iput-object p1, v0, LG70;->w:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public navigationEntryCommitted()V
    .locals 5

    .line 1
    iget-object v0, p0, LF70;->e:LG70;

    iget-object v0, v0, LG70;->y:Ljava/util/Map;

    iget v1, p0, LF70;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH70;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, LH70;->c:Z

    .line 3
    iget-object v2, p0, LF70;->e:LG70;

    .line 4
    iget-object v2, v2, LG70;->A:LpI0;

    .line 5
    iget v3, p0, LF70;->d:I

    check-cast v2, LrI0;

    invoke-virtual {v2, v3}, LrI0;->a(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    iget-boolean v4, v2, Lorg/chromium/chrome/browser/tab/Tab;->w:Z

    if-nez v4, :cond_2

    .line 8
    iget-object v4, p0, LF70;->e:LG70;

    if-eqz v4, :cond_1

    const-string v4, "DomDistiller.ReaderShownForPageLoad"

    .line 9
    invoke-static {v4, v1}, LfV;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 10
    :cond_1
    throw v3

    .line 11
    :cond_2
    :goto_0
    iput-boolean v1, v0, LH70;->e:Z

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LZS0;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, LH70;->f:Z

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v0}, LH70;->a()J

    move-result-wide v0

    .line 14
    iget-object v2, p0, LF70;->e:LG70;

    if-eqz v2, :cond_3

    const-string v2, "DomDistiller.Time.ViewingReaderModePage"

    .line 15
    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;J)V

    goto :goto_1

    .line 16
    :cond_3
    throw v3

    :cond_4
    :goto_1
    return-void
.end method
