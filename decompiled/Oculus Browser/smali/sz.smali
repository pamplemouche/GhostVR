.class public Lsz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldy;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsz;->b:Ljava/util/Set;

    .line 3
    iput-boolean p1, p0, Lsz;->a:Z

    return-void
.end method


# virtual methods
.method public a(LbJ;)V
    .locals 6

    .line 10
    iget-object v0, p1, LbJ;->C:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, LbJ;->m()LaJ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "SessionContentTracker"

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, LbJ;->m()LaJ;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "unsupported operation: %s"

    invoke-static {v3, p1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lsz;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lsz;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_2
    iget-boolean p1, p0, Lsz;->a:Z

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lsz;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_0

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "CLEAR_ALL not supported."

    .line 17
    invoke-static {v3, v0, p1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lfy;)V
    .locals 4

    .line 4
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    new-instance v1, Ley;

    iget v2, p1, Lfy;->a:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "SessionContentTracker"

    invoke-direct {v1, v2, v3}, Ley;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget v0, p1, Lfy;->a:I

    .line 6
    new-instance v1, Ley;

    const-string v2, "contentIds"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 7
    iget-object p1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lsz;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    .line 9
    iget-object v0, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LbJ;

    .line 3
    invoke-virtual {p0, v0}, Lsz;->a(LbJ;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsz;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
