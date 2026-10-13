.class public final LvE;
.super LZE;
.source "PG"


# instance fields
.field public final c:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LvE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LvE;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "registered_object"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LvE;->c:Ljava/util/List;

    return-void
.end method

.method public static a(LiI;)LvE;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LiI;->c:[LZH;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, LiI;->c:[LZH;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 9
    aget-object v2, v2, v1

    invoke-static {v2}, LmE;->a(LZH;)LmE;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p0, LvE;

    invoke-direct {p0, v0}, LvE;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 6
    iget-object v0, p0, LvE;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<RegistrationSubtree:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registered_object=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LvE;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    const/16 v0, 0x5d

    .line 4
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    .line 5
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()LiI;
    .locals 4

    .line 1
    new-instance v0, LiI;

    invoke-direct {v0}, LiI;-><init>()V

    .line 2
    iget-object v1, p0, LvE;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [LZH;

    iput-object v1, v0, LiI;->c:[LZH;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, v0, LiI;->c:[LZH;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4
    iget-object v3, p0, LvE;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LmE;

    invoke-virtual {v3}, LmE;->c()LZH;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, LvE;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, LvE;

    .line 3
    iget-object v0, p0, LvE;->c:Ljava/util/List;

    iget-object p1, p1, LvE;->c:Ljava/util/List;

    invoke-static {v0, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
