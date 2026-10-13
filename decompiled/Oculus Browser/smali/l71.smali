.class public Ll71;
.super Lp71;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll71;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll71;-><init>(I)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lp71;->b:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp71;-><init>(I)V

    return-void
.end method
