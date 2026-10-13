.class public LBk0;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:LDk0;


# direct methods
.method public constructor <init>(LDk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LBk0;->w:LDk0;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, LBk0;->w:LDk0;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 3
    invoke-virtual {v0, p1}, LDk0;->a(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 6

    .line 1
    iget-object p1, p0, LBk0;->w:LDk0;

    .line 2
    iget-object v0, p1, LDk0;->h:LP01;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, LP01;->b()V

    .line 4
    iput-object v1, p1, LDk0;->h:LP01;

    .line 5
    iput-object v1, p1, LDk0;->o:Ljava/util/Set;

    .line 6
    :goto_0
    iget-object p1, p0, LBk0;->w:LDk0;

    invoke-static {p1}, LDk0;->b(LDk0;)V

    .line 7
    iget-object p1, p0, LBk0;->w:LDk0;

    .line 8
    iget-object p1, p1, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, LBk0;->w:LDk0;

    .line 11
    iput-object v1, p1, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 12
    iget-object p1, p1, LDk0;->b:LIa0;

    if-eqz p1, :cond_2

    .line 13
    iget-wide v2, p1, LIa0;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 14
    invoke-static {v2, v3}, LJ/N;->MJaut_pX(J)V

    .line 15
    iput-wide v4, p1, LIa0;->b:J

    .line 16
    :cond_1
    iget-object p1, p0, LBk0;->w:LDk0;

    iput-object v1, p1, LDk0;->b:LIa0;

    :cond_2
    return-void
.end method

.method public onDidFinishNavigation(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 1

    .line 1
    iget-boolean p1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    if-eqz p1, :cond_2

    .line 2
    iget-boolean p1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz p1, :cond_2

    .line 3
    iget-boolean p1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, LBk0;->w:LDk0;

    .line 5
    iget-object p2, p1, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, LJ/N;->MpCt7siL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p2}, LJ/N;->MeroQv$e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    iput-object p2, p1, LDk0;->g:Ljava/lang/String;

    .line 10
    iget-object p1, p0, LBk0;->w:LDk0;

    const/4 p2, 0x0

    iput-object p2, p1, LDk0;->d:Landroid/graphics/Bitmap;

    .line 11
    iput-object p2, p1, LDk0;->c:Landroid/graphics/Bitmap;

    .line 12
    iput-object p2, p1, LDk0;->l:Lorg/chromium/services/media_session/MediaMetadata;

    .line 13
    invoke-virtual {p1}, LDk0;->a()Lorg/chromium/services/media_session/MediaMetadata;

    move-result-object v0

    .line 14
    iput-object v0, p1, LDk0;->m:Lorg/chromium/services/media_session/MediaMetadata;

    .line 15
    iget-object p1, p0, LBk0;->w:LDk0;

    .line 16
    iput-object p2, p1, LDk0;->o:Ljava/util/Set;

    .line 17
    invoke-virtual {p1}, LDk0;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 18
    :cond_1
    iget-object p1, p0, LBk0;->w:LDk0;

    .line 19
    iget-object p2, p1, LDk0;->j:Lnk0;

    .line 20
    iget-object v0, p1, LDk0;->g:Ljava/lang/String;

    .line 21
    iput-object v0, p2, Lnk0;->c:Ljava/lang/String;

    .line 22
    iget-object v0, p1, LDk0;->d:Landroid/graphics/Bitmap;

    .line 23
    iput-object v0, p2, Lnk0;->g:Landroid/graphics/Bitmap;

    .line 24
    iget-object v0, p1, LDk0;->c:Landroid/graphics/Bitmap;

    .line 25
    iput-object v0, p2, Lnk0;->i:Landroid/graphics/Bitmap;

    .line 26
    iget-object v0, p1, LDk0;->m:Lorg/chromium/services/media_session/MediaMetadata;

    .line 27
    iput-object v0, p2, Lnk0;->a:Lorg/chromium/services/media_session/MediaMetadata;

    .line 28
    iget-object v0, p1, LDk0;->o:Ljava/util/Set;

    .line 29
    iput-object v0, p2, Lnk0;->n:Ljava/util/Set;

    .line 30
    invoke-virtual {p1}, LDk0;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFaviconUpdated(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p1, p0, LBk0;->w:LDk0;

    invoke-static {p1, p2}, LDk0;->a(LDk0;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    const p2, 0x7f0b025b

    .line 2
    invoke-static {p2}, Lxk0;->e(I)Lxk0;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2, p1}, Lxk0;->a(I)V

    :goto_0
    return-void
.end method

.method public onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, LBk0;->w:LDk0;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, LDk0;->a(LDk0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, LBk0;->w:LDk0;

    .line 3
    iget-object v0, v0, LDk0;->k:Ljava/lang/String;

    .line 4
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, LBk0;->w:LDk0;

    .line 6
    iput-object p1, v0, LDk0;->k:Ljava/lang/String;

    .line 7
    invoke-static {v0}, LDk0;->a(LDk0;)V

    :cond_0
    return-void
.end method
