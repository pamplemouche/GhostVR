.class public Lby;
.super LVx;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lay;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lay;-><init>(LZx;)V

    invoke-direct {p0, v0}, LVx;-><init>(LUx;)V

    return-void
.end method
