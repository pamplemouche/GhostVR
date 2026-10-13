.class public abstract LFC;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(LXD;LTB;)LPE;
    .locals 0

    .line 9
    check-cast p1, LUB;

    invoke-virtual {p1}, LUB;->b()V

    .line 10
    invoke-virtual {p0}, LXD;->e()LLH;

    move-result-object p0

    invoke-static {p0}, LZG;->a(LZG;)[B

    move-result-object p0

    .line 11
    invoke-virtual {p1, p0}, LUB;->a([B)V

    .line 12
    new-instance p0, LPE;

    invoke-virtual {p1}, LUB;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, LPE;-><init>([B)V

    return-object p0
.end method

.method public static a(LZB;[BLTB;)LXD;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    invoke-static {p1}, LWD;->a([B)LWD;

    move-result-object p1
    :try_end_0
    .catch LYE; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v3, p1, LWD;->d:LXD;

    .line 3
    invoke-static {v3, p2}, LFC;->a(LXD;LTB;)LPE;

    move-result-object p2

    .line 4
    iget-object v4, p1, LWD;->e:LPE;

    .line 5
    invoke-static {p2, v4}, LcF;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    .line 6
    iget-object p1, p1, LWD;->e:LPE;

    aput-object p1, v3, v2

    .line 7
    check-cast p0, LgC;

    const-string p1, "Ticl state failed MAC check: computed %s vs %s"

    invoke-virtual {p0, p1, v3}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    return-object v3

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    check-cast p0, LgC;

    const-string p1, "Failed deserializing Ticl state: %s"

    invoke-virtual {p0, p1, p2}, LgC;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(LXD;LTB;)[B
    .locals 2

    .line 1
    invoke-static {p0, p1}, LFC;->a(LXD;LTB;)LPE;

    move-result-object p1

    .line 2
    new-instance v0, LWD;

    invoke-direct {v0, p0, p1}, LWD;-><init>(LXD;LPE;)V

    .line 3
    new-instance p0, LKH;

    invoke-direct {p0}, LKH;-><init>()V

    .line 4
    invoke-virtual {v0}, LWD;->d()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, v0, LWD;->d:LXD;

    invoke-virtual {p1}, LXD;->e()LLH;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, LKH;->c:LLH;

    .line 5
    invoke-virtual {v0}, LWD;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, LWD;->e:LPE;

    .line 6
    iget-object v1, p1, LPE;->w:[B

    .line 7
    :cond_1
    iput-object v1, p0, LKH;->d:[B

    .line 8
    invoke-static {p0}, LZG;->a(LZG;)[B

    move-result-object p0

    return-object p0
.end method
