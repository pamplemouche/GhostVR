.class public Li71;
.super Lp71;
.source "PG"


# static fields
.field public static final c:Li71;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Li71;->a()Li71;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lp71;->b:Z

    .line 3
    invoke-static {}, Li71;->a()Li71;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1, v1}, Lp71;->a(IZ)Lp71;

    .line 5
    iput-boolean v1, v0, Lp71;->b:Z

    .line 6
    sput-object v0, Li71;->c:Li71;

    .line 7
    invoke-static {}, Li71;->a()Li71;

    move-result-object v0

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v0, v2, v1}, Lp71;->a(IZ)Lp71;

    .line 9
    iput-boolean v1, v0, Lp71;->b:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp71;-><init>(I)V

    return-void
.end method

.method public static a()Li71;
    .locals 2

    .line 1
    new-instance v0, Li71;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li71;-><init>(I)V

    return-object v0
.end method
