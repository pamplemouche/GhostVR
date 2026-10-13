.class public abstract Lcd1;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final m:[Lbd1;


# instance fields
.field public final a:Ljava/util/WeakHashMap;

.field public final b:I

.field public c:Landroid/graphics/Point;

.field public d:F

.field public e:I

.field public f:I

.field public g:I

.field public h:F

.field public i:Landroid/view/Display$Mode;

.field public j:Ljava/util/List;

.field public k:Z

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lbd1;

    .line 1
    sput-object v0, Lcd1;->m:[Lbd1;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcd1;->b:I

    .line 3
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcd1;->a:Ljava/util/WeakHashMap;

    .line 4
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcd1;->c:Landroid/graphics/Point;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcd1;
    .locals 3

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 3
    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->a()Lorg/chromium/ui/display/DisplayAndroidManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 5
    iget-object v2, v0, Lorg/chromium/ui/display/DisplayAndroidManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcd1;

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 7
    new-instance v2, Lfd1;

    invoke-direct {v2, p0}, Lfd1;-><init>(Landroid/view/Display;)V

    .line 8
    iget-object v0, v0, Lorg/chromium/ui/display/DisplayAndroidManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {v2, p0}, Lfd1;->a(Landroid/view/Display;)V

    move-object v1, v2

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static c()Lorg/chromium/ui/display/DisplayAndroidManager;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->a()Lorg/chromium/ui/display/DisplayAndroidManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public a(Landroid/graphics/Point;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Landroid/view/Display$Mode;Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 11
    iget-object v6, v0, Lcd1;->c:Landroid/graphics/Point;

    invoke-virtual {v6, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 12
    iget v7, v0, Lcd1;->d:F

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz p3, :cond_2

    .line 13
    iget v8, v0, Lcd1;->e:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz p4, :cond_3

    .line 14
    iget v9, v0, Lcd1;->f:I

    .line 15
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v10, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eqz p5, :cond_4

    .line 16
    iget v10, v0, Lcd1;->g:I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v10, v11, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    if-eqz p6, :cond_5

    .line 17
    iget-boolean v11, v0, Lcd1;->k:Z

    .line 18
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eq v11, v12, :cond_5

    const/4 v11, 0x1

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    if-eqz p7, :cond_6

    .line 19
    iget-boolean v12, v0, Lcd1;->l:Z

    .line 20
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eq v12, v13, :cond_6

    const/4 v12, 0x1

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    if-eqz p8, :cond_7

    .line 21
    iget v13, v0, Lcd1;->h:F

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    :goto_7
    if-eqz v3, :cond_9

    .line 22
    iget-object v14, v0, Lcd1;->j:Ljava/util/List;

    if-nez v14, :cond_8

    goto :goto_8

    .line 23
    :cond_8
    invoke-interface {v14, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    :goto_8
    const/4 v14, 0x1

    goto :goto_9

    :cond_9
    const/4 v14, 0x0

    :goto_9
    if-eqz v2, :cond_a

    .line 24
    iget-object v15, v0, Lcd1;->i:Landroid/view/Display$Mode;

    .line 25
    invoke-virtual {v2, v15}, Landroid/view/Display$Mode;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    const/4 v15, 0x1

    goto :goto_a

    :cond_a
    const/4 v15, 0x0

    :goto_a
    if-nez v6, :cond_c

    if-nez v7, :cond_c

    if-nez v8, :cond_c

    if-nez v9, :cond_c

    if-nez v10, :cond_c

    if-nez v11, :cond_c

    if-nez v12, :cond_c

    if-nez v13, :cond_c

    if-nez v14, :cond_c

    if-eqz v15, :cond_b

    goto :goto_b

    :cond_b
    const/4 v4, 0x0

    :cond_c
    :goto_b
    if-nez v4, :cond_d

    return-void

    :cond_d
    if-eqz v6, :cond_e

    .line 26
    iput-object v1, v0, Lcd1;->c:Landroid/graphics/Point;

    :cond_e
    if-eqz v7, :cond_f

    .line 27
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcd1;->d:F

    :cond_f
    if-eqz v8, :cond_10

    .line 28
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcd1;->e:I

    :cond_10
    if-eqz v9, :cond_11

    .line 29
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcd1;->f:I

    :cond_11
    if-eqz v10, :cond_12

    .line 30
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcd1;->g:I

    :cond_12
    if-eqz v11, :cond_13

    .line 31
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcd1;->k:Z

    :cond_13
    if-eqz v12, :cond_14

    .line 32
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcd1;->l:Z

    :cond_14
    if-eqz v13, :cond_15

    .line 33
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcd1;->h:F

    :cond_15
    if-eqz v14, :cond_16

    .line 34
    iput-object v3, v0, Lcd1;->j:Ljava/util/List;

    :cond_16
    if-eqz v15, :cond_17

    .line 35
    iput-object v2, v0, Lcd1;->i:Landroid/view/Display$Mode;

    .line 36
    :cond_17
    invoke-static {}, Lcd1;->c()Lorg/chromium/ui/display/DisplayAndroidManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/ui/display/DisplayAndroidManager;->a(Lcd1;)V

    if-eqz v10, :cond_18

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcd1;->b()[Lbd1;

    move-result-object v1

    .line 38
    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_18

    aget-object v4, v1, v3

    .line 39
    iget v6, v0, Lcd1;->g:I

    invoke-interface {v4, v6}, Lbd1;->onRotationChanged(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_18
    if-eqz v7, :cond_19

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcd1;->b()[Lbd1;

    move-result-object v1

    .line 41
    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 42
    iget v6, v0, Lcd1;->d:F

    invoke-interface {v4, v6}, Lbd1;->onDIPScaleChanged(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_19
    if-eqz v13, :cond_1a

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcd1;->b()[Lbd1;

    move-result-object v1

    .line 44
    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    .line 45
    iget v6, v0, Lcd1;->h:F

    invoke-interface {v4, v6}, Lbd1;->onRefreshRateChanged(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1a
    if-eqz v14, :cond_1b

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcd1;->b()[Lbd1;

    move-result-object v1

    .line 47
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 48
    iget-object v6, v0, Lcd1;->j:Ljava/util/List;

    invoke-interface {v4, v6}, Lbd1;->onDisplayModesChanged(Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1b
    if-eqz v15, :cond_1c

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcd1;->b()[Lbd1;

    move-result-object v1

    .line 50
    array-length v2, v1

    :goto_10
    if-ge v5, v2, :cond_1c

    aget-object v3, v1, v5

    .line 51
    iget-object v4, v0, Lcd1;->i:Landroid/view/Display$Mode;

    invoke-interface {v3, v4}, Lbd1;->onCurrentModeChanged(Landroid/view/Display$Mode;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1c
    return-void
.end method

.method public final b()[Lbd1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcd1;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcd1;->m:[Lbd1;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbd1;

    return-object v0
.end method
