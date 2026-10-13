.class public Lpa1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnb1;


# instance fields
.field public w:LZv;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/vision/zzaa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/vision/zzaa;-><init>()V

    .line 4
    new-instance v2, Lou;

    invoke-direct {v2, v0, v1}, Lou;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzaa;)V

    new-instance v0, LZv;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, LZv;-><init>(Lou;Law;)V

    .line 5
    iput-object v0, p0, Lpa1;->w:LZv;

    return-void
.end method

.method public static a()Lnb1;
    .locals 3

    .line 1
    sget-object v0, Ldm;->d:Ldm;

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, v1}, Ldm;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TextDetectionImpl"

    const-string v2, "Google Play Services not available"

    .line 4
    invoke-static {v1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lpa1;

    invoke-direct {v0}, Lpa1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lxb1;Llb1;)V
    .locals 18

    move-object/from16 v1, p0

    .line 6
    iget-object v0, v1, Lpa1;->w:LZv;

    .line 7
    iget-object v0, v0, LZv;->b:Lou;

    invoke-virtual {v0}, Leu;->a()Z

    move-result v0

    const-string v2, "TextDetectionImpl"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "TextDetector is not operational"

    .line 8
    invoke-static {v2, v4, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v3, [Lob1;

    .line 9
    move-object/from16 v2, p2

    check-cast v2, Lvb1;

    invoke-virtual {v2, v0}, Lvb1;->a(Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_0
    invoke-static/range {p1 .. p1}, Lka1;->b(Lxb1;)Lwv;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "Error converting Mojom Bitmap to Frame"

    .line 11
    invoke-static {v2, v4, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v3, [Lob1;

    .line 12
    move-object/from16 v2, p2

    check-cast v2, Lvb1;

    invoke-virtual {v2, v0}, Lvb1;->a(Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_1
    iget-object v2, v1, Lpa1;->w:LZv;

    if-eqz v2, :cond_19

    .line 14
    new-instance v4, Lcom/google/android/gms/internal/vision/zzv;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/vision/zzv;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzk;->a(Lwv;)Lcom/google/android/gms/internal/vision/zzk;

    move-result-object v5

    .line 15
    iget-object v6, v0, Lwv;->c:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    :goto_0
    move-object v7, v6

    goto :goto_2

    .line 16
    :cond_2
    iget-object v6, v0, Lwv;->a:Lvv;

    .line 17
    invoke-virtual {v0}, Lwv;->a()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 18
    iget v10, v6, Lvv;->c:I

    .line 19
    iget v6, v5, Lcom/google/android/gms/internal/vision/zzk;->w:I

    iget v14, v5, Lcom/google/android/gms/internal/vision/zzk;->x:I

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    move-object v9, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    new-array v8, v8, [B

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v9, v8

    :goto_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v15, Landroid/graphics/YuvImage;

    const/4 v13, 0x0

    move-object v8, v15

    move v11, v6

    move v12, v14

    invoke-direct/range {v8 .. v13}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3, v3, v6, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v6, 0x64

    invoke-virtual {v15, v8, v6, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v7, v6

    invoke-static {v6, v3, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 20
    :goto_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    iget v8, v5, Lcom/google/android/gms/internal/vision/zzk;->A:I

    const/4 v15, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x1

    if-eqz v8, :cond_8

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    iget v8, v5, Lcom/google/android/gms/internal/vision/zzk;->A:I

    if-eqz v8, :cond_7

    if-eq v8, v12, :cond_6

    if-eq v8, v15, :cond_5

    if-ne v8, v13, :cond_4

    const/16 v8, 0x10e

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported rotation degree."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/16 v8, 0xb4

    goto :goto_3

    :cond_6
    const/16 v8, 0x5a

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    int-to-float v8, v8

    invoke-virtual {v11, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move v10, v6

    move-object/from16 v17, v11

    move v11, v14

    const/4 v3, 0x1

    move-object/from16 v12, v17

    const/4 v15, 0x3

    move/from16 v13, v16

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_4

    :cond_8
    const/4 v3, 0x1

    const/4 v15, 0x3

    :goto_4
    iget v8, v5, Lcom/google/android/gms/internal/vision/zzk;->A:I

    if-eq v8, v3, :cond_9

    if-ne v8, v15, :cond_a

    :cond_9
    iput v14, v5, Lcom/google/android/gms/internal/vision/zzk;->w:I

    iput v6, v5, Lcom/google/android/gms/internal/vision/zzk;->x:I

    .line 21
    :cond_a
    iget-object v6, v4, Lcom/google/android/gms/internal/vision/zzv;->w:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, v4, Lcom/google/android/gms/internal/vision/zzv;->w:Landroid/graphics/Rect;

    .line 22
    iget-object v0, v0, Lwv;->a:Lvv;

    .line 23
    iget v8, v0, Lvv;->a:I

    .line 24
    iget v0, v0, Lvv;->b:I

    .line 25
    iget v9, v5, Lcom/google/android/gms/internal/vision/zzk;->A:I

    if-eq v9, v3, :cond_d

    const/4 v10, 0x2

    if-eq v9, v10, :cond_c

    if-eq v9, v15, :cond_b

    move-object v0, v6

    goto :goto_5

    :cond_b
    new-instance v0, Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/graphics/Rect;->right:I

    sub-int v10, v8, v10

    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v6

    invoke-direct {v0, v9, v10, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_5

    :cond_c
    new-instance v9, Landroid/graphics/Rect;

    iget v10, v6, Landroid/graphics/Rect;->right:I

    sub-int v10, v8, v10

    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v0, v11

    iget v12, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v12

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v6

    invoke-direct {v9, v10, v11, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v9

    goto :goto_5

    :cond_d
    new-instance v8, Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v0, v9

    iget v10, v6, Landroid/graphics/Rect;->left:I

    iget v11, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v11

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-direct {v8, v9, v10, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v8

    :goto_5
    iget-object v6, v4, Lcom/google/android/gms/internal/vision/zzv;->w:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_e
    const/4 v6, 0x0

    iput v6, v5, Lcom/google/android/gms/internal/vision/zzk;->A:I

    iget-object v0, v2, LZv;->b:Lou;

    .line 26
    invoke-virtual {v0}, Leu;->a()Z

    move-result v2

    if-nez v2, :cond_f

    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    .line 27
    :cond_f
    :try_start_0
    new-instance v2, Leq;

    invoke-direct {v2, v7}, Leq;-><init>(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v0}, Leu;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhu;

    check-cast v0, Liu;

    .line 29
    invoke-virtual {v0}, LUt;->A()Landroid/os/Parcel;

    move-result-object v6

    invoke-static {v6, v2}, LXt;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v6, v5}, LXt;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v6, v4}, LXt;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v15, v6}, LUt;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/vision/zzt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/vision/zzt;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_8

    :catch_0
    move-exception v0

    const-string v2, "TextNativeHandle"

    const-string v4, "Error calling native text recognizer"

    .line 30
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_7
    new-array v0, v2, [Lcom/google/android/gms/internal/vision/zzt;

    .line 31
    :goto_8
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    array-length v4, v0

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_11

    aget-object v6, v0, v5

    iget v7, v6, Lcom/google/android/gms/internal/vision/zzt;->F:I

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    if-nez v7, :cond_10

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iget v8, v6, Lcom/google/android/gms/internal/vision/zzt;->F:I

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_10
    iget v8, v6, Lcom/google/android/gms/internal/vision/zzt;->G:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_11
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    new-instance v6, LYv;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    invoke-direct {v6, v7}, LYv;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 32
    :cond_12
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [Lob1;

    const/4 v4, 0x0

    .line 33
    :goto_b
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_18

    .line 34
    new-instance v5, Lob1;

    invoke-direct {v5}, Lob1;-><init>()V

    aput-object v5, v2, v4

    .line 35
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LYv;

    .line 36
    aget-object v6, v2, v4

    .line 37
    iget-object v7, v5, LYv;->a:[Lcom/google/android/gms/internal/vision/zzt;

    array-length v8, v7

    if-nez v8, :cond_13

    const-string v7, ""

    const/4 v9, 0x0

    goto :goto_d

    :cond_13
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-object v7, v7, v9

    iget-object v7, v7, Lcom/google/android/gms/internal/vision/zzt;->A:Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    :goto_c
    iget-object v10, v5, LYv;->a:[Lcom/google/android/gms/internal/vision/zzt;

    array-length v10, v10

    if-ge v7, v10, :cond_14

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, LYv;->a:[Lcom/google/android/gms/internal/vision/zzt;

    aget-object v10, v10, v7

    iget-object v10, v10, Lcom/google/android/gms/internal/vision/zzt;->A:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_14
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 38
    :goto_d
    iput-object v7, v6, Lob1;->b:Ljava/lang/String;

    .line 39
    iget-object v6, v5, LYv;->c:Landroid/graphics/Rect;

    if-nez v6, :cond_16

    .line 40
    invoke-virtual {v5}, LYv;->a()[Landroid/graphics/Point;

    move-result-object v6

    array-length v7, v6

    const/high16 v8, -0x80000000

    const v10, 0x7fffffff

    const/4 v8, 0x0

    const v11, 0x7fffffff

    const/high16 v12, -0x80000000

    const/high16 v13, -0x80000000

    :goto_e
    if-ge v8, v7, :cond_15

    aget-object v14, v6, v8

    iget v15, v14, Landroid/graphics/Point;->x:I

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v15, v14, Landroid/graphics/Point;->x:I

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v15, v14, Landroid/graphics/Point;->y:I

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v14, v14, Landroid/graphics/Point;->y:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_15
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 41
    iput-object v6, v5, LYv;->c:Landroid/graphics/Rect;

    :cond_16
    iget-object v6, v5, LYv;->c:Landroid/graphics/Rect;

    .line 42
    aget-object v7, v2, v4

    new-instance v8, LX31;

    invoke-direct {v8}, LX31;-><init>()V

    iput-object v8, v7, Lob1;->c:LX31;

    .line 43
    aget-object v7, v2, v4

    iget-object v7, v7, Lob1;->c:LX31;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iput v8, v7, LX31;->b:F

    .line 44
    aget-object v7, v2, v4

    iget-object v7, v7, Lob1;->c:LX31;

    iget v8, v6, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iput v8, v7, LX31;->c:F

    .line 45
    aget-object v7, v2, v4

    iget-object v7, v7, Lob1;->c:LX31;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, LX31;->d:F

    .line 46
    aget-object v7, v2, v4

    iget-object v7, v7, Lob1;->c:LX31;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iput v6, v7, LX31;->e:F

    .line 47
    invoke-virtual {v5}, LYv;->a()[Landroid/graphics/Point;

    move-result-object v5

    .line 48
    aget-object v6, v2, v4

    array-length v7, v5

    new-array v7, v7, [LW31;

    iput-object v7, v6, Lob1;->d:[LW31;

    const/4 v6, 0x0

    .line 49
    :goto_f
    array-length v7, v5

    if-ge v6, v7, :cond_17

    .line 50
    aget-object v7, v2, v4

    iget-object v7, v7, Lob1;->d:[LW31;

    new-instance v8, LW31;

    invoke-direct {v8}, LW31;-><init>()V

    aput-object v8, v7, v6

    .line 51
    aget-object v7, v2, v4

    iget-object v7, v7, Lob1;->d:[LW31;

    aget-object v7, v7, v6

    aget-object v8, v5, v6

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iput v8, v7, LW31;->b:F

    .line 52
    aget-object v7, v2, v4

    iget-object v7, v7, Lob1;->d:[LW31;

    aget-object v7, v7, v6

    aget-object v8, v5, v6

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iput v8, v7, LW31;->c:F

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 53
    :cond_18
    move-object/from16 v0, p2

    check-cast v0, Lvb1;

    invoke-virtual {v0, v2}, Lvb1;->a(Ljava/lang/Object;)V

    return-void

    :cond_19
    const/4 v0, 0x0

    .line 54
    throw v0
.end method

.method public a(Ly71;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lpa1;->w:LZv;

    invoke-virtual {p1}, LZv;->a()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lpa1;->w:LZv;

    invoke-virtual {v0}, LZv;->a()V

    return-void
.end method
