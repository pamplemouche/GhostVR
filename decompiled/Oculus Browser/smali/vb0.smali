.class public Lvb0;
.super LH10;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LH10;-><init>()V

    return-void
.end method

.method public static a(J)V
    .locals 4

    long-to-double v0, p0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double v0, v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x2

    mul-long p0, p0, v2

    long-to-double p0, p0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double p0, p0, v2

    double-to-long p0, p0

    .line 1
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v2

    const/16 v3, 0x16

    .line 2
    invoke-static {v3, v0, v1, p0, p1}, LOS0;->b(IJJ)LHS0;

    move-result-object p0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, LHS0;->e:Z

    .line 4
    iput-boolean p1, p0, LHS0;->f:Z

    .line 5
    iput p1, p0, LHS0;->c:I

    .line 6
    invoke-virtual {p0}, LHS0;->a()LOS0;

    move-result-object p0

    .line 7
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 8
    check-cast v2, LjS0;

    invoke-virtual {v2, p1, p0}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 9
    sget-object p1, LZ01;->a:LFW;

    sget-object v0, Lub0;->w:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/content/Context;LRS0;LKR0;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;LRS0;LKR0;)V
    .locals 0

    .line 1
    sget-object p1, Lsb0;->e:Lwb0;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lsb0;->a()V

    .line 3
    :cond_0
    sget-object p1, Lsb0;->e:Lwb0;

    if-eqz p1, :cond_1

    .line 4
    new-instance p2, Ltb0;

    invoke-direct {p2, p3}, Ltb0;-><init>(LKR0;)V

    invoke-interface {p1, p2}, Lwb0;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object p1

    .line 6
    sget-object p2, LzT;->a:Landroid/content/Context;

    const/16 p3, 0x16

    .line 7
    check-cast p1, LjS0;

    invoke-virtual {p1, p2, p3}, LjS0;->a(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
