.class public abstract LTy;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lsw;
    .locals 3

    const-string v0, "POST"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 11
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    if-nez v0, :cond_0

    const/16 v1, 0xa

    .line 12
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reqpld"

    .line 13
    invoke-virtual {p2, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    const-string v1, "fmt"

    const-string v2, "bin"

    .line 14
    invoke-virtual {p2, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "hl"

    .line 16
    invoke-virtual {p2, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 17
    :cond_1
    new-instance p3, Lsw;

    .line 18
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 20
    :goto_0
    invoke-direct {p3, p2, p0, v1, p1}, Lsw;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;[B)V

    return-object p3
.end method

.method public static a([B)[B
    .locals 3

    .line 1
    invoke-static {p0}, LtF;->a([B)LtF;

    move-result-object p0

    .line 2
    iget v0, p0, LtF;->e:I

    iget v1, p0, LtF;->c:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, LtF;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 3
    invoke-virtual {p0}, LtF;->k()I

    move-result v0

    .line 4
    iget v1, p0, LtF;->e:I

    .line 5
    iget v2, p0, LtF;->c:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_1

    if-lez v0, :cond_1

    add-int/2addr v0, v1

    .line 6
    iput v0, p0, LtF;->e:I

    .line 7
    iget-object p0, p0, LtF;->a:[B

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, LtF;->c(I)[B

    move-result-object p0

    :goto_1
    return-object p0

    .line 9
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Empty length-prefixed response"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
