.class public final LhE;
.super LZE;
.source "PG"


# static fields
.field public static final i:LhE;


# instance fields
.field public final c:J

.field public final d:LeE;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Z

.field public final h:LbE;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, LhE;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LhE;-><init>(LeE;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Boolean;LbE;)V

    sput-object v6, LhE;->i:LhE;

    return-void
.end method

.method public constructor <init>(LeE;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Boolean;LbE;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    .line 2
    iput-object p1, p0, LhE;->d:LeE;

    const-string p1, "config_parameter"

    .line 3
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LhE;->e:Ljava/util/List;

    const-string p1, "performance_counter"

    .line 4
    invoke-static {p1, p3}, LZE;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LhE;->f:Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, LhE;->g:Z

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, LhE;->g:Z

    .line 7
    :goto_0
    iput-object p5, p0, LhE;->h:LbE;

    int-to-long p1, p1

    .line 8
    iput-wide p1, p0, LhE;->c:J

    return-void
.end method

.method public static a(LUH;)LhE;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, LUH;->d:[LaI;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-object v3, p0, LUH;->d:[LaI;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 30
    aget-object v3, v3, v1

    invoke-static {v3}, LnE;->a(LaI;)LnE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, p0, LUH;->e:[LaI;

    array-length v1, v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    :goto_1
    iget-object v1, p0, LUH;->e:[LaI;

    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 33
    aget-object v1, v1, v0

    invoke-static {v1}, LnE;->a(LaI;)LnE;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_2
    new-instance v6, LhE;

    iget-object v0, p0, LUH;->c:LRH;

    invoke-static {v0}, LeE;->a(LRH;)LeE;

    move-result-object v1

    iget-object v4, p0, LUH;->f:Ljava/lang/Boolean;

    iget-object p0, p0, LUH;->g:LOH;

    .line 35
    invoke-static {p0}, LbE;->a(LOH;)LbE;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LhE;-><init>(LeE;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Boolean;LbE;)V

    return-object v6
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 19
    iget-wide v0, p0, LhE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 20
    iget-object v1, p0, LhE;->d:LeE;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget-object v1, p0, LhE;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 23
    iget-object v0, p0, LhE;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 24
    invoke-virtual {p0}, LhE;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget-boolean v1, p0, LhE;->g:Z

    invoke-static {v1}, LZE;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_1
    iget-object v1, p0, LhE;->h:LbE;

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public a(LbF;)V
    .locals 3

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<InfoMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, LhE;->d:LeE;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, LhE;->d:LeE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 5
    :cond_0
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " config_parameter=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, LhE;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    .line 7
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v2, " performance_counter=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, LhE;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    .line 10
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, LhE;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " server_registration_summary_requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-boolean v0, p0, LhE;->g:Z

    .line 14
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    :cond_1
    iget-object v0, p0, LhE;->h:LbE;

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " client_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v0, p0, LhE;->h:LbE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    :cond_2
    const/16 v0, 0x3e

    .line 18
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LhE;->c:J

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

.method public d()LUH;
    .locals 6

    .line 1
    new-instance v0, LUH;

    invoke-direct {v0}, LUH;-><init>()V

    .line 2
    iget-object v1, p0, LhE;->d:LeE;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    .line 3
    new-instance v3, LRH;

    invoke-direct {v3}, LRH;-><init>()V

    .line 4
    iget-object v4, v1, LeE;->c:LDE;

    invoke-virtual {v4}, LDE;->c()LqI;

    move-result-object v4

    iput-object v4, v3, LRH;->c:LqI;

    .line 5
    iget-object v4, v1, LeE;->d:Ljava/lang/String;

    iput-object v4, v3, LRH;->d:Ljava/lang/String;

    .line 6
    iget-object v4, v1, LeE;->e:Ljava/lang/String;

    iput-object v4, v3, LRH;->e:Ljava/lang/String;

    .line 7
    iget-object v1, v1, LeE;->f:Ljava/lang/String;

    iput-object v1, v3, LRH;->f:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    throw v2

    :cond_1
    move-object v3, v2

    .line 9
    :goto_0
    iput-object v3, v0, LUH;->c:LRH;

    .line 10
    iget-object v1, p0, LhE;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [LaI;

    iput-object v1, v0, LUH;->d:[LaI;

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 11
    :goto_1
    iget-object v4, v0, LUH;->d:[LaI;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 12
    iget-object v5, p0, LhE;->e:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LnE;

    invoke-virtual {v5}, LnE;->e()LaI;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_2
    iget-object v3, p0, LhE;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [LaI;

    iput-object v3, v0, LUH;->e:[LaI;

    .line 14
    :goto_2
    iget-object v3, v0, LUH;->e:[LaI;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 15
    iget-object v4, p0, LhE;->f:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LnE;

    invoke-virtual {v4}, LnE;->e()LaI;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p0}, LhE;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, LhE;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    iput-object v1, v0, LUH;->f:Ljava/lang/Boolean;

    .line 17
    iget-object v1, p0, LhE;->h:LbE;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, LbE;->n()LOH;

    move-result-object v2

    :cond_5
    iput-object v2, v0, LUH;->g:LOH;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LhE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LhE;

    .line 3
    iget-wide v3, p0, LhE;->c:J

    iget-wide v5, p1, LhE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-object v1, p0, LhE;->d:LeE;

    iget-object v3, p1, LhE;->d:LeE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LhE;->e:Ljava/util/List;

    iget-object v3, p1, LhE;->e:Ljava/util/List;

    .line 5
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LhE;->f:Ljava/util/List;

    iget-object v3, p1, LhE;->f:Ljava/util/List;

    .line 6
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, LhE;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, LhE;->g:Z

    iget-boolean v3, p1, LhE;->g:Z

    if-ne v1, v3, :cond_3

    :cond_2
    iget-object v1, p0, LhE;->h:LbE;

    iget-object p1, p1, LhE;->h:LbE;

    .line 8
    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
