.class public Lo71;
.super Lp71;
.source "PG"


# static fields
.field public static final c:Lo71;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo71;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo71;-><init>(I)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lp71;->b:Z

    .line 3
    sput-object v0, Lo71;->c:Lo71;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp71;-><init>(I)V

    return-void
.end method
