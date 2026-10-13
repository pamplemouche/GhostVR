.class public LQe1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LCe1;


# instance fields
.field public w:Landroid/graphics/Bitmap;

.field public final x:LPe1;

.field public final y:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LQe1;->w:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    if-eqz v2, :cond_7

    .line 4
    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-eqz v3, :cond_7

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-eqz v4, :cond_7

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 10
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 11
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 12
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 13
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v9, Landroid/graphics/Rect;->left:I

    .line 14
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v9, Landroid/graphics/Rect;->right:I

    .line 15
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v9, Landroid/graphics/Rect;->top:I

    .line 16
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v9, Landroid/graphics/Rect;->bottom:I

    .line 17
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 18
    new-array v10, v3, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    .line 19
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 20
    :cond_5
    new-array v11, v4, [I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_6

    .line 21
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22
    :cond_6
    new-instance v2, LPe1;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, LPe1;-><init>(IILandroid/graphics/Rect;[I[I)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 23
    :catch_0
    :cond_7
    :goto_2
    iput-object v0, p0, LQe1;->x:LPe1;

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, LQe1;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, LQe1;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p1, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, LQe1;->y:Landroid/graphics/Rect;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;III)LQe1;
    .locals 7

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    if-nez p3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v4, p3, :cond_2

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v4, p2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    int-to-float v5, p3

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 9
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    :cond_3
    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 12
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v1, v0

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    iget-object v6, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_5

    move-object v1, v4

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 15
    invoke-static {v5, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 16
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    .line 17
    invoke-virtual {v5, v4, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 18
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    if-nez v1, :cond_6

    .line 19
    :try_start_0
    invoke-static {p0, p1}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p1

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p2

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 22
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 23
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 25
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p3

    goto :goto_2

    :catch_0
    move-object v1, v0

    :cond_6
    :goto_2
    if-nez v1, :cond_7

    return-object v0

    .line 26
    :cond_7
    new-instance p0, LQe1;

    invoke-direct {p0, v1}, LQe1;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, LQe1;->y:Landroid/graphics/Rect;

    return-object v0
.end method

.method public b()LPe1;
    .locals 1

    .line 1
    iget-object v0, p0, LQe1;->x:LPe1;

    return-object v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, LQe1;->w:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, LQe1;->w:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, LQe1;->x:LPe1;

    invoke-static {v0}, LGe1;->a(LPe1;)J

    move-result-wide v0

    return-wide v0
.end method
