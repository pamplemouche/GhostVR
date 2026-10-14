.class Landroid/support/v7/widget/iw;
.super Ljava/lang/Object;


# static fields
.field private static p:F

.field private static final q:[F

.field private static r:F

.field private static final s:[[F

.field private static final t:[[F

.field private static u:[F

.field private static v:[F

.field private static w:Z

.field private static x:Z


# instance fields
.field private A:J

.field private B:I

.field private C:Z

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:J

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:F

.field private n:I

.field private o:F

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/support/v7/widget/iw;->p:F

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/v7/widget/iw;->q:[F

    sget-object v1, Landroid/support/v7/widget/iw;->q:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sput v1, Landroid/support/v7/widget/iw;->r:F

    const/16 v1, 0x65

    filled-new-array {v0, v1}, [I

    move-result-object v3

    const-class v4, F

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Landroid/support/v7/widget/iw;->s:[[F

    filled-new-array {v0, v1}, [I

    move-result-object v1

    const-class v3, F

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    sput-object v1, Landroid/support/v7/widget/iw;->t:[[F

    sget-object v1, Landroid/support/v7/widget/iw;->s:[[F

    aget-object v1, v1, v2

    sput-object v1, Landroid/support/v7/widget/iw;->u:[F

    sget-object v1, Landroid/support/v7/widget/iw;->t:[[F

    aget-object v1, v1, v2

    sput-object v1, Landroid/support/v7/widget/iw;->v:[F

    sput-boolean v2, Landroid/support/v7/widget/iw;->w:Z

    sput-boolean v2, Landroid/support/v7/widget/iw;->x:Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    sget-object v3, Landroid/support/v7/widget/iw;->q:[F

    aget v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    aget v3, v3, v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v3

    mul-float v3, v3, v6

    sub-float v3, v6, v3

    const/4 v7, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    const/16 v10, 0x64

    if-ge v7, v10, :cond_4

    int-to-float v10, v7

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v11, v10, v11

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_2
    sub-float v12, v10, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v8

    const/high16 v14, 0x40400000    # 3.0f

    mul-float v15, v12, v14

    sub-float v16, v6, v12

    mul-float v15, v15, v16

    mul-float v17, v16, v4

    mul-float v18, v12, v3

    add-float v17, v17, v18

    mul-float v17, v17, v15

    mul-float v18, v12, v12

    mul-float v18, v18, v12

    add-float v17, v17, v18

    sub-float v19, v17, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v13, v0

    const-wide v20, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v13, v20

    if-gez v0, :cond_2

    sget-object v0, Landroid/support/v7/widget/iw;->s:[[F

    aget-object v0, v0, v2

    mul-float v16, v16, v5

    add-float v16, v16, v12

    mul-float v15, v15, v16

    add-float v15, v15, v18

    aput v15, v0, v7

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    sub-float v10, v0, v9

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v10, v13

    add-float/2addr v10, v9

    const/high16 v14, 0x40400000    # 3.0f

    mul-float v12, v10, v14

    sub-float v15, v6, v10

    mul-float v12, v12, v15

    mul-float v16, v15, v5

    add-float v16, v16, v10

    mul-float v16, v16, v12

    mul-float v17, v10, v10

    mul-float v17, v17, v10

    add-float v16, v16, v17

    sub-float v18, v16, v11

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v13, v1

    cmpg-double v1, v13, v20

    if-gez v1, :cond_0

    sget-object v0, Landroid/support/v7/widget/iw;->t:[[F

    aget-object v0, v0, v2

    mul-float v15, v15, v4

    mul-float v10, v10, v3

    add-float/2addr v15, v10

    mul-float v12, v12, v15

    add-float v12, v12, v17

    aput v12, v0, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    cmpl-float v1, v16, v11

    if-lez v1, :cond_1

    move v0, v10

    goto :goto_3

    :cond_1
    move v9, v10

    goto :goto_3

    :cond_2
    cmpl-float v0, v17, v11

    if-lez v0, :cond_3

    move v10, v12

    goto :goto_4

    :cond_3
    move v8, v12

    :goto_4
    const/4 v0, 0x2

    goto/16 :goto_2

    :cond_4
    sget-object v0, Landroid/support/v7/widget/iw;->s:[[F

    aget-object v0, v0, v2

    sget-object v1, Landroid/support/v7/widget/iw;->t:[[F

    aget-object v1, v1, v2

    aput v6, v1, v10

    aput v6, v0, v10

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x3eb33333    # 0.35f
        0x3e6147ae    # 0.22f
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/iw;->m:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/iw;->n:I

    iput v0, p0, Landroid/support/v7/widget/iw;->y:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/support/v7/widget/iw;->z:J

    iput-wide v1, p0, Landroid/support/v7/widget/iw;->A:J

    iput-boolean v0, p0, Landroid/support/v7/widget/iw;->C:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/iw;->k:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float v0, v0, v1

    const v1, 0x43c10b3d

    mul-float v0, v0, v1

    const v1, 0x3f570a3d    # 0.84f

    mul-float v0, v0, v1

    iput v0, p0, Landroid/support/v7/widget/iw;->o:F

    sget-boolean v0, Landroid/support/v7/widget/iw;->w:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/iw;->B:I

    :cond_0
    return-void
.end method

.method private a(IIII)V
    .locals 14

    move-object v6, p0

    move v1, p1

    move/from16 v0, p3

    move/from16 v2, p4

    const/4 v3, 0x1

    move/from16 v4, p2

    if-le v1, v4, :cond_0

    if-ge v1, v0, :cond_0

    const-string v0, "OverScroller"

    const-string v1, "startAfterEdge called from a valid position"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, v6, Landroid/support/v7/widget/iw;->k:Z

    return-void

    :cond_0
    const/4 v5, 0x0

    if-le v1, v0, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_2

    move v8, v0

    goto :goto_1

    :cond_2
    move v8, v4

    :goto_1
    sub-int v9, v1, v8

    mul-int v10, v9, v2

    if-ltz v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    invoke-direct {p0, p1, v8, v2}, Landroid/support/v7/widget/iw;->e(III)V

    goto :goto_5

    :cond_4
    invoke-direct {p0, v2}, Landroid/support/v7/widget/iw;->d(I)D

    move-result-wide v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v12, v3

    cmpl-double v3, v10, v12

    if-lez v3, :cond_7

    if-eqz v7, :cond_5

    move v3, v4

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    if-eqz v7, :cond_6

    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v0

    :goto_4
    iget v5, v6, Landroid/support/v7/widget/iw;->l:I

    move-object v0, p0

    move v1, p1

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/iw;->a(IIIII)V

    goto :goto_5

    :cond_7
    invoke-direct {p0, p1, v8, v2}, Landroid/support/v7/widget/iw;->c(III)V

    :goto_5
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/iw;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/widget/iw;->k:Z

    return p0
.end method

.method private static b(I)F
    .locals 0

    if-lez p0, :cond_0

    const/high16 p0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x44fa0000    # 2000.0f

    :goto_0
    return p0
.end method

.method static synthetic b(Landroid/support/v7/widget/iw;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/iw;->b:I

    return p0
.end method

.method private b(III)V
    .locals 3

    sub-int/2addr p2, p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_0

    int-to-float v0, p3

    div-float/2addr v0, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    sget-object p2, Landroid/support/v7/widget/iw;->v:[F

    aget p3, p2, p3

    aget p2, p2, v1

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    sub-float/2addr p2, p3

    mul-float p1, p1, p2

    add-float/2addr p3, p1

    iget p1, p0, Landroid/support/v7/widget/iw;->h:I

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/iw;->h:I

    :cond_0
    return-void
.end method

.method private c(I)D
    .locals 2

    sget v0, Landroid/support/v7/widget/iw;->r:F

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    mul-float v0, v0, p1

    iget p1, p0, Landroid/support/v7/widget/iw;->m:F

    iget v1, p0, Landroid/support/v7/widget/iw;->o:F

    mul-float p1, p1, v1

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Landroid/support/v7/widget/iw;)F
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/iw;->e:F

    return p0
.end method

.method private c(III)V
    .locals 2

    const/4 p3, 0x0

    iput-boolean p3, p0, Landroid/support/v7/widget/iw;->k:Z

    const/4 p3, 0x1

    iput p3, p0, Landroid/support/v7/widget/iw;->n:I

    iput p1, p0, Landroid/support/v7/widget/iw;->a:I

    iput p1, p0, Landroid/support/v7/widget/iw;->b:I

    iput p2, p0, Landroid/support/v7/widget/iw;->c:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Landroid/support/v7/widget/iw;->b(I)F

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/iw;->f:F

    neg-int p2, p1

    iput p2, p0, Landroid/support/v7/widget/iw;->d:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/iw;->l:I

    int-to-double p1, p1

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    mul-double p1, p1, v0

    iget p3, p0, Landroid/support/v7/widget/iw;->f:F

    float-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/iw;->h:I

    return-void
.end method

.method private d(I)D
    .locals 9

    invoke-direct {p0, p1}, Landroid/support/v7/widget/iw;->c(I)D

    move-result-wide v0

    sget v2, Landroid/support/v7/widget/iw;->p:F

    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    sget-boolean v5, Landroid/support/v7/widget/iw;->w:Z

    if-eqz v5, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Landroid/support/v7/widget/iw;->B:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/16 v2, 0x64

    if-le p1, v2, :cond_0

    const/16 p1, 0x64

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v5, Landroid/support/v7/widget/iw;->u:[F

    aget p1, v5, p1

    sub-float/2addr v2, p1

    const/high16 p1, 0x40400000    # 3.0f

    mul-float v2, v2, p1

    const/high16 p1, 0x3fc00000    # 1.5f

    add-float/2addr v2, p1

    float-to-double v5, v2

    iget p1, p0, Landroid/support/v7/widget/iw;->m:F

    float-to-double v7, p1

    mul-double v5, v5, v7

    iget p1, p0, Landroid/support/v7/widget/iw;->o:F

    float-to-double v7, p1

    mul-double v5, v5, v7

    sget p1, Landroid/support/v7/widget/iw;->p:F

    float-to-double v7, p1

    :goto_0
    div-double/2addr v7, v3

    mul-double v7, v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v5, v5, v0

    return-wide v5

    :cond_1
    iget p1, p0, Landroid/support/v7/widget/iw;->m:F

    iget v5, p0, Landroid/support/v7/widget/iw;->o:F

    mul-float p1, p1, v5

    float-to-double v5, p1

    float-to-double v7, v2

    goto :goto_0
.end method

.method static synthetic d(Landroid/support/v7/widget/iw;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/iw;->c:I

    return p0
.end method

.method private d()V
    .locals 6

    iget v0, p0, Landroid/support/v7/widget/iw;->d:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float v1, v1, v0

    iget v0, p0, Landroid/support/v7/widget/iw;->f:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    div-float v0, v1, v0

    iget v3, p0, Landroid/support/v7/widget/iw;->d:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/iw;->l:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    neg-float v0, v3

    mul-float v0, v0, v1

    int-to-float v1, v4

    mul-float v1, v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/iw;->f:F

    int-to-float v0, v4

    :cond_0
    float-to-int v1, v0

    iput v1, p0, Landroid/support/v7/widget/iw;->l:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/support/v7/widget/iw;->n:I

    iget v1, p0, Landroid/support/v7/widget/iw;->a:I

    iget v2, p0, Landroid/support/v7/widget/iw;->d:I

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    neg-float v0, v0

    :goto_0
    float-to-int v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/iw;->c:I

    const/high16 v0, 0x447a0000    # 1000.0f

    iget v1, p0, Landroid/support/v7/widget/iw;->d:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    iget v0, p0, Landroid/support/v7/widget/iw;->f:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    neg-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/iw;->h:I

    sget-boolean v0, Landroid/support/v7/widget/iw;->x:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/iw;->y:I

    :cond_2
    return-void
.end method

.method private d(III)V
    .locals 5

    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/iw;->f:F

    div-float/2addr v0, v1

    int-to-float p3, p3

    mul-float p3, p3, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p3, v1

    sub-int p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v3

    iget p1, p0, Landroid/support/v7/widget/iw;->f:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    iget-wide v1, p0, Landroid/support/v7/widget/iw;->g:J

    sub-float p3, p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/support/v7/widget/iw;->g:J

    iput p2, p0, Landroid/support/v7/widget/iw;->a:I

    iput p2, p0, Landroid/support/v7/widget/iw;->b:I

    iget p2, p0, Landroid/support/v7/widget/iw;->f:F

    neg-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroid/support/v7/widget/iw;->d:I

    return-void
.end method

.method private e(I)I
    .locals 9

    invoke-direct {p0, p1}, Landroid/support/v7/widget/iw;->c(I)D

    move-result-wide v0

    sget v2, Landroid/support/v7/widget/iw;->p:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    sget-boolean v4, Landroid/support/v7/widget/iw;->w:Z

    const-wide v5, 0x408f400000000000L    # 1000.0

    if-eqz v4, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v4, p0, Landroid/support/v7/widget/iw;->B:I

    int-to-float v4, v4

    div-float/2addr p1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float p1, p1, v4

    float-to-int p1, p1

    const/16 v4, 0x64

    if-le p1, v4, :cond_0

    const/16 p1, 0x64

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v7, Landroid/support/v7/widget/iw;->u:[F

    aget p1, v7, p1

    sub-float/2addr v4, p1

    const/high16 p1, 0x40400000    # 3.0f

    mul-float v4, v4, p1

    const p1, 0x3fe66666    # 1.8f

    add-float/2addr v4, p1

    float-to-double v7, v4

    mul-double v7, v7, v5

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v7, v7, v0

    double-to-int p1, v7

    return p1

    :cond_1
    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v0, v0, v5

    double-to-int p1, v0

    return p1
.end method

.method static synthetic e(Landroid/support/v7/widget/iw;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/iw;->h:I

    return p0
.end method

.method private e(III)V
    .locals 1

    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    invoke-static {v0}, Landroid/support/v7/widget/iw;->b(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/iw;->f:F

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/iw;->d(III)V

    invoke-direct {p0}, Landroid/support/v7/widget/iw;->d()V

    return-void
.end method

.method static synthetic f(Landroid/support/v7/widget/iw;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/iw;->g:J

    return-wide v0
.end method


# virtual methods
.method a()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/iw;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v4/os/h;->a(Z)Z

    iput-boolean v0, p0, Landroid/support/v7/widget/iw;->C:Z

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/iw;->c:I

    iput v0, p0, Landroid/support/v7/widget/iw;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/iw;->k:Z

    return-void
.end method

.method a(F)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/iw;->a:I

    iget v1, p0, Landroid/support/v7/widget/iw;->c:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/iw;->b:I

    return-void
.end method

.method public a(I)V
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    sput-boolean v0, Landroid/support/v7/widget/iw;->w:Z

    sput-boolean v0, Landroid/support/v7/widget/iw;->x:Z

    sget-object v0, Landroid/support/v7/widget/iw;->q:[F

    aget v0, v0, p1

    sput v0, Landroid/support/v7/widget/iw;->r:F

    sget-object v0, Landroid/support/v7/widget/iw;->s:[[F

    aget-object v0, v0, p1

    sput-object v0, Landroid/support/v7/widget/iw;->u:[F

    sget-object v0, Landroid/support/v7/widget/iw;->t:[[F

    aget-object p1, v0, p1

    sput-object p1, Landroid/support/v7/widget/iw;->v:[F

    :cond_2
    :goto_0
    return-void
.end method

.method a(III)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/iw;->k:Z

    iput p1, p0, Landroid/support/v7/widget/iw;->a:I

    iput p1, p0, Landroid/support/v7/widget/iw;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/iw;->c:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v7/widget/iw;->g:J

    iput p3, p0, Landroid/support/v7/widget/iw;->h:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/iw;->f:F

    iput v0, p0, Landroid/support/v7/widget/iw;->d:I

    return-void
.end method

.method a(IIIII)V
    .locals 5

    iput p5, p0, Landroid/support/v7/widget/iw;->l:I

    const/4 p5, 0x0

    iput-boolean p5, p0, Landroid/support/v7/widget/iw;->k:Z

    iput p2, p0, Landroid/support/v7/widget/iw;->d:I

    int-to-float v0, p2

    iput v0, p0, Landroid/support/v7/widget/iw;->e:F

    iput p5, p0, Landroid/support/v7/widget/iw;->i:I

    iput p5, p0, Landroid/support/v7/widget/iw;->h:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v7/widget/iw;->g:J

    iput p1, p0, Landroid/support/v7/widget/iw;->a:I

    iput p1, p0, Landroid/support/v7/widget/iw;->b:I

    if-gt p1, p4, :cond_6

    if-ge p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iput p5, p0, Landroid/support/v7/widget/iw;->n:I

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/iw;->e(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/iw;->i:I

    iput v1, p0, Landroid/support/v7/widget/iw;->h:I

    invoke-direct {p0, p2}, Landroid/support/v7/widget/iw;->d(I)D

    move-result-wide v1

    sget-boolean v3, Landroid/support/v7/widget/iw;->w:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/support/v7/widget/iw;->C:Z

    if-nez v3, :cond_2

    const/16 v3, 0x320

    if-ge p2, v3, :cond_1

    const/16 v3, -0x320

    if-gt p2, v3, :cond_2

    :cond_1
    const/4 p2, 0x1

    invoke-static {p2}, Landroid/support/v4/os/h;->a(Z)Z

    iput-boolean p2, p0, Landroid/support/v7/widget/iw;->C:Z

    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v3, p2

    mul-double v1, v1, v3

    double-to-int p2, v1

    iput p2, p0, Landroid/support/v7/widget/iw;->j:I

    iget p2, p0, Landroid/support/v7/widget/iw;->j:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/iw;->c:I

    iget p1, p0, Landroid/support/v7/widget/iw;->c:I

    if-ge p1, p3, :cond_3

    iget p2, p0, Landroid/support/v7/widget/iw;->a:I

    invoke-direct {p0, p2, p1, p3}, Landroid/support/v7/widget/iw;->b(III)V

    iput p3, p0, Landroid/support/v7/widget/iw;->c:I

    :cond_3
    iget p1, p0, Landroid/support/v7/widget/iw;->c:I

    if-le p1, p4, :cond_4

    iget p2, p0, Landroid/support/v7/widget/iw;->a:I

    invoke-direct {p0, p2, p1, p4}, Landroid/support/v7/widget/iw;->b(III)V

    iput p4, p0, Landroid/support/v7/widget/iw;->c:I

    :cond_4
    sget-boolean p1, Landroid/support/v7/widget/iw;->x:Z

    if-eqz p1, :cond_5

    iput p5, p0, Landroid/support/v7/widget/iw;->y:I

    :cond_5
    return-void

    :cond_6
    :goto_0
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/support/v7/widget/iw;->a(IIII)V

    return-void
.end method

.method b()Z
    .locals 7

    iget v0, p0, Landroid/support/v7/widget/iw;->n:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Landroid/support/v7/widget/iw;->g:J

    iget v0, p0, Landroid/support/v7/widget/iw;->h:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/support/v7/widget/iw;->g:J

    iget v0, p0, Landroid/support/v7/widget/iw;->c:I

    iget v3, p0, Landroid/support/v7/widget/iw;->a:I

    invoke-direct {p0, v0, v3, v2}, Landroid/support/v7/widget/iw;->c(III)V

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/iw;->h:I

    iget v3, p0, Landroid/support/v7/widget/iw;->i:I

    if-ge v0, v3, :cond_3

    iget v0, p0, Landroid/support/v7/widget/iw;->c:I

    iput v0, p0, Landroid/support/v7/widget/iw;->a:I

    iput v0, p0, Landroid/support/v7/widget/iw;->b:I

    iget v0, p0, Landroid/support/v7/widget/iw;->e:F

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/iw;->d:I

    iget v0, p0, Landroid/support/v7/widget/iw;->d:I

    invoke-static {v0}, Landroid/support/v7/widget/iw;->b(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/iw;->f:F

    iget-wide v2, p0, Landroid/support/v7/widget/iw;->g:J

    iget v0, p0, Landroid/support/v7/widget/iw;->h:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/support/v7/widget/iw;->g:J

    invoke-direct {p0}, Landroid/support/v7/widget/iw;->d()V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/iw;->c()Z

    return v1

    :cond_3
    return v2
.end method

.method c()Z
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/support/v7/widget/iw;->g:J

    sub-long/2addr v1, v3

    sget-boolean v3, Landroid/support/v7/widget/iw;->x:Z

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    iget v3, v0, Landroid/support/v7/widget/iw;->n:I

    if-nez v3, :cond_4

    iget v3, v0, Landroid/support/v7/widget/iw;->y:I

    if-lez v3, :cond_0

    iget-wide v7, v0, Landroid/support/v7/widget/iw;->z:J

    add-long/2addr v7, v1

    const-wide/16 v1, 0x2

    div-long v1, v7, v1

    :cond_0
    iget v3, v0, Landroid/support/v7/widget/iw;->y:I

    const/16 v7, 0x1e

    if-le v3, v7, :cond_2

    iget-wide v7, v0, Landroid/support/v7/widget/iw;->z:J

    sub-long v9, v1, v7

    iget-wide v11, v0, Landroid/support/v7/widget/iw;->A:J

    const-wide/16 v13, 0x1

    add-long v15, v11, v13

    cmp-long v3, v9, v15

    if-lez v3, :cond_1

    add-long/2addr v7, v11

    add-long v1, v7, v13

    goto :goto_0

    :cond_1
    sub-long v15, v11, v13

    cmp-long v3, v9, v15

    if-gez v3, :cond_2

    add-long/2addr v7, v11

    sub-long v1, v7, v13

    :cond_2
    :goto_0
    cmp-long v3, v1, v4

    if-gez v3, :cond_3

    move-wide v1, v4

    :cond_3
    iget-wide v7, v0, Landroid/support/v7/widget/iw;->z:J

    sub-long v7, v1, v7

    iput-wide v7, v0, Landroid/support/v7/widget/iw;->A:J

    iput-wide v1, v0, Landroid/support/v7/widget/iw;->z:J

    iget v3, v0, Landroid/support/v7/widget/iw;->y:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/support/v7/widget/iw;->y:I

    :cond_4
    const/4 v3, 0x0

    cmp-long v7, v1, v4

    if-nez v7, :cond_6

    iget v1, v0, Landroid/support/v7/widget/iw;->h:I

    if-lez v1, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3

    :cond_6
    iget v4, v0, Landroid/support/v7/widget/iw;->h:I

    int-to-long v7, v4

    cmp-long v5, v1, v7

    if-lez v5, :cond_7

    return v3

    :cond_7
    const-wide/16 v7, 0x0

    iget v3, v0, Landroid/support/v7/widget/iw;->n:I

    const/high16 v5, 0x447a0000    # 1000.0f

    if-eqz v3, :cond_a

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v3, v6, :cond_9

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    goto/16 :goto_1

    :cond_8
    long-to-float v1, v1

    div-float/2addr v1, v5

    iget v2, v0, Landroid/support/v7/widget/iw;->d:I

    int-to-float v3, v2

    iget v4, v0, Landroid/support/v7/widget/iw;->f:F

    mul-float v5, v4, v1

    add-float/2addr v3, v5

    iput v3, v0, Landroid/support/v7/widget/iw;->e:F

    int-to-float v2, v2

    mul-float v2, v2, v1

    mul-float v4, v4, v1

    mul-float v4, v4, v1

    div-float/2addr v4, v9

    add-float/2addr v2, v4

    float-to-double v7, v2

    goto :goto_1

    :cond_9
    long-to-float v1, v1

    int-to-float v2, v4

    div-float/2addr v1, v2

    mul-float v2, v1, v1

    iget v3, v0, Landroid/support/v7/widget/iw;->d:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v4, v0, Landroid/support/v7/widget/iw;->l:I

    int-to-float v5, v4

    mul-float v5, v5, v3

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v7, v7, v2

    mul-float v9, v9, v1

    mul-float v9, v9, v2

    sub-float/2addr v7, v9

    mul-float v5, v5, v7

    float-to-double v7, v5

    int-to-float v4, v4

    mul-float v3, v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float v3, v3, v4

    neg-float v1, v1

    add-float/2addr v1, v2

    mul-float v3, v3, v1

    iput v3, v0, Landroid/support/v7/widget/iw;->e:F

    goto :goto_1

    :cond_a
    long-to-float v1, v1

    iget v2, v0, Landroid/support/v7/widget/iw;->i:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v3, v1, v2

    float-to-int v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/16 v8, 0x64

    if-ge v3, v8, :cond_b

    int-to-float v4, v3

    div-float/2addr v4, v2

    add-int/lit8 v7, v3, 0x1

    int-to-float v8, v7

    div-float/2addr v8, v2

    sget-object v2, Landroid/support/v7/widget/iw;->u:[F

    aget v3, v2, v3

    aget v2, v2, v7

    sub-float/2addr v2, v3

    sub-float/2addr v8, v4

    div-float v7, v2, v8

    sub-float/2addr v1, v4

    mul-float v1, v1, v7

    add-float v4, v3, v1

    :cond_b
    iget v1, v0, Landroid/support/v7/widget/iw;->j:I

    int-to-float v2, v1

    mul-float v4, v4, v2

    float-to-double v2, v4

    int-to-float v1, v1

    mul-float v7, v7, v1

    iget v1, v0, Landroid/support/v7/widget/iw;->i:I

    int-to-float v1, v1

    div-float/2addr v7, v1

    mul-float v7, v7, v5

    iput v7, v0, Landroid/support/v7/widget/iw;->e:F

    move-wide v7, v2

    :goto_1
    iget v1, v0, Landroid/support/v7/widget/iw;->a:I

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/iw;->b:I

    return v6
.end method
