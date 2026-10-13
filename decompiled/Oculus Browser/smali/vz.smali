.class public Lvz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnz;
.implements Ldy;


# instance fields
.field public final a:Lpx;

.field public final b:LFx;

.field public final c:LYw;

.field public final d:Lry;

.field public final e:Z

.field public final f:Lsz;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:I


# direct methods
.method public constructor <init>(Lpx;ZLFx;Lry;LYw;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lsz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsz;-><init>(Z)V

    iput-object v0, p0, Lvz;->f:Lsz;

    .line 3
    iput-boolean v1, p0, Lvz;->g:Z

    .line 4
    iput v1, p0, Lvz;->i:I

    .line 5
    iput-object p1, p0, Lvz;->a:Lpx;

    .line 6
    iput-object p3, p0, Lvz;->b:LFx;

    .line 7
    iput-object p4, p0, Lvz;->d:Lry;

    .line 8
    iput-object p5, p0, Lvz;->c:LYw;

    .line 9
    iput-boolean p2, p0, Lvz;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lfy;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    new-instance v1, Ley;

    iget v2, p1, Lfy;->a:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "SessionImpl"

    invoke-direct {v1, v2, v3}, Ley;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p1, Lfy;->a:I

    .line 3
    new-instance v1, Ley;

    const-string v2, "sessionName"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 4
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lvz;->h:Ljava/lang/String;

    .line 6
    iget-object v1, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v0, p1, Lfy;->a:I

    .line 8
    new-instance v1, Ley;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 9
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, v1, Ley;->b:Ljava/lang/StringBuilder;

    const-string v2, "sessionIsUnbound"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, v1, Ley;->d:Z

    .line 12
    iget v1, p1, Lfy;->a:I

    .line 13
    new-instance v2, Ley;

    const-string v3, "updateCount"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 14
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget v1, p0, Lvz;->i:I

    .line 16
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    iput-boolean v0, v2, Ley;->d:Z

    .line 18
    iget-object v0, p0, Lvz;->f:Lsz;

    invoke-virtual {p1, v0}, Lfy;->a(Ldy;)V

    return-void
.end method

.method public a(Ljava/util/List;Llw;)V
    .locals 13

    .line 29
    iget-object v0, p0, Lvz;->d:Lry;

    const-string v1, "SessionImpl"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 30
    iget-object v3, p2, Llw;->a:LeJ;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_4

    .line 31
    iget-object v3, v3, LeJ;->A:Ljava/lang/String;

    .line 32
    iget-object v9, p0, Lvz;->f:Lsz;

    invoke-virtual {v9, v3}, Lsz;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    new-array p1, v6, [Ljava/lang/Object;

    const-string p2, "updateSessionIgnored"

    aput-object p2, p1, v8

    .line 33
    iget-object p2, p0, Lvz;->h:Ljava/lang/String;

    aput-object p2, p1, v7

    const-string p2, "Token Not Found"

    aput-object p2, p1, v5

    aput-object v3, p1, v4

    invoke-virtual {v0, p1}, Lny;->a([Ljava/lang/Object;)V

    new-array p1, v7, [Ljava/lang/Object;

    aput-object v3, p1, v8

    const-string p2, "Token %s not found in session, ignoring update"

    .line 34
    invoke-static {v1, p2, p1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 35
    :cond_1
    iget-boolean v3, p0, Lvz;->e:Z

    if-eqz v3, :cond_4

    if-eqz p2, :cond_3

    .line 36
    iget-object v2, p2, Llw;->b:Ljava/lang/String;

    if-nez v2, :cond_2

    new-array p1, v8, [Ljava/lang/Object;

    const-string p2, "Request Session was not set, ignoring update"

    .line 37
    invoke-static {v1, p2, p1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 38
    :cond_2
    iget-object v3, p0, Lvz;->h:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-array p1, v8, [Ljava/lang/Object;

    const-string p2, "Limiting Updates, paging request made on another session"

    .line 39
    invoke-static {v1, p2, p1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 40
    :cond_3
    throw v2

    .line 41
    :cond_4
    iget-object v2, p0, Lvz;->a:Lpx;

    iget-object v3, p0, Lvz;->h:Ljava/lang/String;

    invoke-interface {v2, v3}, Lpx;->c(Ljava/lang/String;)Lox;

    move-result-object v2

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LbJ;

    .line 43
    iget-object v11, v10, LbJ;->C:Ljava/lang/String;

    .line 44
    invoke-virtual {v10}, LbJ;->m()LaJ;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eq v12, v7, :cond_9

    if-eq v12, v5, :cond_7

    if-eq v12, v4, :cond_6

    if-eq v12, v6, :cond_5

    new-array v11, v7, [Ljava/lang/Object;

    .line 45
    invoke-virtual {v10}, LbJ;->m()LaJ;

    move-result-object v12

    aput-object v12, v11, v8

    const-string v12, "Unknown operation, ignoring: %s"

    invoke-static {v1, v12, v11}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 46
    :cond_5
    iget-object v12, p0, Lvz;->f:Lsz;

    invoke-virtual {v12, v11}, Lsz;->a(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 47
    move-object v11, v2

    check-cast v11, LVz;

    .line 48
    iget-object v11, v11, LVz;->a:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 49
    :cond_6
    move-object v11, v2

    check-cast v11, LVz;

    .line 50
    iget-object v11, v11, LVz;->a:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 51
    :cond_7
    iget-object v12, p0, Lvz;->f:Lsz;

    invoke-virtual {v12, v11}, Lsz;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_2

    .line 52
    :cond_8
    move-object v11, v2

    check-cast v11, LVz;

    .line 53
    iget-object v11, v11, LVz;->a:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    new-array v11, v8, [Ljava/lang/Object;

    const-string v12, "CLEAR_ALL not support on this session type"

    .line 54
    invoke-static {v1, v12, v11}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_a
    :goto_2
    iget-object v11, p0, Lvz;->f:Lsz;

    invoke-virtual {v11, v10}, Lsz;->a(LbJ;)V

    goto :goto_1

    :cond_b
    if-eqz p2, :cond_c

    .line 56
    iget-boolean p1, p2, Llw;->c:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_3

    :cond_c
    const/4 p1, 0x4

    .line 57
    :goto_3
    iget-object p2, p0, Lvz;->b:LFx;

    const/16 v1, 0x1d

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    new-instance v10, Luz;

    invoke-direct {v10, v2}, Luz;-><init>(Lox;)V

    .line 59
    invoke-virtual {p2, v1, p1, v10}, LFx;->a(IILjava/lang/Runnable;)V

    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "updateSession"

    aput-object p2, p1, v8

    .line 60
    iget-object p2, p0, Lvz;->h:Ljava/lang/String;

    aput-object p2, p1, v7

    const-string p2, "features"

    aput-object p2, p1, v5

    .line 61
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "updates"

    aput-object p2, p1, v6

    const/4 p2, 0x5

    .line 62
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, p2

    const/4 p2, 0x6

    const-string v1, "requiredContent"

    aput-object v1, p1, p2

    const/4 p2, 0x7

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, p2

    .line 64
    invoke-virtual {v0, p1}, Lny;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/List;ZZLkJ;)V
    .locals 3

    const/4 p2, 0x1

    new-array p4, p2, [Ljava/lang/Object;

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p4, v1

    const-string v0, "PopulateModelProvider %s items"

    const-string v2, "SessionImpl"

    invoke-static {v2, v0, p4}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iput-boolean p3, p0, Lvz;->g:Z

    .line 21
    iget-object p3, p0, Lvz;->c:LYw;

    invoke-virtual {p3}, LYw;->b()V

    .line 22
    iget-object p3, p0, Lvz;->d:Lry;

    invoke-virtual {p3, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object p3

    .line 23
    iget-object p4, p0, Lvz;->f:Lsz;

    invoke-virtual {p4, p1}, Lsz;->a(Ljava/util/List;)V

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    const-string v0, "populateSession"

    aput-object v0, p4, v1

    .line 24
    iget-object v0, p0, Lvz;->h:Ljava/lang/String;

    aput-object v0, p4, p2

    const/4 p2, 0x2

    const-string v0, "operations"

    aput-object v0, p4, p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p4, p2

    invoke-virtual {p3, p4}, Lny;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZLjava/util/List;ILlw;)V
    .locals 1

    .line 25
    iget-object p3, p0, Lvz;->h:Ljava/lang/String;

    invoke-static {p3}, Ltx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    const-string p2, "SessionImpl"

    const-string p3, "Session %s not updated due to clearHead"

    .line 26
    invoke-static {p2, p3, p1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 27
    :cond_0
    iget p1, p0, Lvz;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lvz;->i:I

    .line 28
    invoke-virtual {p0, p2, p4}, Lvz;->a(Ljava/util/List;Llw;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lvz;->h:Ljava/lang/String;

    invoke-static {v0}, Ltx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
