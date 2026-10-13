.class public abstract Lnx0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 2

    .line 39
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 41
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 42
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 43
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 44
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;ILjava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 11

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    if-ne v1, p1, :cond_0

    :goto_0
    move-object v3, p0

    goto :goto_3

    :cond_0
    if-le v0, p1, :cond_2

    if-le v1, p1, :cond_2

    if-ge v0, v1, :cond_1

    int-to-float v3, v0

    goto :goto_1

    :cond_1
    int-to-float v3, v1

    :goto_1
    int-to-float v4, p1

    div-float/2addr v3, v4

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 8
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 9
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-ge v0, p1, :cond_3

    int-to-float v3, p1

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v0, v1

    mul-float v0, v0, v3

    float-to-int v0, v0

    move v1, p1

    goto :goto_2

    :cond_3
    move v10, v1

    move v1, v0

    move v0, v10

    :goto_2
    if-ge v0, p1, :cond_4

    int-to-float v3, p1

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v0, v1

    mul-float v0, v0, v3

    float-to-int v1, v0

    move v0, p1

    .line 10
    :cond_4
    invoke-static {p0, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 11
    :goto_3
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 12
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    const/4 v1, 0x2

    const/4 v4, 0x0

    if-lt p0, v0, :cond_5

    .line 13
    :try_start_0
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, p2}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    const-string p2, "Orientation"

    .line 14
    invoke-virtual {p0, p2, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/high16 p2, -0x3d4c0000    # -90.0f

    const/high16 v0, 0x42b40000    # 90.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    packed-switch p0, :pswitch_data_0

    goto :goto_4

    .line 15
    :pswitch_0
    invoke-virtual {v8, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 p0, 0x3

    .line 16
    invoke-static {p0}, Lnx0;->a(I)V

    goto :goto_4

    .line 17
    :pswitch_1
    invoke-virtual {v8, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 18
    invoke-virtual {v8, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 p0, 0x5

    .line 19
    invoke-static {p0}, Lnx0;->a(I)V

    goto :goto_4

    .line 20
    :pswitch_2
    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 21
    invoke-static {v2}, Lnx0;->a(I)V

    goto :goto_4

    .line 22
    :pswitch_3
    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 23
    invoke-virtual {v8, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 p0, 0x4

    .line 24
    invoke-static {p0}, Lnx0;->a(I)V

    goto :goto_4

    .line 25
    :pswitch_4
    invoke-virtual {v8, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 p0, 0x7

    .line 26
    invoke-static {p0}, Lnx0;->a(I)V

    goto :goto_4

    :pswitch_5
    const/high16 p0, 0x43340000    # 180.0f

    .line 27
    invoke-virtual {v8, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 28
    invoke-static {v1}, Lnx0;->a(I)V

    goto :goto_4

    .line 29
    :pswitch_6
    invoke-virtual {v8, v6, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 p0, 0x6

    .line 30
    invoke-static {p0}, Lnx0;->a(I)V

    goto :goto_4

    .line 31
    :pswitch_7
    invoke-static {v4}, Lnx0;->a(I)V

    goto :goto_4

    :pswitch_8
    const/16 p0, 0x8

    .line 32
    invoke-static {p0}, Lnx0;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    .line 33
    :cond_5
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 34
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-ne p0, p1, :cond_6

    if-ne p2, p1, :cond_6

    goto :goto_7

    :cond_6
    if-le p0, p1, :cond_7

    sub-int/2addr p0, p1

    .line 35
    div-int/2addr p0, v1

    goto :goto_5

    :cond_7
    const/4 p0, 0x0

    :goto_5
    if-le p2, p1, :cond_8

    sub-int/2addr p2, p1

    .line 36
    div-int/2addr p2, v1

    move v5, p2

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    const/4 v9, 0x1

    move v4, p0

    move v6, p1

    move v7, p1

    .line 37
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_7
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/media/MediaMetadataRetriever;Ljava/io/FileDescriptor;IIJ)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    int-to-long v2, v1

    mul-long v2, v2, p4

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 2
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {v2, p2, p1}, Lnx0;->a(Landroid/graphics/Bitmap;ILjava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(I)V
    .locals 2

    const-string v0, "Android.PhotoPicker.ExifOrientation"

    const/16 v1, 0x9

    .line 38
    invoke-static {v0, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method
