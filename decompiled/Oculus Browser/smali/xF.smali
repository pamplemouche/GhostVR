.class public abstract LxF;
.super LiF;
.source "PG"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Z

.field public static final c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, LxF;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LxF;->a:Ljava/util/logging/Logger;

    .line 2
    sget-boolean v0, LyG;->c:Z

    .line 3
    sput-boolean v0, LxF;->b:Z

    .line 4
    sget-wide v0, LyG;->d:J

    .line 5
    sput-wide v0, LxF;->c:J

    return-void
.end method

.method public synthetic constructor <init>(LuF;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LiF;-><init>()V

    return-void
.end method

.method public static a(LhG;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-interface {p0}, LhG;->a()I

    move-result p0

    return p0
.end method

.method public static a([B)I
    .locals 0

    .line 7
    array-length p0, p0

    invoke-static {p0}, LxF;->e(I)I

    move-result p0

    return p0
.end method

.method public static b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b(ID)I
    .locals 0

    .line 7
    invoke-static {p0}, LxF;->f(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static b(IF)I
    .locals 0

    .line 6
    invoke-static {p0}, LxF;->f(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static b(ILhG;)I
    .locals 0

    .line 12
    invoke-static {p0}, LxF;->f(I)I

    move-result p0

    .line 13
    invoke-interface {p1}, LhG;->a()I

    move-result p1

    invoke-static {p1}, LxF;->e(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 0

    .line 9
    invoke-static {p0}, LxF;->f(I)I

    move-result p0

    invoke-static {p1}, LxF;->b(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static b(ILrF;)I
    .locals 0

    .line 10
    invoke-static {p0}, LxF;->f(I)I

    move-result p0

    .line 11
    invoke-virtual {p1}, LrF;->size()I

    move-result p1

    invoke-static {p1}, LxF;->e(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(IZ)I
    .locals 0

    .line 8
    invoke-static {p0}, LxF;->f(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(LhG;)I
    .locals 0

    .line 19
    invoke-interface {p0}, LhG;->a()I

    move-result p0

    invoke-static {p0}, LxF;->e(I)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    .line 14
    :try_start_0
    invoke-static {p0}, LDG;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch LBG; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    sget-object v0, LcG;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 16
    array-length p0, p0

    .line 17
    :goto_0
    invoke-static {p0}, LxF;->e(I)I

    move-result p0

    return p0
.end method

.method public static b(LrF;)I
    .locals 0

    .line 18
    invoke-virtual {p0}, LrF;->size()I

    move-result p0

    invoke-static {p0}, LxF;->e(I)I

    move-result p0

    return p0
.end method

.method public static b([B)LxF;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, LvF;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, LvF;-><init>([BII)V

    return-object v1
.end method

.method public static c()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static c(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, LxF;->f(I)I

    move-result p0

    .line 2
    invoke-static {p1, p2}, LxF;->c(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static d()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static d(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 1
    invoke-static {p0}, LxF;->g(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static e()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static e(I)I
    .locals 1

    .line 3
    invoke-static {p0}, LxF;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static e(II)I
    .locals 0

    .line 1
    invoke-static {p0}, LxF;->f(I)I

    move-result p0

    .line 2
    invoke-static {p1}, LxF;->d(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static f(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/lit8 p0, p0, 0x0

    .line 2
    invoke-static {p0}, LxF;->g(I)I

    move-result p0

    return p0
.end method

.method public static f(II)I
    .locals 0

    .line 1
    invoke-static {p0}, LxF;->f(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static g()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static g(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static g(II)I
    .locals 0

    .line 1
    invoke-static {p0}, LxF;->f(I)I

    move-result p0

    invoke-static {p1}, LxF;->d(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static h()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static h(II)I
    .locals 0

    .line 1
    invoke-static {p0}, LxF;->f(I)I

    move-result p0

    invoke-static {p1}, LxF;->g(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(B)V
.end method

.method public abstract a(I)V
.end method

.method public final a(ID)V
    .locals 1

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    move-object v0, p0

    check-cast v0, LvF;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, LvF;->c(I)V

    .line 6
    invoke-virtual {v0, p2, p3}, LvF;->a(J)V

    return-void
.end method

.method public final a(IF)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    move-object v0, p0

    check-cast v0, LvF;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 2
    invoke-virtual {v0, p1}, LvF;->c(I)V

    .line 3
    invoke-virtual {v0, p2}, LvF;->a(I)V

    return-void
.end method

.method public abstract a(II)V
.end method

.method public abstract a(IJ)V
.end method

.method public abstract a(ILhG;)V
.end method

.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(ILrF;)V
.end method

.method public abstract a(IZ)V
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(LrF;)V
.end method

.method public abstract b(I)V
.end method

.method public abstract b(II)V
.end method

.method public final b(IJ)V
    .locals 1

    .line 3
    move-object v0, p0

    check-cast v0, LvF;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, LvF;->c(I)V

    .line 5
    invoke-virtual {v0, p2, p3}, LvF;->b(J)V

    return-void
.end method

.method public abstract b(J)V
.end method

.method public abstract c(I)V
.end method

.method public abstract c(II)V
.end method

.method public abstract d(II)V
.end method
