.class public abstract LEE;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LDE;)LTD;
    .locals 7

    const-string v0, "Null registration id"

    .line 1
    invoke-static {p0, v0}, LWE;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Null client key"

    .line 2
    invoke-static {p1, v0}, LWE;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Null package name"

    .line 3
    invoke-static {p2, v0}, LWE;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Null channel version"

    .line 4
    invoke-static {p3, v0}, LWE;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, LwD;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, LwD;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LDE;Ljava/lang/String;)V

    const/16 p0, 0x71

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, LPE;

    .line 7
    new-instance p2, LeH;

    invoke-direct {p2}, LeH;-><init>()V

    .line 8
    invoke-virtual {v0}, LwD;->c()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object p3, v0, LwD;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    iput-object p3, p2, LeH;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, LwD;->d()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, v0, LwD;->e:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    iput-object p3, p2, LeH;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, LwD;->f()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, v0, LwD;->f:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    iput-object p3, p2, LeH;->e:Ljava/lang/String;

    .line 11
    iget-object p3, v0, LwD;->g:LDE;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, LDE;->c()LqI;

    move-result-object p3

    goto :goto_3

    :cond_3
    move-object p3, v1

    :goto_3
    iput-object p3, p2, LeH;->f:LqI;

    .line 12
    invoke-virtual {v0}, LwD;->e()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, v0, LwD;->h:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object p3, v1

    :goto_4
    iput-object p3, p2, LeH;->g:Ljava/lang/String;

    .line 13
    invoke-static {p2}, LZG;->a(LZG;)[B

    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, LPE;-><init>([B)V

    .line 15
    new-instance p2, LTD;

    invoke-direct {p2, p0, p1, v1}, LTD;-><init>(Ljava/lang/Integer;LPE;Ljava/lang/Boolean;)V

    return-object p2
.end method
