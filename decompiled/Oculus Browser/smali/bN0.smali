.class public LbN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LhN0;


# direct methods
.method public constructor <init>(LhN0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LbN0;->w:LhN0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, LbN0;->w:LhN0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3
    iget-wide v4, v0, LhN0;->E:J

    iget-object v6, v0, LhN0;->B:LgN0;

    iget-wide v6, v6, LgN0;->c:J

    sub-long/2addr v4, v6

    const-wide/16 v8, 0x9c4

    div-long/2addr v4, v8

    sub-long v6, v2, v6

    div-long/2addr v6, v8

    cmp-long v10, v4, v6

    if-eqz v10, :cond_1

    .line 4
    iget-object v4, v0, LhN0;->F:LfN0;

    check-cast v4, LdN0;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v1, v0, LhN0;->B:LgN0;

    iget-wide v4, v1, LgN0;->c:J

    sub-long v4, v2, v4

    rem-long/2addr v4, v8

    long-to-float v4, v4

    const v5, 0x451c4000    # 2500.0f

    div-float/2addr v4, v5

    .line 7
    iget-object v5, v1, LgN0;->e:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iput v4, v1, LgN0;->d:F

    .line 8
    iget-object v1, v0, LhN0;->B:LgN0;

    iget-object v4, v1, LgN0;->f:LeN0;

    iget v1, v1, LgN0;->d:F

    invoke-interface {v4, v0, v1}, LeN0;->a(LhN0;F)V

    .line 9
    iput-wide v2, v0, LhN0;->E:J

    .line 10
    iget-object v0, p0, LbN0;->w:LhN0;

    .line 11
    iget-boolean v1, v0, LhN0;->D:Z

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, v0, LhN0;->w:Ljava/lang/Runnable;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_2
    return-void

    .line 14
    :cond_3
    throw v1
.end method
