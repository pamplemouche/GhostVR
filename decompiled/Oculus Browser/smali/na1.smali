.class public Lna1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LSa1;


# instance fields
.field public final w:I

.field public final x:Z

.field public final y:LNv;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lna1;

    return-void
.end method

.method public constructor <init>(Ljb1;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LzT;->a:Landroid/content/Context;

    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    iget v2, p1, Ljb1;->b:I

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lna1;->w:I

    .line 4
    iget-boolean p1, p1, Ljb1;->c:Z

    iput-boolean p1, p0, Lna1;->x:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const/16 v5, 0x19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid mode: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 6
    :cond_2
    :goto_1
    :try_start_1
    iget v4, p0, Lna1;->w:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v4, v3, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    goto :goto_5

    :catch_1
    move-exception v4

    const/4 v5, 0x1

    move-object v8, v4

    move v4, p1

    move-object p1, v8

    goto :goto_4

    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "FaceDetectionImpl"

    invoke-static {v7, p1, v6}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v4

    const/4 v4, 0x0

    .line 8
    :goto_5
    new-instance v6, Lcom/google/android/gms/vision/face/internal/client/zzc;

    invoke-direct {v6}, Lcom/google/android/gms/vision/face/internal/client/zzc;-><init>()V

    iput p1, v6, Lcom/google/android/gms/vision/face/internal/client/zzc;->w:I

    iput v5, v6, Lcom/google/android/gms/vision/face/internal/client/zzc;->x:I

    iput v2, v6, Lcom/google/android/gms/vision/face/internal/client/zzc;->y:I

    iput-boolean v4, v6, Lcom/google/android/gms/vision/face/internal/client/zzc;->z:Z

    iput-boolean v3, v6, Lcom/google/android/gms/vision/face/internal/client/zzc;->A:Z

    iput v1, v6, Lcom/google/android/gms/vision/face/internal/client/zzc;->B:F

    new-instance p1, LPv;

    invoke-direct {p1, v0, v6}, LPv;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/face/internal/client/zzc;)V

    new-instance v0, LNv;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LNv;-><init>(LPv;LXv;)V

    .line 9
    iput-object v0, p0, Lna1;->y:LNv;

    return-void
.end method


