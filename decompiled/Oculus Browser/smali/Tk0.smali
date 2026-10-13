.class public LTk0;
.super LDI0;
.source "PG"


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/metrics/UmaSessionStats;LpI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LTk0;->w:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    invoke-direct {p0, p2}, LDI0;-><init>(LpI0;)V

    return-void
.end method


# virtual methods
.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p2, p0, LTk0;->w:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    if-eqz p2, :cond_5

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, LJ/N;->MZTfl9lI(Z)V

    .line 5
    iget-boolean v0, p2, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->e:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, LJ/N;->MeATiwBk()V

    .line 7
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, LFO0;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, LFW;->j:LFW;

    new-instance v2, LRk0;

    invoke-direct {v2, p1}, LRk0;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    .line 10
    invoke-static {v0, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 11
    :cond_2
    iget-object p1, p2, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->a:LpI0;

    if-nez p1, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    check-cast p1, LrI0;

    invoke-virtual {p1, v1}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    invoke-interface {p1}, LdI0;->getCount()I

    move-result v1

    .line 14
    :goto_1
    invoke-static {v1}, LJ/N;->MP6JTEGK(I)V

    :goto_2
    return-void

    :cond_5
    const/4 p1, 0x0

    .line 15
    throw p1
.end method
