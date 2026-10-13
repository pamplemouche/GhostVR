.class public abstract LrI0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LpI0;


# instance fields
.field public a:Ljava/util/List;

.field public b:LhI0;

.field public c:I

.field public final d:LWT;

.field public e:Z

.field public f:Z

.field public final g:LcI0;


# direct methods
.method public constructor <init>(LcI0;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LrI0;->a:Ljava/util/List;

    .line 3
    new-instance v0, LhI0;

    invoke-direct {v0}, LhI0;-><init>()V

    iput-object v0, p0, LrI0;->b:LhI0;

    .line 4
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LrI0;->d:LWT;

    .line 5
    iput-object p1, p0, LrI0;->g:LcI0;

    .line 6
    iput-boolean p2, p0, LrI0;->f:Z

    return-void
.end method


# virtual methods
.method public a(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, LrI0;->a:Ljava/util/List;

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 27
    iget-object v1, p0, LrI0;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LdI0;

    invoke-static {v1, p1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 2

    .line 17
    iget-object v0, p0, LrI0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 18
    sget-object v0, LQH0;->a:LRH0;

    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, LrI0;->a:Ljava/util/List;

    iget v1, p0, LrI0;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    return-object v0
.end method

.method public a(LxI0;)V
    .locals 1

    .line 28
    iget-object v0, p0, LrI0;->d:LWT;

    .line 29
    iget-object v0, v0, LWT;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, LrI0;->d:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 8
    iget-object v0, p0, LrI0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iput-boolean p1, p0, LrI0;->f:Z

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, LrI0;->c(Z)I

    move-result p1

    .line 11
    iget v0, p0, LrI0;->c:I

    if-ne p1, v0, :cond_1

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, LrI0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 13
    iget-object v1, p0, LrI0;->a:Ljava/util/List;

    iget v2, p0, LrI0;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 14
    iput p1, p0, LrI0;->c:I

    .line 15
    iget-object p1, p0, LrI0;->d:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LxI0;

    .line 16
    invoke-interface {v2, v0, v1}, LxI0;->onTabModelSelected(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tabmodel/TabModel;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final varargs a([Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 4

    .line 1
    iget-object v0, p0, LrI0;->a:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2
    iget-boolean v0, p0, LrI0;->f:Z

    invoke-virtual {p0, v0}, LrI0;->c(Z)I

    move-result v0

    iput v0, p0, LrI0;->c:I

    .line 3
    new-instance v0, LhI0;

    iget-object v1, p0, LrI0;->a:Ljava/util/List;

    invoke-direct {v0, v1}, LhI0;-><init>(Ljava/util/List;)V

    iput-object v0, p0, LrI0;->b:LhI0;

    .line 4
    new-instance v0, LqI0;

    invoke-direct {v0, p0}, LqI0;-><init>(LrI0;)V

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 6
    invoke-interface {v3, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(LlI0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, LrI0;->g()V

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, LrI0;->a:Ljava/util/List;

    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 22
    iget-object v2, p0, LrI0;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 23
    invoke-interface {v2, p1}, LdI0;->b(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 24
    invoke-interface {v2, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    invoke-virtual {p0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, LrI0;->c(Z)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, LQH0;->a:LRH0;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, LrI0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    return-object p1
.end method

.method public c()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LrI0;->b()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final c(Z)I
    .locals 2

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, LrI0;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, LrI0;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v1}, LdI0;->a()Z

    move-result v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, LrI0;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, LrI0;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, LrI0;->a:Ljava/util/List;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3
    iget-object v2, p0, LrI0;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v2}, LdI0;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, LrI0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, LrI0;->f:Z

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, LdI0;->a()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, LrI0;->d:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LxI0;

    .line 2
    invoke-interface {v1}, LxI0;->onChange()V

    goto :goto_0

    :cond_0
    return-void
.end method
