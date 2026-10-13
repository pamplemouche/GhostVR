.class public LBb1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzb1;


# instance fields
.field public a:J

.field public b:J

.field public c:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    sub-long v2, v0, v2

    .line 3
    invoke-virtual {p0, v2, v3, v0, v1}, LBb1;->a(JJ)Z

    return-void
.end method


# virtual methods
.method public a(J)F
    .locals 3

    .line 6
    iget v0, p0, LBb1;->c:F

    iget-wide v1, p0, LBb1;->a:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    mul-float v0, v0, p1

    iget-wide p1, p0, LBb1;->b:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public a(F)Z
    .locals 1

    .line 4
    iget v0, p0, LBb1;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 5
    iput p1, p0, LBb1;->c:F

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(JJ)Z
    .locals 3

    .line 1
    iget-wide v0, p0, LBb1;->a:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-wide v0, p0, LBb1;->b:J

    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    :goto_0
    iput-wide p1, p0, LBb1;->a:J

    .line 3
    iput-wide p3, p0, LBb1;->b:J

    const/4 p1, 0x1

    return p1
.end method

.method public b(F)J
    .locals 5

    .line 1
    iget-wide v0, p0, LBb1;->a:J

    long-to-float v2, v0

    iget-wide v3, p0, LBb1;->b:J

    sub-long/2addr v3, v0

    long-to-float v0, v3

    mul-float p1, p1, v0

    iget v0, p0, LBb1;->c:F

    div-float/2addr p1, v0

    add-float/2addr p1, v2

    float-to-long v0, p1

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, LBb1;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, LBb1;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, LBb1;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
