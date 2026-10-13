.class public LSH0;
.super LgI0;
.source "PG"


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LgI0;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModel;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 2
    invoke-interface {v0}, LdI0;->a()Z

    move-result v0

    return v0
.end method

.method public b(Lorg/chromium/chrome/browser/tab/Tab;)I
    .locals 1

    .line 1
    iget-object v0, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 2
    invoke-interface {v0, p1}, LdI0;->b(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    return-void
.end method

.method public c(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 2
    invoke-interface {v0, p1}, LdI0;->c(I)Z

    move-result p1

    return p1
.end method

.method public d(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    return-void
.end method

.method public e(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 2
    invoke-interface {v0}, LdI0;->getCount()I

    move-result v0

    return v0
.end method

.method public getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    iget-object v0, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 2
    invoke-interface {v0, p1}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    return-object p1
.end method

.method public index()I
    .locals 1

    .line 1
    iget-object v0, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 2
    invoke-interface {v0}, LdI0;->index()I

    move-result v0

    return v0
.end method
