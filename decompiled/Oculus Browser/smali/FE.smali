.class public final LFE;
.super LZE;
.source "PG"


# static fields
.field public static final j:LFE;


# instance fields
.field public final c:J

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:LjE;

.field public final i:LhE;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, LFE;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LFE;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;LjE;LhE;)V

    sput-object v7, LFE;->j:LFE;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;LjE;LhE;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "registration"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LFE;->d:Ljava/util/List;

    const-string p1, "unregistration"

    .line 3
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LFE;->e:Ljava/util/List;

    const-string p1, "acknowledgement"

    .line 4
    invoke-static {p1, p3}, LZE;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LFE;->f:Ljava/util/List;

    const-string p1, "registration_subtree"

    .line 5
    invoke-static {p1, p4}, LZE;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LFE;->g:Ljava/util/List;

    .line 6
    iput-object p5, p0, LFE;->h:LjE;

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    .line 7
    iput-object p6, p0, LFE;->i:LhE;

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, LhE;->i:LhE;

    iput-object p1, p0, LFE;->i:LhE;

    const/4 p1, 0x0

    :goto_0
    int-to-long p1, p1

    .line 9
    iput-wide p1, p0, LFE;->c:J

    return-void
.end method

.method public static a(LBH;)LFE;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, LBH;->c:[LZH;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 11
    :goto_0
    iget-object v3, p0, LBH;->c:[LZH;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 12
    aget-object v3, v3, v2

    invoke-static {v3}, LmE;->a(LZH;)LmE;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, LBH;->d:[LZH;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 14
    :goto_1
    iget-object v4, p0, LBH;->d:[LZH;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 15
    aget-object v4, v4, v3

    invoke-static {v4}, LmE;->a(LZH;)LmE;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, LBH;->e:[LYH;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 17
    :goto_2
    iget-object v5, p0, LBH;->e:[LYH;

    array-length v6, v5

    if-ge v4, v6, :cond_3

    .line 18
    aget-object v5, v5, v4

    invoke-static {v5}, LlE;->a(LYH;)LlE;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 19
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, LBH;->f:[LiI;

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    :goto_3
    iget-object v5, p0, LBH;->f:[LiI;

    array-length v6, v5

    if-ge v0, v6, :cond_4

    .line 21
    aget-object v5, v5, v0

    invoke-static {v5}, LvE;->a(LiI;)LvE;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 22
    :cond_4
    new-instance v7, LFE;

    iget-object v0, p0, LBH;->g:LWH;

    .line 23
    invoke-static {v0}, LjE;->a(LWH;)LjE;

    move-result-object v5

    iget-object p0, p0, LBH;->h:LUH;

    .line 24
    invoke-static {p0}, LhE;->a(LUH;)LhE;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LFE;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;LjE;LhE;)V

    return-object v7
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-wide v0, p0, LFE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, LFE;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, LFE;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, LFE;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, LFE;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, LFE;->h:LjE;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_0
    invoke-virtual {p0}, LFE;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, LFE;->i:LhE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public a(LbF;)V
    .locals 3

    .line 25
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<BatcherState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registration=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v0, p0, LFE;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    .line 28
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v2, " unregistration=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v0, p0, LFE;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    .line 31
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v2, " acknowledgement=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v0, p0, LFE;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    .line 34
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v2, " registration_subtree=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v0, p0, LFE;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    .line 37
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    iget-object v0, p0, LFE;->h:LjE;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " initialize_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v0, p0, LFE;->h:LjE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 41
    :cond_0
    invoke-virtual {p0}, LFE;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " info_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v0, p0, LFE;->i:LhE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    :cond_1
    const/16 v0, 0x3e

    .line 44
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LFE;->c:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LFE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LFE;

    .line 3
    iget-wide v3, p0, LFE;->c:J

    iget-wide v5, p1, LFE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, LFE;->d:Ljava/util/List;

    iget-object v3, p1, LFE;->d:Ljava/util/List;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LFE;->e:Ljava/util/List;

    iget-object v3, p1, LFE;->e:Ljava/util/List;

    .line 5
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LFE;->f:Ljava/util/List;

    iget-object v3, p1, LFE;->f:Ljava/util/List;

    .line 6
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LFE;->g:Ljava/util/List;

    iget-object v3, p1, LFE;->g:Ljava/util/List;

    .line 7
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LFE;->h:LjE;

    iget-object v3, p1, LFE;->h:LjE;

    .line 8
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, LFE;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LFE;->i:LhE;

    iget-object p1, p1, LFE;->i:LhE;

    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method
