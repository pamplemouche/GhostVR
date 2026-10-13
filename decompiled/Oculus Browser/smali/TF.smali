.class public abstract LTF;
.super LfF;
.source "PG"


# instance fields
.field public x:LwG;

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LfF;-><init>()V

    .line 2
    sget-object v0, LwG;->f:LwG;

    .line 3
    iput-object v0, p0, LTF;->x:LwG;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, LTF;->y:I

    return-void
.end method

.method public static a(LhG;Ljava/lang/Object;LhG;LWF;ILJG;Ljava/lang/Class;)LOF;
    .locals 7

    .line 14
    new-instance p6, LOF;

    new-instance v6, LNF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, LNF;-><init>(LWF;ILJG;ZZ)V

    invoke-direct {p6, p0, p1, p2, v6}, LOF;-><init>(LhG;Ljava/lang/Object;LhG;LNF;)V

    return-object p6
.end method

.method public static a(LTF;)LTF;
    .locals 1

    if-eqz p0, :cond_1

    .line 33
    invoke-virtual {p0}, LTF;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, LvG;

    invoke-direct {p0}, LvG;-><init>()V

    .line 35
    new-instance v0, LdG;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LdG;-><init>(Ljava/lang/String;)V

    .line 36
    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static a(LTF;LtF;LBF;)LTF;
    .locals 1

    .line 27
    sget-object v0, LRF;->A:LRF;

    invoke-virtual {p0, v0}, LTF;->a(LRF;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LTF;

    .line 28
    :try_start_0
    sget-object v0, LRF;->y:LRF;

    invoke-virtual {p0, v0, p1, p2}, LTF;->a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, LTF;->i()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, LdG;

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, LdG;

    throw p0

    .line 32
    :cond_0
    throw p0
.end method

.method public static a(LTF;[B)LTF;
    .locals 1

    .line 42
    invoke-static {}, LBF;->a()LBF;

    move-result-object v0

    invoke-static {p0, p1, v0}, LTF;->a(LTF;[BLBF;)LTF;

    move-result-object p0

    .line 43
    invoke-static {p0}, LTF;->a(LTF;)LTF;

    return-object p0
.end method

.method public static a(LTF;[BLBF;)LTF;
    .locals 0

    .line 37
    :try_start_0
    invoke-static {p1}, LtF;->a([B)LtF;

    move-result-object p1

    .line 38
    invoke-static {p0, p1, p2}, LTF;->a(LTF;LtF;LBF;)LTF;

    move-result-object p0
    :try_end_0
    .catch LdG; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 39
    :try_start_1
    invoke-virtual {p1, p2}, LtF;->a(I)V
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 40
    :try_start_2
    throw p0
    :try_end_2
    .catch LdG; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 41
    throw p0
.end method

.method public static a(LXF;)LXF;
    .locals 1

    .line 23
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 24
    :goto_0
    check-cast p0, LUF;

    invoke-virtual {p0, v0}, LUF;->a(I)LXF;

    move-result-object p0

    return-object p0
.end method

.method public static a(LbG;)LbG;
    .locals 1

    .line 25
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 26
    :goto_0
    invoke-interface {p0, v0}, LbG;->a(I)LbG;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 17
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 18
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 19
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 21
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 22
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public a(LRF;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0, v0}, LTF;->a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public a(II)V
    .locals 3

    .line 5
    invoke-virtual {p0}, LTF;->f()V

    .line 6
    iget-object v0, p0, LTF;->x:LwG;

    .line 7
    iget-boolean v1, v0, LwG;->e:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    int-to-long v1, p2

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, LwG;->a(ILjava/lang/Object;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(LSF;LTF;)V
    .locals 1

    .line 12
    sget-object v0, LRF;->x:LRF;

    invoke-virtual {p0, v0, p1, p2}, LTF;->a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, LTF;->x:LwG;

    iget-object p2, p2, LTF;->x:LwG;

    invoke-interface {p1, v0, p2}, LSF;->a(LwG;LwG;)LwG;

    move-result-object p1

    iput-object p1, p0, LTF;->x:LwG;

    return-void
.end method

.method public a(ILtF;)Z
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, LTF;->f()V

    .line 4
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1, p2}, LwG;->a(ILtF;)Z

    move-result p1

    return p1
.end method

.method public a(LIF;LhG;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p2, LTF;

    invoke-virtual {p0, p1, p2}, LTF;->a(LSF;LTF;)V

    return v0
.end method

.method public final b()LTF;
    .locals 1

    .line 2
    sget-object v0, LRF;->C:LRF;

    invoke-virtual {p0, v0}, LTF;->a(LRF;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTF;

    return-object v0
.end method

.method public bridge synthetic b()LhG;
    .locals 1

    .line 1
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v0

    return-object v0
.end method

.method public final c()LFF;
    .locals 3

    .line 2
    sget-object v0, LRF;->B:LRF;

    invoke-virtual {p0, v0}, LTF;->a(LRF;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFF;

    .line 3
    invoke-virtual {v0}, LFF;->g()V

    .line 4
    iget-object v1, v0, LFF;->x:LTF;

    sget-object v2, LQF;->a:LQF;

    invoke-virtual {v1, v2, p0}, LTF;->a(LSF;LTF;)V

    return-object v0
.end method

.method public bridge synthetic c()LgG;
    .locals 1

    .line 1
    invoke-virtual {p0}, LTF;->c()LFF;

    move-result-object v0

    return-object v0
.end method

.method public final d()LFF;
    .locals 1

    .line 2
    sget-object v0, LRF;->B:LRF;

    invoke-virtual {p0, v0}, LTF;->a(LRF;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFF;

    return-object v0
.end method

.method public bridge synthetic d()LgG;
    .locals 1

    .line 1
    invoke-virtual {p0}, LTF;->d()LFF;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    :try_start_0
    sget-object v1, LIF;->a:LIF;

    check-cast p1, LTF;

    invoke-virtual {p0, v1, p1}, LTF;->a(LSF;LTF;)V
    :try_end_0
    .catch LHF; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, LTF;->x:LwG;

    .line 2
    sget-object v1, LwG;->f:LwG;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, LwG;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4
    invoke-direct {v0, v4, v2, v1, v3}, LwG;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 5
    iput-object v0, p0, LTF;->x:LwG;

    :cond_0
    return-void
.end method

.method public final g()LkG;
    .locals 1

    .line 1
    sget-object v0, LRF;->D:LRF;

    invoke-virtual {p0, v0}, LTF;->a(LRF;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LkG;

    return-object v0
.end method

.method public final h()Z
    .locals 3

    .line 1
    sget-object v0, LRF;->w:LRF;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v2}, LTF;->a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, LfF;->w:I

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LPF;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LPF;-><init>(LEF;)V

    .line 3
    invoke-virtual {p0, v0, p0}, LTF;->a(LSF;LTF;)V

    .line 4
    iget v0, v0, LPF;->a:I

    .line 5
    iput v0, p0, LfF;->w:I

    .line 6
    :cond_0
    iget v0, p0, LfF;->w:I

    return v0
.end method

.method public i()V
    .locals 2

    .line 1
    sget-object v0, LRF;->z:LRF;

    invoke-virtual {p0, v0}, LTF;->a(LRF;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, LTF;->x:LwG;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, LwG;->e:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v1, v0}, LjG;->a(LhG;Ljava/lang/StringBuilder;I)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
