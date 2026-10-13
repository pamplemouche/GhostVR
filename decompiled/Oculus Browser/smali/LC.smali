.class public LLC;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LeE;

.field public final b:LZB;

.field public final c:LdC;

.field public final d:LbC;

.field public final e:LJC;

.field public final f:LHC;

.field public g:I

.field public h:J

.field public i:J

.field public final j:LWC;

.field public final k:I


# direct methods
.method public constructor <init>(LfC;LWC;ILjava/lang/String;LJC;LHE;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, LLC;->g:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, LLC;->h:J

    .line 4
    iput-wide v1, p0, LLC;->i:J

    .line 5
    move-object v1, p1

    check-cast v1, LsC;

    .line 6
    iget-object v2, v1, LsC;->b:LZB;

    .line 7
    iput-object v2, p0, LLC;->b:LZB;

    .line 8
    iput-object p2, p0, LLC;->j:LWC;

    .line 9
    iget-object v2, v1, LsC;->a:LdC;

    .line 10
    iput-object v2, p0, LLC;->c:LdC;

    .line 11
    iget-object v2, v1, LsC;->c:LbC;

    .line 12
    iput-object v2, p0, LLC;->d:LbC;

    .line 13
    iput-object p5, p0, LLC;->e:LJC;

    .line 14
    iget-object p5, v1, LsC;->f:Ljava/lang/String;

    .line 15
    sget-object v2, LZD;->a:LDE;

    .line 16
    new-instance v3, LeE;

    const-string v4, "Java"

    invoke-direct {v3, v2, p5, v4, p4}, LeE;-><init>(LDE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-object v3, p0, LLC;->a:LeE;

    .line 18
    iput p3, p0, LLC;->k:I

    const/4 p3, 0x2

    if-nez p6, :cond_0

    .line 19
    new-instance p5, LHC;

    invoke-direct {p5, p1, p2}, LHC;-><init>(LfC;LWC;)V

    iput-object p5, p0, LLC;->f:LHC;

    goto/16 :goto_4

    .line 20
    :cond_0
    new-instance p5, LHC;

    .line 21
    iget-object v2, p6, LHE;->g:LFE;

    .line 22
    invoke-direct {p5, p1, p2}, LHC;-><init>(LfC;LWC;)V

    .line 23
    iget-object p1, v2, LFE;->d:Ljava/util/List;

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LmE;

    .line 25
    iget-object v3, p5, LHC;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, v2, LFE;->e:Ljava/util/List;

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LmE;

    .line 28
    iget-object v3, p5, LHC;->c:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 29
    :cond_2
    iget-object p1, v2, LFE;->f:Ljava/util/List;

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LlE;

    .line 31
    iget-object v3, p5, LHC;->d:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 32
    :cond_3
    iget-object p1, v2, LFE;->g:Ljava/util/List;

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LvE;

    .line 34
    iget-object v3, p5, LHC;->e:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 35
    :cond_4
    iget-object p1, v2, LFE;->h:LjE;

    .line 36
    iput-object p1, p5, LHC;->f:LjE;

    .line 37
    invoke-virtual {v2}, LFE;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 38
    iget-object p1, v2, LFE;->i:LhE;

    .line 39
    iput-object p1, p5, LHC;->g:LhE;

    .line 40
    :cond_5
    iput-object p5, p0, LLC;->f:LHC;

    .line 41
    iget p1, p6, LHE;->d:I

    .line 42
    iput p1, p0, LLC;->g:I

    .line 43
    iget-wide p1, p6, LHE;->e:J

    .line 44
    iput-wide p1, p0, LLC;->h:J

    .line 45
    iget-wide p1, p6, LHE;->f:J

    .line 46
    iput-wide p1, p0, LLC;->i:J

    .line 47
    :goto_4
    iget-object p1, p0, LLC;->b:LZB;

    new-array p2, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p4, p2, p3

    .line 48
    iget-object p3, v1, LsC;->f:Ljava/lang/String;

    aput-object p3, p2, v0

    .line 49
    check-cast p1, LgC;

    const-string p3, "Created protocol handler for application %s, platform %s"

    invoke-virtual {p1, p3, p2}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()LcE;
    .locals 11

    .line 1
    iget-object v0, p0, LLC;->c:LdC;

    invoke-interface {v0}, LdC;->b()Z

    move-result v0

    const-string v1, "Not on internal thread"

    invoke-static {v0, v1}, LWE;->a(ZLjava/lang/Object;)V

    .line 2
    sget-object v3, LZD;->b:LpE;

    iget-object v0, p0, LLC;->e:LJC;

    .line 3
    check-cast v0, LEC;

    invoke-virtual {v0}, LEC;->a()LPE;

    move-result-object v4

    iget-object v0, p0, LLC;->e:LJC;

    check-cast v0, LEC;

    .line 4
    iget-object v0, v0, LEC;->D:LOC;

    invoke-virtual {v0}, LOC;->a()LwE;

    move-result-object v5

    .line 5
    iget-object v0, p0, LLC;->c:LdC;

    .line 6
    invoke-interface {v0}, LdC;->a()J

    move-result-wide v0

    iget-wide v6, p0, LLC;->h:J

    iget v2, p0, LLC;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iget v2, p0, LLC;->k:I

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 8
    new-instance v10, LcE;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v2, v10

    move-object v6, v0

    invoke-direct/range {v2 .. v9}, LcE;-><init>(LpE;LPE;LwE;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v10
.end method
