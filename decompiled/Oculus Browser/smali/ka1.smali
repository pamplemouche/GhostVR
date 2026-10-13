.class public abstract Lka1;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Lxb1;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    iget-object v0, p0, Lxb1;->b:Lyb1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget v2, v0, Lyb1;->e:I

    .line 3
    iget v3, v0, Lyb1;->f:I

    int-to-long v4, v2

    int-to-long v6, v3

    mul-long v4, v4, v6

    .line 4
    iget-object v6, p0, Lxb1;->d:LS71;

    if-eqz v6, :cond_4

    if-lez v2, :cond_4

    if-lez v3, :cond_4

    const-wide v6, 0x1fffffffffffffffL

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget v0, v0, Lyb1;->b:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    return-object v1

    .line 6
    :cond_2
    iget-object p0, p0, Lxb1;->d:LS71;

    .line 7
    invoke-static {p0}, LR71;->a(LS71;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-gtz v0, :cond_3

    return-object v1

    .line 9
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public static b(Lxb1;)Lwv;
    .locals 4

    .line 1
    invoke-static {p0}, Lka1;->a(Lxb1;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lwv;

    invoke-direct {v1, v0}, Lwv;-><init>(Lbw;)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 4
    iput-object p0, v1, Lwv;->c:Landroid/graphics/Bitmap;

    .line 5
    iget-object v3, v1, Lwv;->a:Lvv;

    .line 6
    iput v0, v3, Lvv;->a:I

    .line 7
    iput v2, v3, Lvv;->b:I

    .line 8
    iget-object v0, v1, Lwv;->b:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing image data.  Call either setBitmap or setImageData to specify the image"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v1
.end method
