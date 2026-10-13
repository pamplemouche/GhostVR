.class public LfH0;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:LgH0;


# direct methods
.method public constructor <init>(LgH0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LfH0;->w:LgH0;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityAttachmentChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, LfH0;->w:LgH0;

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->D:LlH0;

    .line 3
    invoke-interface {v0, p1}, LlH0;->d(Lorg/chromium/chrome/browser/tab/Tab;)LQG0;

    move-result-object p1

    .line 4
    iput-object p1, p2, LgH0;->z:LQG0;

    :cond_0
    return-void
.end method

.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object p1, p0, LfH0;->w:LgH0;

    const/4 v0, 0x0

    .line 2
    iput v0, p1, LgH0;->B:I

    .line 3
    iput v0, p1, LgH0;->C:I

    .line 4
    iput v0, p1, LgH0;->D:I

    .line 5
    iput-boolean v0, p1, LgH0;->E:Z

    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public onInitialized(Lorg/chromium/chrome/browser/tab/Tab;LtH0;)V
    .locals 1

    .line 1
    iget-object p2, p0, LfH0;->w:LgH0;

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->D:LlH0;

    .line 3
    invoke-interface {v0, p1}, LlH0;->d(Lorg/chromium/chrome/browser/tab/Tab;)LQG0;

    move-result-object p1

    .line 4
    iput-object p1, p2, LgH0;->z:LQG0;

    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, LfH0;->w:LgH0;

    .line 2
    invoke-virtual {p1}, LgH0;->e()V

    return-void
.end method

.method public onRendererResponsiveStateChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, LfH0;->w:LgH0;

    .line 2
    iget-object v0, p1, LgH0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, LgH0;->e()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p2, v0}, LgH0;->a(IZ)V

    :goto_0
    return-void
.end method

.method public onSSLStateUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p0, LfH0;->w:LgH0;

    .line 2
    invoke-virtual {p1}, LgH0;->e()V

    return-void
.end method
