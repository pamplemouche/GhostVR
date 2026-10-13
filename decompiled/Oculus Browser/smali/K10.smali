.class public LK10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LI01;


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public final synthetic d:LN10;


# direct methods
.method public constructor <init>(LN10;)V
    .locals 0

    .line 1
    iput-object p1, p0, LK10;->d:LN10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(FF)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 1
    iget-object v0, p0, LK10;->d:LN10;

    move-object v1, v0

    check-cast v1, LNf0;

    if-eqz v1, :cond_2

    .line 2
    sget-boolean v1, LNf0;->I:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0}, LN10;->a(LN10;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, LK10;->f(II)V

    .line 5
    iput p1, p0, LK10;->a:I

    .line 6
    iget-object p1, p0, LK10;->d:LN10;

    const/4 p2, 0x1

    .line 7
    iput p2, p1, LN10;->z:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 2

    .line 1
    iget-object v0, p0, LK10;->d:LN10;

    move-object v1, v0

    check-cast v1, LNf0;

    if-eqz v1, :cond_2

    .line 2
    sget-boolean v1, LNf0;->I:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0}, LN10;->a(LN10;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, LK10;->f(II)V

    .line 5
    iget-object p1, p0, LK10;->d:LN10;

    const/4 p2, 0x2

    .line 6
    iput p2, p1, LN10;->z:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(II)V
    .locals 3

    .line 1
    iput p1, p0, LK10;->a:I

    .line 2
    iget-object v0, p0, LK10;->d:LN10;

    move-object v1, v0

    check-cast v1, LNf0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget v1, v0, LN10;->z:I

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, LN10;->a(LN10;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LK10;->d:LN10;

    .line 5
    check-cast v0, LNf0;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, LK10;->g(II)V

    return-void

    .line 7
    :cond_0
    throw v2

    :cond_1
    return-void

    .line 8
    :cond_2
    throw v2
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(II)V
    .locals 5

    .line 1
    iget-object v0, p0, LK10;->d:LN10;

    .line 2
    iget v1, v0, LN10;->z:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput v1, v0, LN10;->z:I

    .line 4
    invoke-virtual {p0, p1, p2}, LK10;->g(II)V

    .line 5
    iget-object p2, p0, LK10;->d:LN10;

    int-to-float p1, p1

    .line 6
    iget v0, p2, LN10;->D:I

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v0, v0, v3

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget v4, p2, LN10;->D:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 8
    :cond_4
    invoke-virtual {p2, v1}, LN10;->a(Z)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(II)V
    .locals 6

    .line 1
    iget-object v0, p0, LK10;->d:LN10;

    .line 2
    iget v1, v0, LN10;->z:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput v1, v0, LN10;->z:I

    .line 4
    invoke-virtual {p0, p1, p2}, LK10;->g(II)V

    .line 5
    iget p2, p0, LK10;->a:I

    const/4 v0, 0x1

    if-le p1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 6
    :goto_0
    iget v2, p0, LK10;->b:F

    iget-object v3, p0, LK10;->d:LN10;

    .line 7
    iget v3, v3, LN10;->D:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    iget-object v4, p0, LK10;->d:LN10;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    iget-object v5, p0, LK10;->d:LN10;

    .line 9
    iget v5, v5, LN10;->D:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    if-eqz v2, :cond_3

    const v2, 0x3f666666    # 0.9f

    goto :goto_2

    :cond_3
    const v2, 0x3e4ccccd    # 0.2f

    :goto_2
    cmpl-float v2, v3, v2

    if-lez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    int-to-float p1, p1

    .line 10
    iget-object v3, p0, LK10;->d:LN10;

    .line 11
    iget v3, v3, LN10;->D:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    cmpg-float p1, p1, v3

    if-gez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    if-nez p2, :cond_6

    if-nez v2, :cond_8

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    .line 12
    :cond_8
    :goto_5
    iget-object p1, p0, LK10;->d:LN10;

    invoke-virtual {p1, v0}, LN10;->a(Z)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final f(II)V
    .locals 1

    .line 1
    iget-object v0, p0, LK10;->d:LN10;

    .line 2
    iput p1, v0, LN10;->C:I

    int-to-float p1, p2

    .line 3
    iput p1, p0, LK10;->c:F

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    iput p1, p0, LK10;->b:F

    return-void
.end method

.method public final g(II)V
    .locals 4

    .line 1
    iget-object v0, p0, LK10;->d:LN10;

    .line 2
    iget v1, v0, LN10;->C:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    int-to-float v2, p2

    .line 3
    iget v3, p0, LK10;->c:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 4
    iget v1, p0, LK10;->b:F

    add-float/2addr v1, v2

    .line 5
    iget v0, v0, LN10;->D:I

    int-to-float v0, v0

    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v0, v2}, LEO0;->a(FFF)F

    move-result v0

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2}, LK10;->f(II)V

    .line 8
    :cond_0
    iget-object p1, p0, LK10;->d:LN10;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method
