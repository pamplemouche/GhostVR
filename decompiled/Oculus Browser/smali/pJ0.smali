.class public LpJ0;
.super LgI0;
.source "PG"


# static fields
.field public static m:Landroid/content/SharedPreferences;


# instance fields
.field public e:LWT;

.field public f:Ljava/util/Map;

.field public g:Ljava/util/Map;

.field public h:I

.field public i:I

.field public j:Lorg/chromium/chrome/browser/tab/Tab;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LgI0;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModel;)V

    .line 2
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, LpJ0;->e:LWT;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LpJ0;->f:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LpJ0;->g:Ljava/util/Map;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, LpJ0;->h:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, LpJ0;->k:Z

    .line 7
    new-instance p1, LmJ0;

    invoke-direct {p1, p0}, LmJ0;-><init>(LpJ0;)V

    .line 8
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 6

    .line 3
    iget v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 4
    iget-boolean v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 5
    invoke-virtual {p0}, LpJ0;->a()Z

    move-result v2

    if-ne v1, v2, :cond_8

    iget-object v1, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, LpJ0;->g:Ljava/util/Map;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LoJ0;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, LoJ0;->b(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7
    iget-object v1, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LoJ0;

    .line 8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    .line 9
    iget v2, v1, LoJ0;->b:I

    const/4 v3, 0x1

    if-ne v2, p1, :cond_3

    .line 10
    iget-object v2, v1, LoJ0;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, v1, LoJ0;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v1, LoJ0;->a:Ljava/util/Set;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_1

    add-int/2addr v5, v3

    .line 13
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    sub-int/2addr v5, v3

    .line 14
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eq v2, v4, :cond_3

    .line 15
    iput v2, v1, LoJ0;->b:I

    .line 16
    :cond_3
    iget-object v2, v1, LoJ0;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v1}, LoJ0;->a()I

    move-result p1

    if-ne p1, v3, :cond_4

    iget p1, p0, LpJ0;->i:I

    sub-int/2addr p1, v3

    iput p1, p0, LpJ0;->i:I

    .line 18
    :cond_4
    invoke-virtual {v1}, LoJ0;->a()I

    move-result p1

    if-nez p1, :cond_7

    .line 19
    iget-object p1, p0, LpJ0;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 20
    iget-object v1, p0, LpJ0;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 22
    iget-object v3, p0, LpJ0;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_5

    .line 23
    iget-object v4, p0, LpJ0;->f:Ljava/util/Map;

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 24
    :cond_6
    iget-object p1, p0, LpJ0;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p1, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, LlJ0;

    invoke-direct {v1, p0, v0}, LlJ0;-><init>(LpJ0;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    return-void

    .line 27
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to close tab in the wrong model"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .locals 2

    if-eqz p1, :cond_1

    .line 6
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 7
    invoke-virtual {p0}, LpJ0;->a()Z

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, LpJ0;->f:Ljava/util/Map;

    .line 9
    iget p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public b()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, LpJ0;->f(I)V

    .line 2
    iget-object v1, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 3
    invoke-interface {v1}, LdI0;->index()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 4
    iput v0, p0, LpJ0;->h:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1}, LdI0;->index()I

    move-result v0

    invoke-interface {v1, v0}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, LpJ0;->e(Lorg/chromium/chrome/browser/tab/Tab;)V

    :goto_0
    return-void
.end method

