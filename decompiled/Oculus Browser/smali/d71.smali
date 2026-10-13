.class public final Ld71;
.super LT61;
.source "PG"


# static fields
.field public static final c:[Lk61;

.field public static final d:Lk61;


# instance fields
.field public b:Lc71;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, Ld71;->c:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, Ld71;->d:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(LH61;)Ld71;
    .locals 6

    .line 1
    new-instance v0, Lm61;

    invoke-direct {v0, p0}, Lm61;-><init>(LH61;)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0}, Lm61;->b()V

    .line 3
    :try_start_0
    sget-object v1, Ld71;->c:[Lk61;

    invoke-virtual {v0, v1}, Lm61;->a([Lk61;)Lk61;

    move-result-object v1

    .line 4
    iget v1, v1, Lk61;->b:I

    .line 5
    new-instance v2, Ld71;

    invoke-direct {v2, v1}, Ld71;-><init>(I)V

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Lm61;->b(I)Lk61;

    move-result-object v1

    .line 7
    iget v3, v1, Lk61;->a:I

    if-nez v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Lc71;

    invoke-direct {p0}, Lc71;-><init>()V

    .line 9
    iget v1, v1, Lk61;->b:I

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, v4, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v1

    .line 11
    invoke-static {v1}, LW61;->a(Lm61;)LW61;

    move-result-object v1

    iput-object v1, p0, Lc71;->c:LW61;

    .line 12
    iput v5, p0, LU61;->a:I

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0, v4, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v1

    .line 14
    invoke-static {v1}, LZ61;->a(Lm61;)LZ61;

    move-result-object v1

    iput-object v1, p0, Lc71;->b:LZ61;

    .line 15
    iput v3, p0, LU61;->a:I

    .line 16
    :goto_0
    iput-object p0, v2, Ld71;->b:Lc71;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0}, Lm61;->a()V

    return-object v2

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lm61;->a()V

    throw p0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 3

    .line 18
    sget-object v0, Ld71;->d:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 19
    iget-object v0, p0, Ld71;->b:Lc71;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(LU61;IZ)V

    return-void
.end method
