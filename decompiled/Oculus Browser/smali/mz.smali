.class public Lmz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loz;
.implements Ldy;


# instance fields
.field public final a:Lpx;

.field public final b:Lry;

.field public final c:Lsz;

.field public final d:Z

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lpx;Lry;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lsz;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lsz;-><init>(Z)V

    iput-object v0, p0, Lmz;->c:Lsz;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lmz;->e:I

    .line 4
    iput v0, p0, Lmz;->f:I

    .line 5
    iput-object p1, p0, Lmz;->a:Lpx;

    .line 6
    iput-object p2, p0, Lmz;->b:Lry;

    .line 7
    iput-boolean p3, p0, Lmz;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lfy;)V
    .locals 4

    .line 40
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    new-instance v1, Ley;

    iget v2, p1, Lfy;->a:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "HeadSessionImpl"

    invoke-direct {v1, v2, v3}, Ley;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget v0, p1, Lfy;->a:I

    .line 42
    new-instance v1, Ley;

    const-string v2, "sessionName"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 43
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, v1, Ley;->b:Ljava/lang/StringBuilder;

    const-string v1, "$HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v0, p1, Lfy;->a:I

    .line 46
    new-instance v1, Ley;

    const-string v2, "updateCount"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 47
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget v0, p0, Lmz;->e:I

    .line 49
    iget-object v2, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, v1, Ley;->d:Z

    .line 51
    iget v1, p1, Lfy;->a:I

    .line 52
    new-instance v2, Ley;

    const-string v3, "storeMutationFailures"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 53
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget v1, p0, Lmz;->f:I

    .line 55
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    iput-boolean v0, v2, Ley;->d:Z

    .line 57
    iget-object v0, p0, Lmz;->c:Lsz;

    invoke-virtual {p1, v0}, Lfy;->a(Ldy;)V

    return-void
.end method

.method public a(ZLjava/util/List;ILlw;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1
    iget-object v2, v0, Lmz;->b:Lry;

    const-string v3, "HeadSessionImpl"

    invoke-virtual {v2, v3}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v2

    .line 2
    iget v4, v0, Lmz;->e:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lmz;->e:I

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Llw;->a:LeJ;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x2

    const-string v6, "$HEAD"

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget-object v10, v1, LeJ;->A:Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, LeJ;->j()Z

    move-result v1

    const-string v11, "updateSessionIgnored"

    if-eqz v1, :cond_1

    iget-object v1, v0, Lmz;->c:Lsz;

    invoke-virtual {v1, v10}, Lsz;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v11, v1, v9

    aput-object v6, v1, v5

    const-string v6, "Token Not Found"

    aput-object v6, v1, v4

    aput-object v10, v1, v7

    .line 6
    invoke-virtual {v2, v1}, Lny;->a([Ljava/lang/Object;)V

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v10, v1, v9

    const-string v2, "Token %s not found in session, ignoring update"

    .line 7
    invoke-static {v3, v2, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    iget-boolean v1, v0, Lmz;->d:Z

    if-eqz v1, :cond_2

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v11, v1, v9

    aput-object v6, v1, v5

    .line 9
    invoke-virtual {v2, v1}, Lny;->a([Ljava/lang/Object;)V

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "Limited paging updates in HEAD"

    .line 10
    invoke-static {v3, v2, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_2
    iget-object v1, v0, Lmz;->a:Lpx;

    invoke-interface {v1, v6}, Lpx;->c(Ljava/lang/String;)Lox;

    move-result-object v1

    .line 12
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LbJ;

    .line 13
    iget-object v9, v15, LbJ;->C:Ljava/lang/String;

    .line 14
    invoke-virtual {v15}, LbJ;->m()LaJ;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eq v8, v5, :cond_8

    if-eq v8, v4, :cond_6

    if-eq v8, v7, :cond_4

    const/4 v7, 0x4

    if-eq v8, v7, :cond_3

    new-array v7, v5, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v15}, LbJ;->m()LaJ;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "Unknown operation, ignoring: %s"

    invoke-static {v3, v8, v7}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 16
    :cond_3
    iget-object v7, v0, Lmz;->c:Lsz;

    invoke-virtual {v7, v9}, Lsz;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 17
    move-object v7, v1

    check-cast v7, LVz;

    .line 18
    iget-object v7, v7, LVz;->a:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v9, v7, v8

    const-string v4, "Removing Item %s from $HEAD"

    .line 19
    invoke-static {v3, v4, v7}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v4, v0, Lmz;->c:Lsz;

    invoke-virtual {v4, v9}, Lsz;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    move-object v4, v1

    check-cast v4, LVz;

    .line 22
    iget-object v4, v4, LVz;->a:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-array v4, v8, [Ljava/lang/Object;

    const-string v7, "Remove operation content not found in $HEAD"

    .line 23
    invoke-static {v3, v7, v4}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 24
    :cond_6
    iget-object v4, v0, Lmz;->c:Lsz;

    invoke-virtual {v4, v9}, Lsz;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 25
    :cond_7
    move-object v4, v1

    check-cast v4, LVz;

    .line 26
    iget-object v4, v4, LVz;->a:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_8
    const/4 v11, 0x1

    .line 27
    :cond_9
    :goto_2
    iget-object v4, v0, Lmz;->c:Lsz;

    invoke-virtual {v4, v15}, Lsz;->a(LbJ;)V

    const/4 v4, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 28
    :cond_a
    check-cast v1, LVz;

    .line 29
    iget-object v4, v1, LVz;->b:LIx;

    iget-object v1, v1, LVz;->a:Ljava/util/List;

    invoke-interface {v4, v1}, LIx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "updateSession"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput-object v6, v1, v5

    const-string v3, "cleared"

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 31
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    const-string v3, "features"

    const/4 v4, 0x4

    aput-object v3, v1, v4

    const/4 v3, 0x5

    .line 32
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "updates"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    .line 33
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "requiredContent"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    .line 34
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 35
    invoke-virtual {v2, v1}, Lny;->a([Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "updateSessionFailure"

    const/4 v7, 0x0

    aput-object v4, v1, v7

    aput-object v6, v1, v5

    .line 36
    invoke-virtual {v2, v1}, Lny;->a([Ljava/lang/Object;)V

    .line 37
    iget v1, v0, Lmz;->f:I

    add-int/2addr v1, v5

    iput v1, v0, Lmz;->f:I

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "$HEAD session mutation failed"

    .line 38
    invoke-static {v3, v2, v1}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v1, v0, Lmz;->a:Lpx;

    invoke-interface {v1}, Lpx;->j()V

    :goto_3
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "$HEAD"

    return-object v0
.end method

.method public c()Lcx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
