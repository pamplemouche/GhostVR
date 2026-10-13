.class public LQC;
.super LSE;
.source "PG"

# interfaces
.implements LtC;


# instance fields
.field public final w:Ljava/util/SortedMap;

.field public final x:LTB;

.field public y:LPE;


# direct methods
.method public constructor <init>(LTB;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LSE;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, LQC;->w:Ljava/util/SortedMap;

    .line 3
    iput-object p1, p0, LQC;->x:LTB;

    .line 4
    invoke-virtual {p0}, LQC;->a()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LmE;

    .line 11
    iget-object v2, p0, LQC;->w:Ljava/util/SortedMap;

    .line 12
    iget v3, v1, LmE;->c:I

    .line 13
    iget-object v4, v1, LmE;->d:LPE;

    .line 14
    iget-object v4, v4, LPE;->w:[B

    .line 15
    iget-object v5, p0, LQC;->x:LTB;

    .line 16
    invoke-static {v3, v4, v5}, LVB;->a(I[BLTB;)LPE;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 19
    invoke-virtual {p0}, LQC;->a()V

    :cond_2
    return-object v0
.end method

.method public final a()V
    .locals 3

    .line 20
    iget-object v0, p0, LQC;->w:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, LQC;->x:LTB;

    .line 21
    check-cast v1, LUB;

    invoke-virtual {v1}, LUB;->b()V

    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LPE;

    .line 23
    iget-object v2, v2, LPE;->w:[B

    .line 24
    invoke-virtual {v1, v2}, LUB;->a([B)V

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, LPE;

    invoke-virtual {v1}, LUB;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, LPE;-><init>([B)V

    .line 26
    iput-object v0, p0, LQC;->y:LPE;

    return-void
.end method

.method public a(LbF;)V
    .locals 2

    .line 27
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<SimpleRegistrationStore: registrations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v0, p0, LQC;->w:Ljava/util/SortedMap;

    .line 29
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    .line 30
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, ", digest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v0, p0, LQC;->y:LPE;

    .line 32
    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 33
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, LmE;

    .line 2
    iget-object v0, p0, LQC;->w:Ljava/util/SortedMap;

    .line 3
    iget v1, p1, LmE;->c:I

    .line 4
    iget-object p1, p1, LmE;->d:LPE;

    .line 5
    iget-object p1, p1, LPE;->w:[B

    .line 6
    iget-object v2, p0, LQC;->x:LTB;

    .line 7
    invoke-static {v1, p1, v2}, LVB;->a(I[BLTB;)LPE;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, LQC;->a()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