# virtual methods
.method public a(Lxb1;LQa1;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lna1;->y:LNv;

    .line 2
    iget-object v2, v2, LNv;->c:LPv;

    invoke-virtual {v2}, Leu;->a()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "FaceDetectionImpl"

    if-nez v2, :cond_0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "FaceDetector is not operational"

    .line 3
    invoke-static {v4, v3, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v2, Ljb1;

    invoke-direct {v2}, Ljb1;-><init>()V

    .line 5
    iget-boolean v3, v0, Lna1;->x:Z

    iput-boolean v3, v2, Ljb1;->c:Z

    .line 6
    iget v3, v0, Lna1;->w:I

    iput v3, v2, Ljb1;->b:I

    .line 7
    new-instance v3, Lma1;

    invoke-direct {v3, v2}, Lma1;-><init>(Ljb1;)V

    move-object/from16 v2, p1

    .line 8
    invoke-virtual {v3, v2, v1}, Lma1;->a(Lxb1;LQa1;)V

    return-void

    :cond_0
    move-object/from16 v2, p1

    .line 9
    invoke-static/range {p1 .. p1}, Lka1;->b(Lxb1;)Lwv;

    move-result-object v2

    if-nez v2, :cond_1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v5, "Error converting Mojom Bitmap to Frame"

    .line 10
    invoke-static {v4, v5, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v3, [Lab1;

    .line 11
    check-cast v1, Lfb1;

    invoke-virtual {v1, v2}, Lfb1;->a(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_1
    iget-object v4, v0, Lna1;->y:LNv;

    invoke-virtual {v4, v2}, LNv;->a(Lwv;)Landroid/util/SparseArray;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    new-array v4, v4, [Lab1;

    const/4 v5, 0x0

    .line 14
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 15
    new-instance v6, Lab1;

    invoke-direct {v6}, Lab1;-><init>()V

    aput-object v6, v4, v5

    .line 16
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LMv;

    .line 17
    iget-object v7, v6, LMv;->f:Ljava/util/List;

    .line 18
    new-instance v8, Ljava/util/ArrayList;

    .line 19
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    .line 20
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v10, v14, :cond_6

    .line 21
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LOv;

    .line 22
    iget v15, v14, LOv;->b:I

    const/4 v9, 0x4

    const/16 v3, 0xa

    if-eq v15, v9, :cond_2

    if-eq v15, v3, :cond_2

    if-eqz v15, :cond_2

    const/4 v3, 0x6

    if-eq v15, v3, :cond_2

    move-object/from16 v16, v2

    const/4 v9, 0x0

    goto :goto_3

    .line 23
    :cond_2
    new-instance v3, Lkb1;

    invoke-direct {v3}, Lkb1;-><init>()V

    const/4 v9, 0x1

    new-array v0, v9, [LW31;

    .line 24
    iput-object v0, v3, Lkb1;->b:[LW31;

    .line 25
    new-instance v17, LW31;

    invoke-direct/range {v17 .. v17}, LW31;-><init>()V

    const/4 v9, 0x0

    aput-object v17, v0, v9

    .line 26
    iget-object v0, v3, Lkb1;->b:[LW31;

    move-object/from16 v16, v2

    aget-object v2, v0, v9

    .line 27
    iget-object v14, v14, LOv;->a:Landroid/graphics/PointF;

    .line 28
    iget v1, v14, Landroid/graphics/PointF;->x:F

    iput v1, v2, LW31;->b:F

    .line 29
    aget-object v0, v0, v9

    iget v1, v14, Landroid/graphics/PointF;->y:F

    iput v1, v0, LW31;->c:F

    const/4 v0, 0x4

    if-ne v15, v0, :cond_3

    const/4 v0, 0x1

    .line 30
    iput v0, v3, Lkb1;->c:I

    move v11, v10

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    const/16 v1, 0xa

    if-ne v15, v1, :cond_4

    .line 31
    iput v0, v3, Lkb1;->c:I

    move v12, v10

    goto :goto_2

    :cond_4
    if-nez v15, :cond_5

    .line 32
    iput v9, v3, Lkb1;->c:I

    move v13, v10

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    .line 33
    iput v0, v3, Lkb1;->c:I

    .line 34
    :goto_2
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    goto :goto_1

    :cond_6
    move-object/from16 v16, v2

    const/4 v9, 0x0

    .line 35
    aget-object v0, v4, v5

    .line 36
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lkb1;

    .line 37
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lkb1;

    iput-object v1, v0, Lab1;->c:[Lkb1;

    .line 38
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, v6, LMv;->b:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v6, LMv;->c:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v6, LMv;->d:F

    div-float/2addr v3, v8

    sub-float/2addr v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 39
    aget-object v1, v4, v5

    new-instance v2, LX31;

    invoke-direct {v2}, LX31;-><init>()V

    iput-object v2, v1, Lab1;->b:LX31;

    const/4 v1, -0x1

    if-eq v11, v1, :cond_9

    if-eq v12, v1, :cond_9

    .line 40
    iget v1, v6, LMv;->e:F

    .line 41
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 42
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOv;

    .line 43
    iget-object v1, v1, LOv;->a:Landroid/graphics/PointF;

    .line 44
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOv;

    .line 45
    iget-object v2, v2, LOv;->a:Landroid/graphics/PointF;

    .line 46
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v10

    const/4 v10, -0x1

    if-eq v13, v10, :cond_7

    .line 47
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LOv;

    .line 48
    iget-object v7, v7, LOv;->a:Landroid/graphics/PointF;

    .line 49
    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v10

    goto :goto_4

    :cond_7
    const/high16 v7, -0x40800000    # -1.0f

    .line 50
    :goto_4
    new-instance v10, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 51
    iget v6, v6, LMv;->c:F

    div-float/2addr v6, v8

    add-float/2addr v6, v0

    .line 52
    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v10, v6, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 53
    aget-object v0, v4, v5

    iget-object v0, v0, Lab1;->b:LX31;

    iget v1, v2, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v8

    iget v2, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, LX31;->b:F

    .line 54
    aget-object v0, v4, v5

    iget-object v0, v0, Lab1;->b:LX31;

    iget v1, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    iput v1, v0, LX31;->c:F

    .line 55
    aget-object v0, v4, v5

    iget-object v0, v0, Lab1;->b:LX31;

    mul-float v8, v8, v3

    iput v8, v0, LX31;->d:F

    .line 56
    aget-object v0, v4, v5

    iget-object v0, v0, Lab1;->b:LX31;

    cmpl-float v1, v7, v3

    if-lez v1, :cond_8

    add-float v8, v7, v3

    .line 57
    :cond_8
    iput v8, v0, LX31;->e:F

    goto :goto_5

    .line 58
    :cond_9
    aget-object v1, v4, v5

    iget-object v1, v1, Lab1;->b:LX31;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iput v2, v1, LX31;->b:F

    .line 59
    aget-object v1, v4, v5

    iget-object v1, v1, Lab1;->b:LX31;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, LX31;->c:F

    .line 60
    aget-object v0, v4, v5

    iget-object v0, v0, Lab1;->b:LX31;

    .line 61
    iget v1, v6, LMv;->c:F

    .line 62
    iput v1, v0, LX31;->d:F

    .line 63
    aget-object v0, v4, v5

    iget-object v0, v0, Lab1;->b:LX31;

    .line 64
    iget v1, v6, LMv;->d:F

    .line 65
    iput v1, v0, LX31;->e:F

    :goto_5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 66
    :cond_a
    move-object/from16 v0, p2

    check-cast v0, Lfb1;

    invoke-virtual {v0, v4}, Lfb1;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ly71;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lna1;->y:LNv;

    invoke-virtual {p1}, LNv;->a()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lna1;->y:LNv;

    invoke-virtual {v0}, LNv;->a()V

    return-void
.end method
