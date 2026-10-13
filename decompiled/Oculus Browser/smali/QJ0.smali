.class public abstract synthetic LQJ0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(LSJ0;)I
    .locals 1

    .line 1
    invoke-interface {p0}, LSJ0;->k()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    .line 2
    sget-boolean p0, LRJ0;->a:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    const p0, 0x7f1300f3

    return p0

    :cond_2
    const p0, 0x7f1300f4

    return p0

    :cond_3
    const p0, 0x7f1300f5

    return p0
.end method
