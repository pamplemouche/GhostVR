.class public final LMj;
.super LAj;
.source "PG"


# instance fields
.field public final synthetic a:LOj;


# direct methods
.method public synthetic constructor <init>(LOj;Lal;)V
    .locals 0

    .line 1
    iput-object p1, p0, LMj;->a:LOj;

    invoke-direct {p0}, LAj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, LMj;->a:LOj;

    .line 2
    iget-object v1, v1, LOj;->e:Ljava/util/Set;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAj;

    .line 5
    invoke-virtual {v1}, LAj;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 11
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, LMj;->a:LOj;

    .line 12
    iget-object v1, v1, LOj;->e:Ljava/util/Set;

    .line 13
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAj;

    .line 15
    invoke-virtual {v1, p1}, LAj;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/cast/ApplicationMetadata;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, LMj;->a:LOj;

    .line 7
    iget-object v1, v1, LOj;->e:Ljava/util/Set;

    .line 8
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAj;

    .line 10
    invoke-virtual {v1, p1}, LAj;->a(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 8
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, LMj;->a:LOj;

    .line 9
    iget-object v1, v1, LOj;->e:Ljava/util/Set;

    .line 10
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAj;

    .line 12
    invoke-virtual {v1}, LAj;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LMj;->a:LOj;

    invoke-static {v0, p1}, LOj;->a(LOj;I)V

    .line 2
    iget-object v0, p0, LMj;->a:LOj;

    invoke-virtual {v0, p1}, LSj;->a(I)V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, LMj;->a:LOj;

    .line 4
    iget-object v1, v1, LOj;->e:Ljava/util/Set;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAj;

    .line 7
    invoke-virtual {v1, p1}, LAj;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, LMj;->a:LOj;

    .line 2
    iget-object v1, v1, LOj;->e:Ljava/util/Set;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAj;

    .line 5
    invoke-virtual {v1, p1}, LAj;->c(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
