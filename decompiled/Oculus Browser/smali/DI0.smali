.class public abstract LDI0;
.super LSG0;
.source "PG"


# instance fields
.field public final mTabModelObserver:LzI0;

.field public final mTabModelSelector:LpI0;

.field public final mTabsToClose:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(LpI0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LDI0;->mTabsToClose:Landroid/util/SparseArray;

    .line 3
    iput-object p1, p0, LDI0;->mTabModelSelector:LpI0;

    .line 4
    new-instance v0, LCI0;

    invoke-direct {v0, p0, p1}, LCI0;-><init>(LDI0;LpI0;)V

    iput-object v0, p0, LDI0;->mTabModelObserver:LzI0;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 7

    .line 1
    iget-object v0, p0, LDI0;->mTabModelObserver:LzI0;

    invoke-virtual {v0}, LzI0;->destroy()V

    .line 2
    iget-object v0, p0, LDI0;->mTabModelSelector:LpI0;

    check-cast v0, LrI0;

    .line 3
    iget-object v0, v0, LrI0;->a:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 6
    iget-object v4, p0, LDI0;->mTabModelObserver:LzI0;

    invoke-interface {v3, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(LlI0;)V

    .line 7
    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->e()LdI0;

    move-result-object v3

    const/4 v4, 0x0

    .line 8
    :goto_1
    invoke-interface {v3}, LdI0;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 9
    invoke-interface {v3, v4}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    .line 10
    iget-object v6, v5, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v6, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0, v5}, LDI0;->onTabUnregistered(Lorg/chromium/chrome/browser/tab/Tab;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTabRegistered(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    return-void
.end method

.method public onTabUnregistered(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    return-void
.end method
