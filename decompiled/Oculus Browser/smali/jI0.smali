.class public LjI0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LdI0;


# instance fields
.field public final a:Ljava/util/List;

.field public final synthetic b:LkI0;


# direct methods
.method public synthetic constructor <init>(LkI0;LiI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LjI0;->b:LkI0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LjI0;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, LjI0;->b:LkI0;

    .line 2
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z

    return v0
.end method

.method public b(Lorg/chromium/chrome/browser/tab/Tab;)I
    .locals 1

    .line 1
    iget-object v0, p0, LjI0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 2

    .line 2
    iget-object v0, p0, LjI0;->b:LkI0;

    invoke-virtual {v0}, LkI0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LjI0;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, LjI0;->b:LkI0;

    invoke-virtual {v1}, LkI0;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, LjI0;->b:LkI0;

    invoke-virtual {v0, p1}, LkI0;->c(I)Z

    move-result p1

    return p1
.end method

.method public e(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    .line 1
    iget-object v0, p0, LjI0;->b:LkI0;

    invoke-virtual {v0}, LkI0;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, LjI0;->b:LkI0;

    invoke-static {v0, p1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-static {p0, p1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    return-object p1
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, LjI0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, LjI0;->b:LkI0;

    invoke-virtual {v0}, LkI0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, LjI0;->b:LkI0;

    invoke-virtual {v1}, LkI0;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, LjI0;->a:Ljava/util/List;

    iget-object v2, p0, LjI0;->b:LkI0;

    invoke-virtual {v2, v0}, LkI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LjI0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, LjI0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LjI0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/tab/Tab;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public index()I
    .locals 3

    .line 1
    iget-object v0, p0, LjI0;->b:LkI0;

    .line 2
    iget v1, v0, LkI0;->s:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    iget-object v1, p0, LjI0;->a:Ljava/util/List;

    invoke-static {v0}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, LjI0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method
