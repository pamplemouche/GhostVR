.class public abstract LVB;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(I[BLTB;)LPE;
    .locals 2

    .line 1
    check-cast p2, LUB;

    invoke-virtual {p2}, LUB;->b()V

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p2, p0}, LUB;->a([B)V

    .line 5
    iget-boolean p0, p2, LUB;->b:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, LWE;->b(Z)V

    .line 6
    iget-object p0, p2, LUB;->a:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 7
    new-instance p0, LPE;

    invoke-virtual {p2}, LUB;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, LPE;-><init>([B)V

    return-object p0
.end method
