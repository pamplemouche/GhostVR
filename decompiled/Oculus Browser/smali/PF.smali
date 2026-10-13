.class public LPF;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LSF;


# instance fields
.field public a:I


# direct methods
.method public synthetic constructor <init>(LEF;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, LPF;->a:I

    return-void
.end method


# virtual methods
.method public a(ZDZD)D
    .locals 0

    .line 3
    iget p1, p0, LPF;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p4

    invoke-static {p4, p5}, LcG;->a(J)I

    move-result p4

    add-int/2addr p4, p1

    iput p4, p0, LPF;->a:I

    return-wide p2
.end method

.method public a(ZFZF)F
    .locals 0

    .line 4
    iget p1, p0, LPF;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, LPF;->a:I

    return p2
.end method

.method public a(ZIZI)I
    .locals 0

    .line 2
    iget p1, p0, LPF;->a:I

    mul-int/lit8 p1, p1, 0x35

    add-int/2addr p1, p2

    iput p1, p0, LPF;->a:I

    return p2
.end method

.method public a(ZJZJ)J
    .locals 0

    .line 5
    iget p1, p0, LPF;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, LcG;->a(J)I

    move-result p4

    add-int/2addr p4, p1

    iput p4, p0, LPF;->a:I

    return-wide p2
.end method

.method public a(LDF;LDF;)LDF;
    .locals 1

    .line 25
    iget p2, p0, LPF;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, LDF;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, LPF;->a:I

    return-object p1
.end method

.method public a(LXF;LXF;)LXF;
    .locals 1

    .line 23
    iget p2, p0, LPF;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, LPF;->a:I

    return-object p1
.end method

.method public a(LaG;LaG;)LaG;
    .locals 1

    .line 24
    iget p2, p0, LPF;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, LPF;->a:I

    return-object p1
.end method

.method public a(LbG;LbG;)LbG;
    .locals 1

    .line 22
    iget p2, p0, LPF;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, LPF;->a:I

    return-object p1
.end method

.method public a(LhG;LhG;)LhG;
    .locals 2

    if-eqz p1, :cond_2

    .line 10
    instance-of p2, p1, LTF;

    if-eqz p2, :cond_1

    .line 11
    move-object p2, p1

    check-cast p2, LTF;

    .line 12
    iget v0, p2, LfF;->w:I

    if-nez v0, :cond_0

    .line 13
    iget v0, p0, LPF;->a:I

    const/4 v1, 0x0

    .line 14
    iput v1, p0, LPF;->a:I

    .line 15
    invoke-virtual {p2, p0, p2}, LTF;->a(LSF;LTF;)V

    .line 16
    iget v1, p0, LPF;->a:I

    .line 17
    iput v1, p2, LfF;->w:I

    .line 18
    iput v0, p0, LPF;->a:I

    .line 19
    :cond_0
    iget p2, p2, LfF;->w:I

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    goto :goto_0

    :cond_2
    const/16 p2, 0x25

    .line 21
    :goto_0
    iget v0, p0, LPF;->a:I

    mul-int/lit8 v0, v0, 0x35

    add-int/2addr v0, p2

    iput v0, p0, LPF;->a:I

    return-object p1
.end method

.method public a(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 8
    iget p1, p0, LPF;->a:I

    mul-int/lit8 p1, p1, 0x35

    move-object p3, p2

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, LcG;->a(J)I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, LPF;->a:I

    return-object p2
.end method

.method public a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iget p1, p0, LPF;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, LPF;->a:I

    return-object p2
.end method

.method public a(ZLrF;ZLrF;)LrF;
    .locals 0

    .line 7
    iget p1, p0, LPF;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, LrF;->hashCode()I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, LPF;->a:I

    return-object p2
.end method

.method public a(LwG;LwG;)LwG;
    .locals 1

    .line 26
    iget p2, p0, LPF;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, LwG;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, LPF;->a:I

    return-object p1
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(ZZZZ)Z
    .locals 0

    .line 1
    iget p1, p0, LPF;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2}, LcG;->a(Z)I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, LPF;->a:I

    return p2
.end method

.method public b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p1, p0, LPF;->a:I

    mul-int/lit8 p1, p1, 0x35

    move-object p3, p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, LPF;->a:I

    return-object p2
.end method

.method public c(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p1, p0, LPF;->a:I

    mul-int/lit8 p1, p1, 0x35

    move-object p3, p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p3}, LcG;->a(Z)I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, LPF;->a:I

    return-object p2
.end method

.method public d(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p1, p0, LPF;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, LPF;->a:I

    return-object p2
.end method

.method public e(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p1, p0, LPF;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, LPF;->a:I

    return-object p2
.end method

.method public f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, LhG;

    check-cast p3, LhG;

    invoke-virtual {p0, p2, p3}, LPF;->a(LhG;LhG;)LhG;

    return-object p2
.end method

.method public g(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p1, p0, LPF;->a:I

    mul-int/lit8 p1, p1, 0x35

    move-object p3, p2

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, LcG;->a(J)I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, LPF;->a:I

    return-object p2
.end method
