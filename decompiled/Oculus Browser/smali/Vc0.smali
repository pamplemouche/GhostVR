.class public LVc0;
.super LzI0;
.source "PG"


# instance fields
.field public final synthetic c:LpI0;

.field public final synthetic d:Lbd0;


# direct methods
.method public constructor <init>(Lbd0;LpI0;LpI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LVc0;->d:Lbd0;

    iput-object p3, p0, LVc0;->c:LpI0;

    invoke-direct {p0, p2}, LzI0;-><init>(LpI0;)V

    return-void
.end method


# virtual methods
.method public allTabsClosureCommitted()V
    .locals 2

    .line 1
    iget-object v0, p0, LVc0;->d:Lbd0;

    iget-object v1, p0, LVc0;->c:LpI0;

    check-cast v1, LrI0;

    invoke-virtual {v1}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbd0;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public didCloseTab(IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, LVc0;->d:Lbd0;

    iget-object p2, p0, LVc0;->c:LpI0;

    check-cast p2, LrI0;

    invoke-virtual {p2}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbd0;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 0

    .line 1
    iget-object p1, p0, LVc0;->d:Lbd0;

    iget-object p2, p0, LVc0;->c:LpI0;

    check-cast p2, LrI0;

    invoke-virtual {p2}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbd0;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public tabClosureCommitted(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object p1, p0, LVc0;->d:Lbd0;

    iget-object v0, p0, LVc0;->c:LpI0;

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbd0;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object p1, p0, LVc0;->d:Lbd0;

    iget-object v0, p0, LVc0;->c:LpI0;

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbd0;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method
