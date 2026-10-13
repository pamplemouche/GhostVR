.class public LIF;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LSF;


# static fields
.field public static final a:LIF;

.field public static final b:LHF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LIF;

    invoke-direct {v0}, LIF;-><init>()V

    sput-object v0, LIF;->a:LIF;

    .line 2
    new-instance v0, LHF;

    invoke-direct {v0}, LHF;-><init>()V

    sput-object v0, LIF;->b:LHF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZDZD)D
    .locals 0

    if-ne p1, p4, :cond_0

    cmpl-double p1, p2, p5

    if-nez p1, :cond_0

    return-wide p2

    .line 3
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(ZFZF)F
    .locals 0

    if-ne p1, p3, :cond_0

    cmpl-float p1, p2, p4

    if-nez p1, :cond_0

    return p2

    .line 4
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(ZIZI)I
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    .line 2
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(ZJZJ)J
    .locals 0

    if-ne p1, p4, :cond_0

    cmp-long p1, p2, p5

    if-nez p1, :cond_0

    return-wide p2

    .line 5
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(LDF;LDF;)LDF;
    .locals 0

    .line 21
    invoke-virtual {p1, p2}, LDF;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 22
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(LXF;LXF;)LXF;
    .locals 0

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 18
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(LaG;LaG;)LaG;
    .locals 0

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 20
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(LbG;LbG;)LbG;
    .locals 0

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 16
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(LhG;LhG;)LhG;
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 13
    move-object v0, p1

    check-cast v0, LTF;

    invoke-virtual {v0, p0, p2}, LTF;->a(LIF;LhG;)Z

    return-object p1

    .line 14
    :cond_1
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 11
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-ne p1, p3, :cond_0

    .line 6
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 7
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(ZLrF;ZLrF;)LrF;
    .locals 0

    if-ne p1, p3, :cond_0

    .line 8
    invoke-virtual {p2, p4}, LrF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 9
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(LwG;LwG;)LwG;
    .locals 0

    .line 23
    invoke-virtual {p1, p2}, LwG;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 24
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public a(ZZZZ)Z
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    .line 1
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public c(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public d(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public e(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    move-object p1, p2

    check-cast p1, LTF;

    check-cast p3, LhG;

    invoke-virtual {p1, p0, p3}, LTF;->a(LIF;LhG;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method

.method public g(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    sget-object p1, LIF;->b:LHF;

    throw p1
.end method
