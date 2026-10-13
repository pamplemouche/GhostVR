.class public final Le71;
.super LU61;
.source "PG"


# instance fields
.field public b:Lb71;

.field public c:LV61;

.field public d:LX61;

.field public e:LY61;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LU61;-><init>()V

    return-void
.end method

.method public static final a(Lm61;I)Le71;
    .locals 4

    .line 8
    invoke-virtual {p0, p1}, Lm61;->b(I)Lk61;

    move-result-object v0

    .line 9
    iget v1, v0, Lk61;->a:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    new-instance v1, Le71;

    invoke-direct {v1}, Le71;-><init>()V

    .line 11
    iget v0, v0, Lk61;->b:I

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x8

    .line 12
    invoke-virtual {p0, p1, v2}, Lm61;->d(IZ)Lm61;

    move-result-object p0

    .line 13
    invoke-static {p0}, LY61;->a(Lm61;)LY61;

    move-result-object p0

    iput-object p0, v1, Le71;->e:LY61;

    .line 14
    iput v3, v1, LU61;->a:I

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x8

    .line 15
    invoke-virtual {p0, p1, v2}, Lm61;->d(IZ)Lm61;

    move-result-object p0

    .line 16
    invoke-static {p0}, LX61;->a(Lm61;)LX61;

    move-result-object p0

    iput-object p0, v1, Le71;->d:LX61;

    .line 17
    iput v3, v1, LU61;->a:I

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x8

    .line 18
    invoke-virtual {p0, p1, v2}, Lm61;->d(IZ)Lm61;

    move-result-object p0

    .line 19
    invoke-static {p0}, LV61;->a(Lm61;)LV61;

    move-result-object p0

    iput-object p0, v1, Le71;->c:LV61;

    .line 20
    iput v3, v1, LU61;->a:I

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, 0x8

    .line 21
    invoke-virtual {p0, p1, v2}, Lm61;->d(IZ)Lm61;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lb71;->a(Lm61;)Lb71;

    move-result-object p0

    iput-object p0, v1, Le71;->b:Lb71;

    .line 23
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

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le71;->e:LY61;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, v0, p2, v1}, Lr61;->a(LT61;IZ)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le71;->d:LX61;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, v0, p2, v1}, Lr61;->a(LT61;IZ)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Le71;->c:LV61;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, v0, p2, v1}, Lr61;->a(LT61;IZ)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Le71;->b:Lb71;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, v0, p2, v1}, Lr61;->a(LT61;IZ)V

    :goto_0
    return-void
.end method
