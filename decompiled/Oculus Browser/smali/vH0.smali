.class public LvH0;
.super LSG0;
.source "PG"


# instance fields
.field public w:Landroid/os/Handler;

.field public final synthetic x:LwH0;


# direct methods
.method public constructor <init>(LwH0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LvH0;->x:LwH0;

    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    new-instance p1, LuH0;

    invoke-direct {p1, p0}, LuH0;-><init>(LvH0;)V

    iput-object p1, p0, LvH0;->w:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, LvH0;->x:LwH0;

    .line 2
    iget-boolean v0, v0, LwH0;->b:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, LvH0;->w:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, LvH0;->w:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, LSG0;->onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    iget-object p1, p0, LvH0;->w:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDidFinishNavigation(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 2

    .line 1
    iget-boolean p1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, LvH0;->w:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object p1, p0, LvH0;->w:Landroid/os/Handler;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5
    iget-object p1, p0, LvH0;->x:LwH0;

    iget-object p1, p1, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {p1}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    iget-object p1, p0, LvH0;->w:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object p1, p0, LvH0;->x:LwH0;

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p1, LwH0;->b:Z

    return-void
.end method

.method public onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    iget-object p1, p0, LvH0;->w:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object p1, p0, LvH0;->x:LwH0;

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p1, LwH0;->b:Z

    .line 4
    iget-object p1, p1, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {p1}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LvH0;->b()V

    .line 2
    iget-object p1, p0, LvH0;->x:LwH0;

    iget-object p1, p1, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {p1}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, LvH0;->x:LwH0;

    invoke-static {p2}, LZS0;->b(Ljava/lang/String;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 2
    iput-boolean p2, p1, LwH0;->b:Z

    .line 3
    iget-object p1, p0, LvH0;->x:LwH0;

    iget-object p1, p1, LwH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {p1}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, LvH0;->b()V

    return-void
.end method
