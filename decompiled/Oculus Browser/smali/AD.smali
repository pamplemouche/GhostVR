.class public final LAD;
.super LZE;
.source "PG"


# instance fields
.field public final c:LDE;

.field public final d:LGE;

.field public final e:LzD;

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>(LDE;LGE;LzD;Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "version"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LAD;->c:LDE;

    const-string p1, "ticl_state"

    .line 4
    invoke-static {p1, p2}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iput-object p2, p0, LAD;->d:LGE;

    const-string p1, "metadata"

    .line 6
    invoke-static {p1, p3}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iput-object p3, p0, LAD;->e:LzD;

    const-string p1, "scheduled_task"

    .line 8
    invoke-static {p1, p4}, LZE;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LAD;->f:Ljava/util/List;

    return-void
.end method

.method public static a(LiH;)LAD;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LiH;->f:[LAH;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, LiH;->f:[LAH;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 18
    aget-object v2, v2, v1

    invoke-static {v2}, LSD;->a(LAH;)LSD;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_1
    new-instance v1, LAD;

    iget-object v2, p0, LiH;->c:LqI;

    invoke-static {v2}, LDE;->a(LqI;)LDE;

    move-result-object v2

    iget-object v3, p0, LiH;->d:LCH;

    .line 20
    invoke-static {v3}, LGE;->a(LCH;)LGE;

    move-result-object v3

    iget-object p0, p0, LiH;->e:LhH;

    .line 21
    invoke-static {p0}, LzD;->a(LhH;)LzD;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0, v0}, LAD;-><init>(LDE;LGE;LzD;Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 12
    iget-object v0, p0, LAD;->c:LDE;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, LAD;->d:LGE;

    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 14
    iget-object v0, p0, LAD;->e:LzD;

    invoke-virtual {v0}, LZE;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-object v1, p0, LAD;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<AndroidTiclState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LAD;->c:LDE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 4
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " ticl_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p0, LAD;->d:LGE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 6
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, LAD;->e:LzD;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 8
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " scheduled_task=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, LAD;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    const/16 v0, 0x5d

    .line 10
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    .line 11
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()LiH;
    .locals 11

    .line 1
    new-instance v0, LiH;

    invoke-direct {v0}, LiH;-><init>()V

    .line 2
    iget-object v1, p0, LAD;->c:LDE;

    invoke-virtual {v1}, LDE;->c()LqI;

    move-result-object v1

    iput-object v1, v0, LiH;->c:LqI;

    .line 3
    iget-object v1, p0, LAD;->d:LGE;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 4
    new-instance v3, LCH;

    invoke-direct {v3}, LCH;-><init>()V

    .line 5
    invoke-virtual {v1}, LGE;->o()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, LGE;->d:LYD;

    if-eqz v4, :cond_1

    .line 6
    new-instance v5, LMH;

    invoke-direct {v5}, LMH;-><init>()V

    .line 7
    invoke-virtual {v4}, LYD;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v4, v4, LYD;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    iput-object v4, v5, LMH;->c:Ljava/lang/Integer;

    goto :goto_1

    .line 8
    :cond_1
    throw v2

    :cond_2
    move-object v5, v2

    .line 9
    :goto_1
    iput-object v5, v3, LCH;->c:LMH;

    .line 10
    invoke-virtual {v1}, LGE;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, LGE;->e:LPE;

    .line 11
    iget-object v4, v4, LPE;->w:[B

    goto :goto_2

    :cond_3
    move-object v4, v2

    .line 12
    :goto_2
    iput-object v4, v3, LCH;->d:[B

    .line 13
    invoke-virtual {v1}, LGE;->j()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, LGE;->f:LPE;

    .line 14
    iget-object v4, v4, LPE;->w:[B

    goto :goto_3

    :cond_4
    move-object v4, v2

    .line 15
    :goto_3
    iput-object v4, v3, LCH;->e:[B

    .line 16
    invoke-virtual {v1}, LGE;->p()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, v1, LGE;->g:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v2

    :goto_4
    iput-object v4, v3, LCH;->f:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v1}, LGE;->h()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-wide v4, v1, LGE;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, v2

    :goto_5
    iput-object v4, v3, LCH;->g:Ljava/lang/Long;

    .line 18
    invoke-virtual {v1}, LGE;->g()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, v1, LGE;->i:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_6

    :cond_7
    move-object v4, v2

    :goto_6
    iput-object v4, v3, LCH;->h:Ljava/lang/Boolean;

    .line 19
    invoke-virtual {v1}, LGE;->l()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_14

    iget-object v4, v1, LGE;->j:LHE;

    if-eqz v4, :cond_13

    .line 20
    new-instance v6, LDH;

    invoke-direct {v6}, LDH;-><init>()V

    .line 21
    invoke-virtual {v4}, LHE;->e()Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, v4, LHE;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_7

    :cond_8
    move-object v7, v2

    :goto_7
    iput-object v7, v6, LDH;->c:Ljava/lang/Integer;

    .line 22
    invoke-virtual {v4}, LHE;->d()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-wide v7, v4, LHE;->e:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_8

    :cond_9
    move-object v7, v2

    :goto_8
    iput-object v7, v6, LDH;->d:Ljava/lang/Long;

    .line 23
    invoke-virtual {v4}, LHE;->f()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-wide v7, v4, LHE;->f:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_9

    :cond_a
    move-object v7, v2

    :goto_9
    iput-object v7, v6, LDH;->e:Ljava/lang/Long;

    .line 24
    invoke-virtual {v4}, LHE;->c()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v4, v4, LHE;->g:LFE;

    if-eqz v4, :cond_11

    .line 25
    new-instance v7, LBH;

    invoke-direct {v7}, LBH;-><init>()V

    .line 26
    iget-object v8, v4, LFE;->d:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [LZH;

    iput-object v8, v7, LBH;->c:[LZH;

    const/4 v8, 0x0

    .line 27
    :goto_a
    iget-object v9, v7, LBH;->c:[LZH;

    array-length v10, v9

    if-ge v8, v10, :cond_b

    .line 28
    iget-object v10, v4, LFE;->d:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LmE;

    invoke-virtual {v10}, LmE;->c()LZH;

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 29
    :cond_b
    iget-object v8, v4, LFE;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [LZH;

    iput-object v8, v7, LBH;->d:[LZH;

    const/4 v8, 0x0

    .line 30
    :goto_b
    iget-object v9, v7, LBH;->d:[LZH;

    array-length v10, v9

    if-ge v8, v10, :cond_c

    .line 31
    iget-object v10, v4, LFE;->e:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LmE;

    invoke-virtual {v10}, LmE;->c()LZH;

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 32
    :cond_c
    iget-object v8, v4, LFE;->f:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [LYH;

    iput-object v8, v7, LBH;->e:[LYH;

    const/4 v8, 0x0

    .line 33
    :goto_c
    iget-object v9, v7, LBH;->e:[LYH;

    array-length v10, v9

    if-ge v8, v10, :cond_d

    .line 34
    iget-object v10, v4, LFE;->f:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LlE;

    invoke-virtual {v10}, LlE;->e()LYH;

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 35
    :cond_d
    iget-object v8, v4, LFE;->g:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [LiI;

    iput-object v8, v7, LBH;->f:[LiI;

    const/4 v8, 0x0

    .line 36
    :goto_d
    iget-object v9, v7, LBH;->f:[LiI;

    array-length v10, v9

    if-ge v8, v10, :cond_e

    .line 37
    iget-object v10, v4, LFE;->g:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LvE;

    invoke-virtual {v10}, LvE;->c()LiI;

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 38
    :cond_e
    iget-object v8, v4, LFE;->h:LjE;

    if-eqz v8, :cond_f

    invoke-virtual {v8}, LjE;->c()LWH;

    move-result-object v8

    goto :goto_e

    :cond_f
    move-object v8, v2

    :goto_e
    iput-object v8, v7, LBH;->g:LWH;

    .line 39
    invoke-virtual {v4}, LFE;->c()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v4, v4, LFE;->i:LhE;

    invoke-virtual {v4}, LhE;->d()LUH;

    move-result-object v4

    goto :goto_f

    :cond_10
    move-object v4, v2

    :goto_f
    iput-object v4, v7, LBH;->h:LUH;

    goto :goto_10

    .line 40
    :cond_11
    throw v2

    :cond_12
    move-object v7, v2

    .line 41
    :goto_10
    iput-object v7, v6, LDH;->f:LBH;

    goto :goto_11

    .line 42
    :cond_13
    throw v2

    :cond_14
    move-object v6, v2

    .line 43
    :goto_11
    iput-object v6, v3, LCH;->i:LDH;

    .line 44
    invoke-virtual {v1}, LGE;->n()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v1, LGE;->k:LJE;

    if-eqz v4, :cond_17

    .line 45
    new-instance v6, LFH;

    invoke-direct {v6}, LFH;-><init>()V

    .line 46
    iget-object v7, v4, LJE;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [LZH;

    iput-object v7, v6, LFH;->c:[LZH;

    const/4 v7, 0x0

    .line 47
    :goto_12
    iget-object v8, v6, LFH;->c:[LZH;

    array-length v9, v8

    if-ge v7, v9, :cond_15

    .line 48
    iget-object v9, v4, LJE;->c:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LmE;

    invoke-virtual {v9}, LmE;->c()LZH;

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 49
    :cond_15
    iget-object v7, v4, LJE;->d:LwE;

    if-eqz v7, :cond_16

    .line 50
    new-instance v8, LjI;

    invoke-direct {v8}, LjI;-><init>()V

    .line 51
    iget v9, v7, LwE;->c:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, LjI;->c:Ljava/lang/Integer;

    .line 52
    iget-object v7, v7, LwE;->d:LPE;

    .line 53
    iget-object v7, v7, LPE;->w:[B

    .line 54
    iput-object v7, v8, LjI;->d:[B

    goto :goto_13

    :cond_16
    move-object v8, v2

    .line 55
    :goto_13
    iput-object v8, v6, LFH;->d:LjI;

    .line 56
    iget-object v7, v4, LJE;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [LfI;

    iput-object v7, v6, LFH;->e:[LfI;

    const/4 v7, 0x0

    .line 57
    :goto_14
    iget-object v8, v6, LFH;->e:[LfI;

    array-length v9, v8

    if-ge v7, v9, :cond_19

    .line 58
    iget-object v9, v4, LJE;->e:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LsE;

    invoke-virtual {v9}, LsE;->c()LfI;

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 59
    :cond_17
    throw v2

    :cond_18
    move-object v6, v2

    .line 60
    :cond_19
    iput-object v6, v3, LCH;->j:LFH;

    .line 61
    invoke-virtual {v1}, LGE;->c()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v1, LGE;->l:LIE;

    invoke-virtual {v4}, LIE;->g()LEH;

    move-result-object v4

    goto :goto_15

    :cond_1a
    move-object v4, v2

    :goto_15
    iput-object v4, v3, LCH;->k:LEH;

    .line 62
    invoke-virtual {v1}, LGE;->m()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, v1, LGE;->m:LIE;

    invoke-virtual {v4}, LIE;->g()LEH;

    move-result-object v4

    goto :goto_16

    :cond_1b
    move-object v4, v2

    :goto_16
    iput-object v4, v3, LCH;->l:LEH;

    .line 63
    invoke-virtual {v1}, LGE;->k()Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, v1, LGE;->n:LIE;

    invoke-virtual {v4}, LIE;->g()LEH;

    move-result-object v4

    goto :goto_17

    :cond_1c
    move-object v4, v2

    :goto_17
    iput-object v4, v3, LCH;->m:LEH;

    .line 64
    invoke-virtual {v1}, LGE;->f()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v1, LGE;->o:LIE;

    invoke-virtual {v4}, LIE;->g()LEH;

    move-result-object v4

    goto :goto_18

    :cond_1d
    move-object v4, v2

    :goto_18
    iput-object v4, v3, LCH;->n:LEH;

    .line 65
    invoke-virtual {v1}, LGE;->d()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, v1, LGE;->p:LIE;

    invoke-virtual {v4}, LIE;->g()LEH;

    move-result-object v4

    goto :goto_19

    :cond_1e
    move-object v4, v2

    :goto_19
    iput-object v4, v3, LCH;->o:LEH;

    .line 66
    invoke-virtual {v1}, LGE;->i()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, v1, LGE;->q:LXD;

    invoke-virtual {v4}, LXD;->e()LLH;

    move-result-object v4

    goto :goto_1a

    :cond_1f
    move-object v4, v2

    :goto_1a
    iput-object v4, v3, LCH;->p:LLH;

    .line 67
    invoke-virtual {v1}, LGE;->q()Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v1, v1, LGE;->r:LKE;

    if-eqz v1, :cond_20

    .line 68
    new-instance v4, LGH;

    invoke-direct {v4}, LGH;-><init>()V

    .line 69
    iget-object v6, v1, LKE;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [LaI;

    iput-object v6, v4, LGH;->c:[LaI;

    const/4 v6, 0x0

    .line 70
    :goto_1b
    iget-object v7, v4, LGH;->c:[LaI;

    array-length v8, v7

    if-ge v6, v8, :cond_22

    .line 71
    iget-object v8, v1, LKE;->c:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LnE;

    invoke-virtual {v8}, LnE;->e()LaI;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 72
    :cond_20
    throw v2

    :cond_21
    move-object v4, v2

    .line 73
    :cond_22
    iput-object v4, v3, LCH;->q:LGH;

    .line 74
    iput-object v3, v0, LiH;->d:LCH;

    .line 75
    iget-object v1, p0, LAD;->e:LzD;

    if-eqz v1, :cond_25

    .line 76
    new-instance v3, LhH;

    invoke-direct {v3}, LhH;-><init>()V

    .line 77
    iget v4, v1, LzD;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, LhH;->c:Ljava/lang/Integer;

    .line 78
    iget-object v4, v1, LzD;->d:LPE;

    .line 79
    iget-object v4, v4, LPE;->w:[B

    .line 80
    iput-object v4, v3, LhH;->d:[B

    .line 81
    iget-wide v6, v1, LzD;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, LhH;->e:Ljava/lang/Long;

    .line 82
    iget-object v1, v1, LzD;->f:LbE;

    invoke-virtual {v1}, LbE;->n()LOH;

    move-result-object v1

    iput-object v1, v3, LhH;->f:LOH;

    .line 83
    iput-object v3, v0, LiH;->e:LhH;

    .line 84
    iget-object v1, p0, LAD;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [LAH;

    iput-object v1, v0, LiH;->f:[LAH;

    .line 85
    :goto_1c
    iget-object v1, v0, LiH;->f:[LAH;

    array-length v3, v1

    if-ge v5, v3, :cond_24

    .line 86
    iget-object v3, p0, LAD;->f:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LSD;

    if-eqz v3, :cond_23

    .line 87
    new-instance v4, LAH;

    invoke-direct {v4}, LAH;-><init>()V

    .line 88
    iget-object v6, v3, LSD;->c:Ljava/lang/String;

    iput-object v6, v4, LAH;->c:Ljava/lang/String;

    .line 89
    iget-wide v6, v3, LSD;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v4, LAH;->d:Ljava/lang/Long;

    .line 90
    aput-object v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 91
    :cond_23
    throw v2

    :cond_24
    return-object v0

    .line 92
    :cond_25
    throw v2

    .line 93
    :cond_26
    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LAD;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LAD;

    .line 3
    iget-object v1, p0, LAD;->c:LDE;

    iget-object v3, p1, LAD;->c:LDE;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LAD;->d:LGE;

    iget-object v3, p1, LAD;->d:LGE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LAD;->e:LzD;

    iget-object v3, p1, LAD;->e:LzD;

    .line 5
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LAD;->f:Ljava/util/List;

    iget-object p1, p1, LAD;->f:Ljava/util/List;

    .line 6
    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
