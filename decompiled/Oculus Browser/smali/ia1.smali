.class public Lia1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsa1;


# instance fields
.field public w:Lxv;


# direct methods
.method public constructor <init>(LOa1;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, LOa1;->b:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    array-length v0, v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p1, LOa1;->b:[I

    array-length v4, v3

    if-ge v0, v4, :cond_d

    .line 4
    aget v4, v3, v0

    if-nez v4, :cond_0

    or-int/lit16 v2, v2, 0x1000

    goto/16 :goto_1

    .line 5
    :cond_0
    aget v4, v3, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    or-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 6
    :cond_1
    aget v4, v3, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    or-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    .line 7
    :cond_2
    aget v4, v3, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    or-int/lit8 v2, v2, 0x4

    goto/16 :goto_1

    .line 8
    :cond_3
    aget v4, v3, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    or-int/lit8 v2, v2, 0x8

    goto :goto_1

    .line 9
    :cond_4
    aget v4, v3, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    .line 10
    :cond_5
    aget v4, v3, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    or-int/lit8 v2, v2, 0x20

    goto :goto_1

    .line 11
    :cond_6
    aget v4, v3, v0

    const/4 v5, 0x7

    if-ne v4, v5, :cond_7

    or-int/lit8 v2, v2, 0x40

    goto :goto_1

    .line 12
    :cond_7
    aget v4, v3, v0

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8

    or-int/lit16 v2, v2, 0x80

    goto :goto_1

    .line 13
    :cond_8
    aget v4, v3, v0

    const/16 v5, 0x9

    if-ne v4, v5, :cond_9

    or-int/lit16 v2, v2, 0x800

    goto :goto_1

    .line 14
    :cond_9
    aget v4, v3, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_a

    or-int/lit16 v2, v2, 0x100

    goto :goto_1

    .line 15
    :cond_a
    aget v4, v3, v0

    const/16 v5, 0xc

    if-ne v4, v5, :cond_b

    or-int/lit16 v2, v2, 0x200

    goto :goto_1

    .line 16
    :cond_b
    aget v3, v3, v0

    const/16 v4, 0xd

    if-ne v3, v4, :cond_c

    or-int/lit16 v2, v2, 0x400

    goto :goto_1

    :cond_c
    const-string v3, "Unsupported barcode format hint: "

    .line 17
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, LOa1;->b:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "BarcodeDetectionImpl"

    invoke-static {v5, v3, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    move v1, v2

    .line 18
    :cond_e
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/vision/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzc;-><init>()V

    .line 20
    iput v1, v0, Lcom/google/android/gms/internal/vision/zzc;->w:I

    .line 21
    new-instance v1, LZt;

    invoke-direct {v1, p1, v0}, LZt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzc;)V

    new-instance p1, Lxv;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, Lxv;-><init>(LZt;LAv;)V

    .line 22
    iput-object p1, p0, Lia1;->w:Lxv;

    return-void
.end method


# virtual methods
.method public a(Lxb1;Lqa1;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lia1;->w:Lxv;

    .line 2
    iget-object v0, v0, Lxv;->b:LZt;

    invoke-virtual {v0}, Leu;->a()Z

    move-result v0

    const-string v1, "BarcodeDetectionImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "BarcodeDetector is not operational"

    .line 3
    invoke-static {v1, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v2, [LFa1;

    .line 4
    check-cast p2, LKa1;

    invoke-virtual {p2, p1}, LKa1;->a(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lka1;->b(Lxb1;)Lwv;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Error converting Mojom Bitmap to Frame"

    .line 6
    invoke-static {v1, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v2, [LFa1;

    .line 7
    check-cast p2, LKa1;

    invoke-virtual {p2, p1}, LKa1;->a(Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lia1;->w:Lxv;

    if-eqz v0, :cond_c

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzk;->a(Lwv;)Lcom/google/android/gms/internal/vision/zzk;

    move-result-object v1

    .line 10
    iget-object v3, p1, Lwv;->c:Landroid/graphics/Bitmap;

    const-string v4, "Error calling native barcode detector"

    const-string v5, "BarcodeNativeHandle"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    .line 11
    iget-object p1, v0, Lxv;->b:LZt;

    .line 12
    invoke-virtual {p1}, Leu;->a()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    :try_start_0
    new-instance v0, Leq;

    invoke-direct {v0, v3}, Leq;-><init>(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Leu;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lau;

    check-cast p1, Lbu;

    .line 15
    invoke-virtual {p1}, LUt;->A()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v0}, LXt;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v3, v1}, LXt;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v6, v3}, LUt;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    invoke-static {v5, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-array v0, v2, [Lcom/google/android/gms/vision/barcode/Barcode;

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_3

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Internal barcode detector error; check logcat output."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p1}, Lwv;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, v0, Lxv;->b:LZt;

    .line 18
    invoke-virtual {v0}, Leu;->a()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    :try_start_1
    new-instance v3, Leq;

    invoke-direct {v3, p1}, Leq;-><init>(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0}, Leu;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lau;

    check-cast p1, Lbu;

    .line 21
    invoke-virtual {p1}, LUt;->A()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, v3}, LXt;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, v1}, LXt;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v7, v0}, LUt;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 22
    invoke-static {v5, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    new-array v0, v2, [Lcom/google/android/gms/vision/barcode/Barcode;

    .line 23
    :goto_3
    new-instance p1, Landroid/util/SparseArray;

    array-length v1, v0

    invoke-direct {p1, v1}, Landroid/util/SparseArray;-><init>(I)V

    array-length v1, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/google/android/gms/vision/barcode/Barcode;->x:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 24
    :cond_6
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [LFa1;

    const/4 v1, 0x0

    .line 25
    :goto_5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 26
    new-instance v3, LFa1;

    invoke-direct {v3}, LFa1;-><init>()V

    aput-object v3, v0, v1

    .line 27
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 28
    aget-object v4, v0, v1

    iget-object v5, v3, Lcom/google/android/gms/vision/barcode/Barcode;->x:Ljava/lang/String;

    iput-object v5, v4, LFa1;->b:Ljava/lang/String;

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    const/4 v4, 0x0

    const v8, 0x7fffffff

    const/high16 v9, -0x80000000

    const/high16 v10, -0x80000000

    .line 29
    :goto_6
    iget-object v11, v3, Lcom/google/android/gms/vision/barcode/Barcode;->A:[Landroid/graphics/Point;

    array-length v12, v11

    if-ge v4, v12, :cond_7

    aget-object v11, v11, v4

    iget v12, v11, Landroid/graphics/Point;->x:I

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v12, v11, Landroid/graphics/Point;->x:I

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v12, v11, Landroid/graphics/Point;->y:I

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 30
    aget-object v5, v0, v1

    new-instance v8, LX31;

    invoke-direct {v8}, LX31;-><init>()V

    iput-object v8, v5, LFa1;->c:LX31;

    .line 31
    aget-object v5, v0, v1

    iget-object v5, v5, LFa1;->c:LX31;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iput v8, v5, LX31;->b:F

    .line 32
    aget-object v5, v0, v1

    iget-object v5, v5, LFa1;->c:LX31;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iput v8, v5, LX31;->c:F

    .line 33
    aget-object v5, v0, v1

    iget-object v5, v5, LFa1;->c:LX31;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iput v8, v5, LX31;->d:F

    .line 34
    aget-object v5, v0, v1

    iget-object v5, v5, LFa1;->c:LX31;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iput v4, v5, LX31;->e:F

    .line 35
    iget-object v4, v3, Lcom/google/android/gms/vision/barcode/Barcode;->A:[Landroid/graphics/Point;

    .line 36
    aget-object v5, v0, v1

    array-length v8, v4

    new-array v8, v8, [LW31;

    iput-object v8, v5, LFa1;->e:[LW31;

    const/4 v5, 0x0

    .line 37
    :goto_7
    array-length v8, v4

    if-ge v5, v8, :cond_8

    .line 38
    aget-object v8, v0, v1

    iget-object v8, v8, LFa1;->e:[LW31;

    new-instance v9, LW31;

    invoke-direct {v9}, LW31;-><init>()V

    aput-object v9, v8, v5

    .line 39
    aget-object v8, v0, v1

    iget-object v8, v8, LFa1;->e:[LW31;

    aget-object v8, v8, v5

    aget-object v9, v4, v5

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iput v9, v8, LW31;->b:F

    .line 40
    aget-object v8, v0, v1

    iget-object v8, v8, LFa1;->e:[LW31;

    aget-object v8, v8, v5

    aget-object v9, v4, v5

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iput v9, v8, LW31;->c:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 41
    :cond_8
    aget-object v4, v0, v1

    iget v3, v3, Lcom/google/android/gms/vision/barcode/Barcode;->w:I

    if-eq v3, v7, :cond_a

    if-eq v3, v6, :cond_9

    sparse-switch v3, :sswitch_data_0

    const/16 v3, 0xb

    goto :goto_8

    :sswitch_0
    const/4 v3, 0x0

    goto :goto_8

    :sswitch_1
    const/16 v3, 0x9

    goto :goto_8

    :sswitch_2
    const/16 v3, 0xd

    goto :goto_8

    :sswitch_3
    const/16 v3, 0xc

    goto :goto_8

    :sswitch_4
    const/16 v3, 0xa

    goto :goto_8

    :sswitch_5
    const/16 v3, 0x8

    goto :goto_8

    :sswitch_6
    const/4 v3, 0x7

    goto :goto_8

    :sswitch_7
    const/4 v3, 0x6

    goto :goto_8

    :sswitch_8
    const/4 v3, 0x5

    goto :goto_8

    :sswitch_9
    const/4 v3, 0x4

    goto :goto_8

    :sswitch_a
    const/4 v3, 0x3

    goto :goto_8

    :cond_9
    const/4 v3, 0x2

    goto :goto_8

    :cond_a
    const/4 v3, 0x1

    :goto_8
    iput v3, v4, LFa1;->d:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 42
    :cond_b
    check-cast p2, LKa1;

    invoke-virtual {p2, v0}, LKa1;->a(Ljava/lang/Object;)V

    return-void

    :cond_c
    const/4 p1, 0x0

    .line 43
    throw p1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x20 -> :sswitch_7
        0x40 -> :sswitch_6
        0x80 -> :sswitch_5
        0x100 -> :sswitch_4
        0x200 -> :sswitch_3
        0x400 -> :sswitch_2
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ly71;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lia1;->w:Lxv;

    invoke-virtual {p1}, Lxv;->a()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lia1;->w:Lxv;

    invoke-virtual {v0}, Lxv;->a()V

    return-void
.end method
