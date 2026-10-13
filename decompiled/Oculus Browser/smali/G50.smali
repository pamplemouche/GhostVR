.class public LG50;
.super LQ40;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:F

.field public final c:Z


# direct methods
.method public constructor <init>(Lo50;Ls50;II)V
    .locals 6

    .line 1
    invoke-direct {p0}, LQ40;-><init>()V

    const/16 v0, 0x13

    .line 2
    invoke-static {v0}, LP40;->a(I)Z

    move-result v0

    iput-boolean v0, p0, LG50;->a:Z

    .line 3
    iget p1, p1, Lo50;->c:F

    .line 4
    iput p1, p0, LG50;->b:F

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 5
    iget-boolean v1, p2, Ls50;->d:Z

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 7
    iget-wide v3, p2, Ls50;->c:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xbebc200

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const-wide v3, 0xb2d05e00L

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget v1, p2, Ls50;->a:F

    int-to-float p3, p3

    sub-float/2addr v1, p3

    .line 9
    iget p3, p0, LG50;->b:F

    mul-float v1, v1, p3

    .line 10
    iget p2, p2, Ls50;->b:F

    int-to-float p4, p4

    sub-float/2addr p2, p4

    mul-float p2, p2, p3

    mul-float v1, v1, v1

    mul-float p2, p2, p2

    add-float/2addr p2, v1

    const/high16 p3, 0x44610000    # 900.0f

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 11
    :goto_2
    iput-boolean p1, p0, LG50;->c:Z

    return-void
.end method


# virtual methods
.method public a(LW40;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LG50;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LG50;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3
    check-cast p1, Lk50;

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lk50;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LG50;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LG50;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
