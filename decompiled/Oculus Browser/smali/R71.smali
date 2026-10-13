.class public abstract LR71;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(LS71;)[B
    .locals 6

    .line 1
    iget v0, p0, LU61;->a:I

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, LS71;->b:[B

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, LS71;->c:LT71;

    .line 4
    iget-object v0, p0, LT71;->b:LE71;

    const-wide/16 v1, 0x0

    iget v3, p0, LT71;->c:I

    int-to-long v3, v3

    sget-object v5, LD71;->c:LD71;

    .line 5
    invoke-interface/range {v0 .. v5}, LE71;->a(JJLD71;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6
    iget p0, p0, LT71;->c:I

    new-array p0, p0, [B

    .line 7
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method
