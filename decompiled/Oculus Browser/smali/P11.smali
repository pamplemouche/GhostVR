.class public LP11;
.super LT11;
.source "PG"


# direct methods
.method public synthetic constructor <init>(LL11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LT11;-><init>()V

    return-void
.end method


# virtual methods
.method public a([F[F[F[F)V
    .locals 3

    .line 1
    invoke-static {p2, p4}, LT11;->d([F[F)V

    const/16 v0, 0x66

    .line 2
    aget v0, p4, v0

    const/16 v1, 0x67

    .line 3
    aget v1, p4, v1

    const/4 v2, 0x6

    .line 4
    aput v0, p2, v2

    const/4 v0, 0x7

    .line 5
    aput v1, p2, v0

    .line 6
    invoke-static {p2, p4}, LT11;->f([F[F)V

    .line 7
    invoke-static {p2, p4}, LT11;->g([F[F)V

    .line 8
    invoke-static {p2, p3}, LT11;->a([F[F)V

    const/4 p2, 0x0

    .line 9
    aget p4, p3, p2

    aput p4, p1, p2

    const/4 p2, 0x1

    .line 10
    aget p4, p3, p2

    aput p4, p1, p2

    const/16 p2, 0xc

    .line 11
    aget p2, p3, p2

    const/4 p4, 0x2

    aput p2, p1, p4

    const/16 p2, 0xd

    .line 12
    aget p2, p3, p2

    const/4 p3, 0x3

    aput p2, p1, p3

    return-void
.end method
