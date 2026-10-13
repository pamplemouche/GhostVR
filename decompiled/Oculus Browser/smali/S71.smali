.class public final LS71;
.super LU61;
.source "PG"


# instance fields
.field public b:[B

.field public c:LT71;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LU61;-><init>()V

    return-void
.end method

.method public static final a(Lm61;I)LS71;
    .locals 4

    .line 7
    invoke-virtual {p0, p1}, Lm61;->b(I)Lk61;

    move-result-object v0

    .line 8
    iget v1, v0, Lk61;->a:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    new-instance v1, LS71;

    invoke-direct {v1}, LS71;-><init>()V

    .line 10
    iget v0, v0, Lk61;->b:I

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x8

    .line 11
    invoke-virtual {p0, p1, v2}, Lm61;->a(II)Z

    move-result p0

    iput-boolean p0, v1, LS71;->d:Z

    .line 12
    iput v3, v1, LU61;->a:I

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x8

    .line 13
    invoke-virtual {p0, p1, v2}, Lm61;->d(IZ)Lm61;

    move-result-object p0

    .line 14
    invoke-static {p0}, LT71;->a(Lm61;)LT71;

    move-result-object p0

    iput-object p0, v1, LS71;->c:LT71;

    .line 15
    iput v3, v1, LU61;->a:I

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x8

    const/4 v0, -0x1

    .line 16
    invoke-virtual {p0, p1, v2, v0}, Lm61;->a(III)[B

    move-result-object p0

    iput-object p0, v1, LS71;->b:[B

    .line 17
    iput v2, v1, LU61;->a:I

    :goto_0
    return-object v1
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

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, LS71;->d:Z

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, v0, p2, v1}, Lr61;->a(ZII)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, LS71;->c:LT71;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, v0, p2, v1}, Lr61;->a(LT61;IZ)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, LS71;->b:[B

    add-int/lit8 p2, p2, 0x8

    const/4 v2, -0x1

    invoke-virtual {p1, v0, p2, v1, v2}, Lr61;->a([BIII)V

    :goto_0
    return-void
.end method
