.class public final LDD;
.super LZE;
.source "PG"


# instance fields
.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "registrations"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LDD;->c:Ljava/util/List;

    const-string p1, "unregistrations"

    .line 3
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LDD;->d:Ljava/util/List;

    .line 4
    iget-object p2, p0, LDD;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    iget-object p2, p0, LDD;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v0, p1}, LZE;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {}, LZE;->b()V

    throw v1
.end method

.method public static a(LlH;)LDD;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LlH;->c:[LZH;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 12
    :goto_0
    iget-object v3, p0, LlH;->c:[LZH;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 13
    aget-object v3, v3, v2

    invoke-static {v3}, LmE;->a(LZH;)LmE;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, LlH;->d:[LZH;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    :goto_1
    iget-object v3, p0, LlH;->d:[LZH;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 16
    aget-object v3, v3, v1

    invoke-static {v3}, LmE;->a(LZH;)LmE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 17
    :cond_2
    new-instance p0, LDD;

    invoke-direct {p0, v0, v2}, LDD;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 9
    iget-object v0, p0, LDD;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, LDD;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public a(LbF;)V
    .locals 3

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<RegistrationDowncall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registrations=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LDD;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    .line 4
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v2, " unregistrations=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, LDD;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    .line 7
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    .line 8
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LDD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LDD;

    .line 3
    iget-object v1, p0, LDD;->c:Ljava/util/List;

    iget-object v3, p1, LDD;->c:Ljava/util/List;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LDD;->d:Ljava/util/List;

    iget-object p1, p1, LDD;->d:Ljava/util/List;

    .line 4
    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
