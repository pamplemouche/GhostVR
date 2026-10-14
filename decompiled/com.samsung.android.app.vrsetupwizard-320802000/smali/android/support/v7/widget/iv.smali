.class Landroid/support/v7/widget/iv;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:Landroid/support/v7/widget/iw;

.field private final c:Landroid/support/v7/widget/iw;

.field private d:Landroid/view/animation/Interpolator;

.field private final e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/iv;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance p2, Landroid/support/v7/widget/jk;

    invoke-direct {p2}, Landroid/support/v7/widget/jk;-><init>()V

    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/iv;->d:Landroid/view/animation/Interpolator;

    iput-boolean p3, p0, Landroid/support/v7/widget/iv;->e:Z

    new-instance p2, Landroid/support/v7/widget/iw;

    invoke-direct {p2, p1}, Landroid/support/v7/widget/iw;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    new-instance p2, Landroid/support/v7/widget/iw;

    invoke-direct {p2, p1}, Landroid/support/v7/widget/iw;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/support/v4/os/h;->a(Z)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/iv;->a(Z)V

    const-string p1, "SeslOverScroller"

    const-string p2, "does NOT support Smoothscroll booster thus Smoothscroll\'s disabled"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public a(IIIII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/iv;->a:I

    iget-object v0, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-virtual {v0, p1, p3, p5}, Landroid/support/v7/widget/iw;->a(III)V

    iget-object p1, p0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    invoke-virtual {p1, p2, p4, p5}, Landroid/support/v7/widget/iw;->a(III)V

    return-void
.end method

.method public a(IIIIIIII)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/support/v7/widget/iv;->a(IIIIIIIIII)V

    return-void
.end method

.method public a(IIIIIIIIII)V
    .locals 12

    move-object v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/iv;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/iv;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-static {v1}, Landroid/support/v7/widget/iw;->c(Landroid/support/v7/widget/iw;)F

    move-result v1

    iget-object v2, v0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    invoke-static {v2}, Landroid/support/v7/widget/iw;->c(Landroid/support/v7/widget/iw;)F

    move-result v2

    move v3, p3

    int-to-float v4, v3

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    move/from16 v5, p4

    int-to-float v6, v5

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-float/2addr v6, v2

    float-to-int v2, v6

    move v5, v1

    goto :goto_0

    :cond_0
    move v3, p3

    :cond_1
    move/from16 v5, p4

    :cond_2
    move v2, v5

    move v5, v3

    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/iv;->a:I

    iget-object v3, v0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    move v4, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Landroid/support/v7/widget/iw;->a(IIIII)V

    iget-object v6, v0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    move v7, p2

    move v8, v2

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p10

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/iw;->a(IIIII)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/iw;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/iw;->a(I)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-static {v0}, Landroid/support/v7/widget/iw;->a(Landroid/support/v7/widget/iw;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    invoke-static {v0}, Landroid/support/v7/widget/iw;->a(Landroid/support/v7/widget/iw;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-static {v0}, Landroid/support/v7/widget/iw;->b(Landroid/support/v7/widget/iw;)I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    invoke-static {v0}, Landroid/support/v7/widget/iw;->b(Landroid/support/v7/widget/iw;)I

    move-result v0

    return v0
.end method

.method public d()F
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-static {v0}, Landroid/support/v7/widget/iw;->c(Landroid/support/v7/widget/iw;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    invoke-static {v2}, Landroid/support/v7/widget/iw;->c(Landroid/support/v7/widget/iw;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-static {v0}, Landroid/support/v7/widget/iw;->d(Landroid/support/v7/widget/iw;)I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    invoke-static {v0}, Landroid/support/v7/widget/iw;->d(Landroid/support/v7/widget/iw;)I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/iv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/iv;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-static {v0}, Landroid/support/v7/widget/iw;->a(Landroid/support/v7/widget/iw;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-virtual {v0}, Landroid/support/v7/widget/iw;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-virtual {v0}, Landroid/support/v7/widget/iw;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-virtual {v0}, Landroid/support/v7/widget/iw;->a()V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    invoke-static {v0}, Landroid/support/v7/widget/iw;->a(Landroid/support/v7/widget/iw;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    invoke-virtual {v0}, Landroid/support/v7/widget/iw;->c()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    invoke-virtual {v0}, Landroid/support/v7/widget/iw;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    invoke-virtual {v0}, Landroid/support/v7/widget/iw;->a()V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-static {v0}, Landroid/support/v7/widget/iw;->f(Landroid/support/v7/widget/iw;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-static {v0}, Landroid/support/v7/widget/iw;->e(Landroid/support/v7/widget/iw;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/iv;->d:Landroid/view/animation/Interpolator;

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/iw;->a(F)V

    iget-object v2, p0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/iw;->a(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/iv;->h()V

    :cond_5
    :goto_0
    return v1
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/iv;->b:Landroid/support/v7/widget/iw;

    invoke-virtual {v0}, Landroid/support/v7/widget/iw;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/iv;->c:Landroid/support/v7/widget/iw;

    invoke-virtual {v0}, Landroid/support/v7/widget/iw;->a()V

    return-void
.end method
