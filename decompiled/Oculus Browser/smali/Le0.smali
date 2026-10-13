.class public abstract LLe0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LHe0;

.field public static b:LPe0;


# direct methods
.method public static a(ILKe0;LCT;I)LIe0;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, LNe0;

    .line 2
    invoke-static {v0, p1, p2, p3}, LLe0;->a(ILKe0;LCT;I)LIe0;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, LNe0;-><init>(LIe0;LCT;I)V

    return-object p0

    .line 3
    :cond_1
    new-instance p0, LNe0;

    const/4 v0, 0x0

    .line 4
    invoke-static {v0, p1, p2, p3}, LLe0;->a(ILKe0;LCT;I)LIe0;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, LNe0;-><init>(LIe0;LCT;I)V

    return-object p0

    .line 5
    :cond_2
    sget-object p0, LLe0;->a:LHe0;

    if-nez p0, :cond_3

    .line 6
    new-instance p0, LHe0;

    invoke-direct {p0, p1}, LHe0;-><init>(LKe0;)V

    sput-object p0, LLe0;->a:LHe0;

    .line 7
    :cond_3
    sget-object p0, LLe0;->a:LHe0;

    return-object p0

    .line 8
    :cond_4
    sget-object p0, LLe0;->b:LPe0;

    if-nez p0, :cond_5

    .line 9
    new-instance p0, LPe0;

    invoke-direct {p0, p1}, LPe0;-><init>(LKe0;)V

    sput-object p0, LLe0;->b:LPe0;

    .line 10
    :cond_5
    sget-object p0, LLe0;->b:LPe0;

    return-object p0
.end method
