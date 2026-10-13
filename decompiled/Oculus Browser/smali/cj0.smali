.class public Lcj0;
.super Lcb;
.source "PG"


# instance fields
.field public final a:Ldj0;

.field public final b:Lbb;

.field public c:Ljava/util/Set;

.field public d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ldj0;Lbb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcb;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcj0;->c:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcj0;->d:Ljava/util/List;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iput-object p3, p0, Lcj0;->a:Ldj0;

    .line 6
    iput-object p4, p0, Lcj0;->b:Lbb;

    .line 7
    invoke-virtual {p0, p1}, Lcj0;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 8
    iget-object v0, p0, Lcj0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcj0;->a:Ldj0;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcj0;->d:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v2, LIj0;

    invoke-virtual {v2, v1, v3}, LIj0;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcj0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcj0;->a:Ldj0;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcj0;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, LIj0;

    invoke-virtual {v0, p1, v1}, LIj0;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Lrb;Lqb;)V
    .locals 0

    if-eqz p2, :cond_2

    .line 3
    iget-object p1, p0, Lcj0;->b:Lbb;

    invoke-virtual {p2, p1}, Lqb;->a(Lbb;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Luj0;->a(Lqb;)Luj0;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcj0;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p2, p0, Lcj0;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Lcj0;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lrb;Lqb;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcj0;->b:Lbb;

    invoke-virtual {p2, v0}, Lqb;->a(Lbb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcj0;->a(Lrb;Lqb;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcj0;->c(Lrb;Lqb;)V

    :goto_0
    return-void
.end method

.method public c(Lrb;Lqb;)V
    .locals 0

    .line 1
    invoke-static {p2}, Luj0;->a(Lqb;)Luj0;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcj0;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcj0;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcj0;->a()V

    return-void
.end method
