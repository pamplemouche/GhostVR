.class public final LMX;
.super LT61;
.source "PG"


# static fields
.field public static final j:[Lk61;

.field public static final k:Lk61;


# instance fields
.field public b:LLX;

.field public c:[B

.field public d:[B

.field public e:[B

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:[LaY;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x38

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, LMX;->j:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LMX;->k:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x38

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)LMX;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v1, LMX;->j:[Lk61;

    invoke-virtual {p0, v1}, Lm61;->a([Lk61;)Lk61;

    move-result-object v1

    .line 3
    iget v1, v1, Lk61;->b:I

    .line 4
    new-instance v2, LMX;

    invoke-direct {v2, v1}, LMX;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0, v1, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v4

    .line 6
    invoke-static {v4}, LLX;->a(Lm61;)LLX;

    move-result-object v4

    iput-object v4, v2, LMX;->b:LLX;

    const/16 v4, 0x10

    const/4 v5, -0x1

    .line 7
    invoke-virtual {p0, v4, v3, v5}, Lm61;->a(III)[B

    move-result-object v4

    iput-object v4, v2, LMX;->c:[B

    const/16 v4, 0x18

    .line 8
    invoke-virtual {p0, v4, v3, v5}, Lm61;->a(III)[B

    move-result-object v4

    iput-object v4, v2, LMX;->d:[B

    const/16 v4, 0x20

    const/4 v6, 0x1

    .line 9
    invoke-virtual {p0, v4, v6, v5}, Lm61;->a(III)[B

    move-result-object v4

    iput-object v4, v2, LMX;->e:[B

    const/16 v4, 0x28

    .line 10
    invoke-virtual {p0, v4, v3}, Lm61;->a(II)Z

    move-result v7

    iput-boolean v7, v2, LMX;->f:Z

    .line 11
    invoke-virtual {p0, v4, v6}, Lm61;->a(II)Z

    move-result v7

    iput-boolean v7, v2, LMX;->g:Z

    const/4 v7, 0x2

    .line 12
    invoke-virtual {p0, v4, v7}, Lm61;->a(II)Z

    move-result v4

    iput-boolean v4, v2, LMX;->h:Z

    const/16 v4, 0x30

    .line 13
    invoke-virtual {p0, v4, v6}, Lm61;->d(IZ)Lm61;

    move-result-object v4

    if-nez v4, :cond_1

    .line 14
    iput-object v0, v2, LMX;->i:[LaY;

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v4, v5}, Lm61;->a(I)Lk61;

    move-result-object v0

    .line 16
    iget v5, v0, Lk61;->b:I

    new-array v5, v5, [LaY;

    iput-object v5, v2, LMX;->i:[LaY;

    const/4 v5, 0x0

    .line 17
    :goto_0
    iget v6, v0, Lk61;->b:I

    if-ge v5, v6, :cond_2

    const/16 v6, 0x8

    invoke-static {v5, v6, v1, v4, v3}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v6

    .line 18
    iget-object v7, v2, LMX;->i:[LaY;

    invoke-static {v6}, LaY;->a(Lm61;)LaY;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 19
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lm61;->a()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 7

    .line 20
    sget-object v0, LMX;->k:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 21
    iget-object v0, p0, LMX;->b:LLX;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(LT61;IZ)V

    .line 22
    iget-object v0, p0, LMX;->c:[B

    const/4 v3, -0x1

    const/16 v4, 0x10

    invoke-virtual {p1, v0, v4, v2, v3}, Lr61;->a([BIII)V

    .line 23
    iget-object v0, p0, LMX;->d:[B

    const/16 v4, 0x18

    invoke-virtual {p1, v0, v4, v2, v3}, Lr61;->a([BIII)V

    .line 24
    iget-object v0, p0, LMX;->e:[B

    const/4 v4, 0x1

    const/16 v5, 0x20

    invoke-virtual {p1, v0, v5, v4, v3}, Lr61;->a([BIII)V

    .line 25
    iget-boolean v0, p0, LMX;->f:Z

    const/16 v5, 0x28

    invoke-virtual {p1, v0, v5, v2}, Lr61;->a(ZII)V

    .line 26
    iget-boolean v0, p0, LMX;->g:Z

    invoke-virtual {p1, v0, v5, v4}, Lr61;->a(ZII)V

    .line 27
    iget-boolean v0, p0, LMX;->h:Z

    const/4 v6, 0x2

    invoke-virtual {p1, v0, v5, v6}, Lr61;->a(ZII)V

    .line 28
    iget-object v0, p0, LMX;->i:[LaY;

    const/16 v5, 0x30

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p1, v5, v4}, Lr61;->b(IZ)V

    goto :goto_1

    .line 30
    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v5, v3}, Lr61;->a(III)Lr61;

    move-result-object p1

    const/4 v0, 0x0

    .line 31
    :goto_0
    iget-object v3, p0, LMX;->i:[LaY;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 32
    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4, v2}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
