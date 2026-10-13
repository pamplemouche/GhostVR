.class public final Lc71;
.super LU61;
.source "PG"


# instance fields
.field public b:LZ61;

.field public c:LW61;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LU61;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr61;I)V
    .locals 3

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p1, v0, p2}, Lr61;->a(II)V

    .line 2
    iget v0, p0, LU61;->a:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    .line 3
    iget v0, p0, LU61;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc71;->c:LW61;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, v0, p2, v1}, Lr61;->a(LT61;IZ)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lc71;->b:LZ61;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, v0, p2, v1}, Lr61;->a(LT61;IZ)V

    :goto_0
    return-void
.end method