.method public c(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, LpJ0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

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
    .locals 4

    .line 1
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 2
    invoke-virtual {p0}, LpJ0;->a()Z

    move-result v1

    if-ne v0, v1, :cond_5

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->h()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, LpJ0;->l:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 5
    iget v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->k:I

    .line 6
    invoke-static {v0, v1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 8
    iget v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iput v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 10
    iput-boolean v2, p1, Lorg/chromium/chrome/browser/tab/Tab;->p:Z

    .line 11
    iget-object v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LpH0;

    .line 12
    invoke-interface {v3, p1, v0}, LpH0;->onRootIdChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    iget v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 14
    iget-object v1, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LoJ0;

    invoke-virtual {v1}, LoJ0;->a()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 16
    iget v1, p0, LpJ0;->i:I

    add-int/2addr v1, v2

    iput v1, p0, LpJ0;->i:I

    .line 17
    iget-boolean v1, p0, LpJ0;->k:Z

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->h()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const-string v1, "TabGroup.Created.OpenInNewTab"

    .line 19
    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    .line 20
    :cond_2
    iget-object v1, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LoJ0;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, LoJ0;->a(I)V

    goto :goto_2

    .line 21
    :cond_3
    new-instance v1, LoJ0;

    .line 22
    iget v2, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 23
    invoke-direct {v1, p0, v2}, LoJ0;-><init>(LpJ0;I)V

    .line 24
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, LoJ0;->a(I)V

    .line 25
    iget-object p1, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, LpJ0;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, LpJ0;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :goto_2
    iget-object p1, p0, LpJ0;->j:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, LpJ0;->j:Lorg/chromium/chrome/browser/tab/Tab;

    .line 29
    invoke-virtual {p0, p1}, LpJ0;->e(Lorg/chromium/chrome/browser/tab/Tab;)V

    :cond_4
    return-void

    .line 30
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to open tab in the wrong model"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public didMoveTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 8

    .line 1
    iget-boolean v0, p0, LgI0;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, LpJ0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 2
    :cond_2
    iget-object v0, p0, LpJ0;->g:Ljava/util/Map;

    .line 3
    iget v3, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 5
    :cond_3
    iget-object v0, p0, LpJ0;->g:Ljava/util/Map;

    .line 6
    iget v3, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LoJ0;

    .line 8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, LoJ0;->b(I)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 9
    :goto_2
    iget-object v3, p0, LpJ0;->g:Ljava/util/Map;

    .line 10
    iget v4, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_6

    .line 12
    iget v4, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    goto :goto_5

    .line 13
    :cond_6
    iget-object v4, p0, LpJ0;->g:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 14
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 15
    iget-object v6, p0, LpJ0;->g:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LoJ0;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, LoJ0;->b(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 16
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_5

    :cond_8
    const/4 v4, -0x1

    .line 17
    :goto_5
    iget-object v5, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LoJ0;

    if-eqz v3, :cond_9

    .line 18
    invoke-virtual {p0}, LpJ0;->h()V

    .line 19
    iget-object v0, p0, LpJ0;->f:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 20
    iget-object v1, p0, LpJ0;->e:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LnJ0;

    .line 21
    invoke-interface {v2, p1, v0}, LnJ0;->b(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_6

    :cond_9
    if-eqz v0, :cond_b

    .line 22
    invoke-virtual {p0}, LpJ0;->h()V

    if-eqz v5, :cond_a

    .line 23
    invoke-virtual {v5}, LoJ0;->a()I

    move-result v0

    if-eq v0, v2, :cond_a

    return-void

    .line 24
    :cond_a
    iget-object v0, p0, LpJ0;->g:Ljava/util/Map;

    .line 25
    iget v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LoJ0;

    .line 27
    iget-object v1, p0, LpJ0;->e:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LnJ0;

    .line 28
    iget v3, v0, LoJ0;->b:I

    .line 29
    invoke-interface {v2, p1, v3}, LnJ0;->a(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_7

    .line 30
    :cond_b
    invoke-virtual {p0}, LpJ0;->b()V

    .line 31
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 32
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_8
    if-gt v0, v3, :cond_d

    .line 33
    iget-object v4, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 34
    invoke-interface {v4, v0}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    .line 35
    iget v4, v4, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    iget v5, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    if-eq v4, v5, :cond_c

    const/4 v0, 0x0

    goto :goto_9

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_e

    .line 36
    iget-object v0, p0, LpJ0;->e:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LnJ0;

    .line 37
    invoke-interface {v1, p1, p3, p2}, LnJ0;->a(Lorg/chromium/chrome/browser/tab/Tab;II)V

    goto :goto_a

    .line 38
    :cond_e
    iget-object v0, p0, LpJ0;->g:Ljava/util/Map;

    .line 39
    iget v3, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LoJ0;

    .line 41
    invoke-virtual {v0}, LoJ0;->a()I

    move-result v0

    sub-int v0, p2, v0

    add-int/2addr v0, v2

    if-gez v0, :cond_f

    goto :goto_c

    :cond_f
    move v3, p2

    :goto_b
    if-lt v3, v0, :cond_11

    .line 42
    iget-object v4, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 43
    invoke-interface {v4, v3}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    .line 44
    iget v4, v4, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    iget v5, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    if-eq v4, v5, :cond_10

    goto :goto_c

    :cond_10
    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    :cond_11
    const/4 v1, 0x1

    :goto_c
    if-nez v1, :cond_12

    return-void

    .line 45
    :cond_12
    iget-object v0, p0, LpJ0;->e:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LnJ0;

    .line 46
    invoke-interface {v1, p1, p3, p2}, LnJ0;->b(Lorg/chromium/chrome/browser/tab/Tab;II)V

    goto :goto_d

    .line 47
    :cond_13
    invoke-super {p0, p1, p2, p3}, LgI0;->didMoveTab(Lorg/chromium/chrome/browser/tab/Tab;II)V

    return-void
.end method

.method public e(I)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 2
    invoke-static {v0, p1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, LgI0;->e(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget p1, v0, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 5
    iget-object v0, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LoJ0;

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 6
    invoke-super {p0, p1}, LgI0;->e(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, LoJ0;->a:Ljava/util/Set;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 10
    iget-object v2, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .line 13
    iget v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 14
    iget-object v1, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 15
    iput-object p1, p0, LpJ0;->j:Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LoJ0;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    .line 17
    iput p1, v1, LoJ0;->b:I

    .line 18
    iget-object p1, p0, LpJ0;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LpJ0;->h:I

    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 12
    iget-object v0, p0, LpJ0;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 13
    iget-object v0, p0, LpJ0;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, LpJ0;->i:I

    return-void
.end method

.method public final f(I)V
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1
    iget-object v2, p0, LpJ0;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2
    :cond_1
    iget-object v2, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 3
    :goto_1
    invoke-interface {v2}, LdI0;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 4
    invoke-interface {v2, v1}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 5
    iget p1, v3, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 6
    iget-object v4, p0, LpJ0;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    iget-object v4, p0, LpJ0;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, LpJ0;->f:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    iget-object v4, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LoJ0;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    .line 9
    iget-object v5, v4, LoJ0;->a:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    iget-object v5, v4, LoJ0;->a:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    iget-object v4, v4, LoJ0;->a:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, LpJ0;->j:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LpJ0;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    .line 1
    invoke-virtual {p0}, LpJ0;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v1, p0, LpJ0;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4
    iget-object v4, p0, LpJ0;->f:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    if-ne p1, v3, :cond_3

    return-object v0

    .line 6
    :cond_3
    iget-object v0, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 7
    iget-object v1, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LoJ0;

    .line 8
    iget p1, p1, LoJ0;->b:I

    .line 9
    invoke-static {v0, p1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method public h()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LpJ0;->k:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, LpJ0;->l:Z

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v3, p0, LpJ0;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LoJ0;

    .line 6
    iget v4, v4, LoJ0;->b:I

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 8
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, LgI0;->f()V

    .line 10
    iget-object v3, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    const/4 v4, 0x0

    .line 11
    :goto_1
    invoke-interface {v3}, LdI0;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 12
    invoke-interface {v3, v4}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    .line 13
    invoke-virtual {p0, v5}, LgI0;->d(Lorg/chromium/chrome/browser/tab/Tab;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14
    :cond_1
    iget-object v3, p0, LpJ0;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 17
    iget-object v6, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LoJ0;

    invoke-virtual {v6, v5}, LoJ0;->b(I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 18
    :cond_3
    iget-object v6, p0, LpJ0;->g:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LoJ0;

    .line 19
    iput v5, v4, LoJ0;->b:I

    goto :goto_2

    .line 20
    :cond_4
    iget-object v2, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 21
    invoke-interface {v2}, LdI0;->index()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 22
    iput v4, p0, LpJ0;->h:I

    goto :goto_3

    .line 23
    :cond_5
    invoke-interface {v2}, LdI0;->index()I

    move-result v3

    invoke-interface {v2, v3}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {p0, v2}, LpJ0;->e(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 24
    :goto_3
    iput-boolean v1, p0, LpJ0;->k:Z

    .line 25
    iput-boolean v0, p0, LpJ0;->l:Z

    return-void
.end method

.method public index()I
    .locals 1

    .line 1
    iget v0, p0, LpJ0;->h:I

    return v0
.end method
