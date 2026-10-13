.class public LYv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:[Lcom/google/android/gms/internal/vision/zzt;

.field public b:[Landroid/graphics/Point;

.field public c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/vision/zzt;

    iput-object v0, p0, LYv;->a:[Lcom/google/android/gms/internal/vision/zzt;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LYv;->a:[Lcom/google/android/gms/internal/vision/zzt;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vision/zzt;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()[Landroid/graphics/Point;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, LYv;->b:[Landroid/graphics/Point;

    if-nez v1, :cond_4

    iget-object v1, v0, LYv;->a:[Lcom/google/android/gms/internal/vision/zzt;

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Landroid/graphics/Point;

    iput-object v1, v0, LYv;->b:[Landroid/graphics/Point;

    goto/16 :goto_3

    :cond_0
    const/high16 v1, -0x80000000

    const v3, 0x7fffffff

    const/4 v1, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    :goto_0
    iget-object v7, v0, LYv;->a:[Lcom/google/android/gms/internal/vision/zzt;

    array-length v8, v7

    const/4 v11, 0x4

    if-ge v1, v8, :cond_2

    aget-object v8, v7, v1

    iget-object v8, v8, Lcom/google/android/gms/internal/vision/zzt;->x:Lcom/google/android/gms/internal/vision/zzn;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/google/android/gms/internal/vision/zzt;->x:Lcom/google/android/gms/internal/vision/zzn;

    iget v13, v7, Lcom/google/android/gms/internal/vision/zzn;->w:I

    neg-int v13, v13

    iget v14, v7, Lcom/google/android/gms/internal/vision/zzn;->x:I

    neg-int v14, v14

    iget v15, v7, Lcom/google/android/gms/internal/vision/zzn;->A:F

    float-to-double v9, v15

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    iget v7, v7, Lcom/google/android/gms/internal/vision/zzn;->A:F

    move/from16 v16, v13

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    new-array v7, v11, [Landroid/graphics/Point;

    new-instance v15, Landroid/graphics/Point;

    iget v11, v8, Lcom/google/android/gms/internal/vision/zzn;->w:I

    iget v0, v8, Lcom/google/android/gms/internal/vision/zzn;->x:I

    invoke-direct {v15, v11, v0}, Landroid/graphics/Point;-><init>(II)V

    aput-object v15, v7, v2

    aget-object v0, v7, v2

    move/from16 v11, v16

    invoke-virtual {v0, v11, v14}, Landroid/graphics/Point;->offset(II)V

    aget-object v0, v7, v2

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v14, v0

    mul-double v14, v14, v12

    aget-object v0, v7, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v3

    int-to-double v2, v0

    mul-double v2, v2, v9

    add-double/2addr v2, v14

    double-to-int v0, v2

    const/4 v2, 0x0

    aget-object v3, v7, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    int-to-double v14, v3

    mul-double v14, v14, v9

    aget-object v3, v7, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-double v9, v3

    mul-double v9, v9, v12

    add-double/2addr v9, v14

    double-to-int v3, v9

    aget-object v9, v7, v2

    iput v0, v9, Landroid/graphics/Point;->x:I

    aget-object v9, v7, v2

    iput v3, v9, Landroid/graphics/Point;->y:I

    new-instance v2, Landroid/graphics/Point;

    iget v9, v8, Lcom/google/android/gms/internal/vision/zzn;->y:I

    add-int/2addr v9, v0

    invoke-direct {v2, v9, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v9, 0x1

    aput-object v2, v7, v9

    new-instance v2, Landroid/graphics/Point;

    iget v9, v8, Lcom/google/android/gms/internal/vision/zzn;->y:I

    add-int/2addr v9, v0

    iget v10, v8, Lcom/google/android/gms/internal/vision/zzn;->z:I

    add-int/2addr v10, v3

    invoke-direct {v2, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    const/4 v9, 0x2

    aput-object v2, v7, v9

    new-instance v2, Landroid/graphics/Point;

    iget v8, v8, Lcom/google/android/gms/internal/vision/zzn;->z:I

    add-int/2addr v3, v8

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x3

    aput-object v2, v7, v0

    move/from16 v3, v16

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    aget-object v2, v7, v0

    iget v8, v2, Landroid/graphics/Point;->x:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v8, v2, Landroid/graphics/Point;->x:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_2
    move/from16 v16, v3

    const/4 v0, 0x0

    aget-object v1, v7, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/vision/zzt;->x:Lcom/google/android/gms/internal/vision/zzn;

    iget v1, v0, Lcom/google/android/gms/internal/vision/zzn;->w:I

    iget v2, v0, Lcom/google/android/gms/internal/vision/zzn;->x:I

    iget v3, v0, Lcom/google/android/gms/internal/vision/zzn;->A:F

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    iget v0, v0, Lcom/google/android/gms/internal/vision/zzn;->A:F

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    const/4 v0, 0x4

    new-array v3, v0, [Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    move/from16 v12, v16

    invoke-direct {v0, v12, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v11, 0x0

    aput-object v0, v3, v11

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x1

    aput-object v0, v3, v4

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x2

    aput-object v0, v3, v4

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v12, v6}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x3

    aput-object v0, v3, v4

    const/4 v0, 0x4

    :goto_2
    if-ge v11, v0, :cond_3

    aget-object v4, v3, v11

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-double v4, v4

    mul-double v4, v4, v9

    aget-object v6, v3, v11

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-double v12, v6

    mul-double v12, v12, v7

    sub-double/2addr v4, v12

    double-to-int v4, v4

    aget-object v5, v3, v11

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v5, v5

    mul-double v5, v5, v7

    aget-object v12, v3, v11

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-double v12, v12

    mul-double v12, v12, v9

    add-double/2addr v12, v5

    double-to-int v5, v12

    aget-object v6, v3, v11

    iput v4, v6, Landroid/graphics/Point;->x:I

    aget-object v4, v3, v11

    iput v5, v4, Landroid/graphics/Point;->y:I

    aget-object v4, v3, v11

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Point;->offset(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v4, p0

    iput-object v3, v4, LYv;->b:[Landroid/graphics/Point;

    goto :goto_4

    :cond_4
    :goto_3
    move-object v4, v0

    :goto_4
    iget-object v0, v4, LYv;->b:[Landroid/graphics/Point;

    return-object v0
.end method
