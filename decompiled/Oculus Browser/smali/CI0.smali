.class public LCI0;
.super LzI0;
.source "PG"


# instance fields
.field public final synthetic c:LDI0;


# direct methods
.method public constructor <init>(LDI0;LpI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LCI0;->c:LDI0;

    invoke-direct {p0, p2}, LzI0;-><init>(LpI0;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, LCI0;->c:LDI0;

    .line 3
    iget-object v1, v1, LDI0;->mTabModelSelector:LpI0;

    .line 4
    check-cast v1, LrI0;

    .line 5
    iget-object v1, v1, LrI0;->a:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 8
    invoke-interface {v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->e()LdI0;

    move-result-object v4

    const/4 v5, 0x0

    .line 9
    :goto_1
    invoke-interface {v4}, LdI0;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 10
    invoke-interface {v4, v5}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v6

    .line 11
    iget-object v7, p0, LCI0;->c:LDI0;

    .line 12
    iget-object v8, v6, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v8, v7}, LWT;->a(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->d()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, LBI0;

    invoke-direct {v2, p0, v0}, LBI0;-><init>(LCI0;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 1

    .line 1
    iget-object p2, p0, LCI0;->c:LDI0;

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, p2}, LWT;->a(Ljava/lang/Object;)Z

    .line 3
    iget-object p2, p0, LCI0;->c:LDI0;

    invoke-virtual {p2, p1}, LDI0;->onTabRegistered(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public didCloseTab(IZ)V
    .locals 1

    .line 1
    iget-object p2, p0, LCI0;->c:LDI0;

    .line 2
    iget-object p2, p2, LDI0;->mTabsToClose:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, LCI0;->c:LDI0;

    .line 5
    iget-object v0, v0, LDI0;->mTabsToClose:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    iget-object p1, p0, LCI0;->c:LDI0;

    invoke-virtual {p1, p2}, LDI0;->onTabUnregistered(Lorg/chromium/chrome/browser/tab/Tab;)V

    :cond_0
    return-void
.end method

.method public tabClosureUndone(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, LCI0;->c:LDI0;

    .line 2
    iget-object v0, v0, LDI0;->mTabsToClose:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LAI0;

    invoke-direct {v1, p0, p1}, LAI0;-><init>(LCI0;Lorg/chromium/chrome/browser/tab/Tab;)V

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 3
    iget-object v0, p0, LCI0;->c:LDI0;

    invoke-virtual {v0, p1}, LDI0;->onTabUnregistered(Lorg/chromium/chrome/browser/tab/Tab;)V

    :cond_0
    return-void
.end method

.method public willCloseTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .line 1
    iget-object p2, p0, LCI0;->c:LDI0;

    .line 2
    iget-object p2, p2, LDI0;->mTabsToClose:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
