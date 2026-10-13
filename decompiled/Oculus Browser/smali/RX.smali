.class public final LRX;
.super LT61;
.source "PG"


# static fields
.field public static final j:[Lk61;

.field public static final k:Lk61;


# instance fields
.field public b:[B

.field public c:LU71;

.field public d:Ljava/lang/String;

.field public e:[LPX;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:[LIX;

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, LRX;->j:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LRX;->k:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)LRX;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, LRX;->j:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, LRX;

    invoke-direct {v1, v0}, LRX;-><init>(I)V

    const/4 v0, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0, v2, v3, v0}, Lm61;->a(III)[B

    move-result-object v4

    iput-object v4, v1, LRX;->b:[B

    const/16 v4, 0x10

    .line 6
    invoke-virtual {p0, v4, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v4

    .line 7
    invoke-static {v4}, LU71;->a(Lm61;)LU71;

    move-result-object v4

    iput-object v4, v1, LRX;->c:LU71;

    const/16 v4, 0x18

    .line 8
    invoke-virtual {p0, v4, v3}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, LRX;->d:Ljava/lang/String;

    const/16 v4, 0x20

    .line 9
    invoke-virtual {p0, v4, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v0}, Lm61;->a(I)Lk61;

    move-result-object v5

    .line 11
    iget v6, v5, Lk61;->b:I

    new-array v6, v6, [LPX;

    iput-object v6, v1, LRX;->e:[LPX;

    const/4 v6, 0x0

    .line 12
    :goto_0
    iget v7, v5, Lk61;->b:I

    if-ge v6, v7, :cond_1

    const/16 v7, 0x8

    invoke-static {v6, v7, v2, v4, v3}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v7

    .line 13
    iget-object v8, v1, LRX;->e:[LPX;

    invoke-static {v7}, LPX;->a(Lm61;)LPX;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x28

    .line 14
    invoke-virtual {p0, v4}, Lm61;->e(I)I

    move-result v4

    iput v4, v1, LRX;->f:I

    .line 15
    invoke-static {v4}, LZX;->a(I)V

    const/16 v4, 0x2c

    .line 16
    invoke-virtual {p0, v4, v3}, Lm61;->a(II)Z

    move-result v4

    iput-boolean v4, v1, LRX;->i:Z

    const/16 v4, 0x30

    const/4 v5, 0x1

    .line 17
    invoke-virtual {p0, v4, v5}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, LRX;->g:Ljava/lang/String;

    const/16 v4, 0x38

    .line 18
    invoke-virtual {p0, v4, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v4

    .line 19
    invoke-virtual {v4, v0}, Lm61;->a(I)Lk61;

    move-result-object v0

    .line 20
    iget v5, v0, Lk61;->b:I

    new-array v5, v5, [LIX;

    iput-object v5, v1, LRX;->h:[LIX;

    const/4 v5, 0x0

    .line 21
    :goto_1
    iget v6, v0, Lk61;->b:I

    if-ge v5, v6, :cond_2

    const/16 v6, 0x8

    invoke-static {v5, v6, v2, v4, v3}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v6

    .line 22
    iget-object v7, v1, LRX;->h:[LIX;

    invoke-static {v6}, LIX;->a(Lm61;)LIX;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 7

    .line 24
    sget-object v0, LRX;->k:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 25
    iget-object v0, p0, LRX;->b:[B

    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, v1}, Lr61;->a([BIII)V

    .line 26
    iget-object v0, p0, LRX;->c:LU71;

    const/16 v4, 0x10

    invoke-virtual {p1, v0, v4, v3}, Lr61;->a(LT61;IZ)V

    .line 27
    iget-object v0, p0, LRX;->d:Ljava/lang/String;

    const/16 v4, 0x18

    invoke-virtual {p1, v0, v4, v3}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 28
    iget-object v0, p0, LRX;->e:[LPX;

    const/16 v4, 0x20

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p1, v4, v3}, Lr61;->b(IZ)V

    goto :goto_1

    .line 30
    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v1}, Lr61;->a(III)Lr61;

    move-result-object v0

    const/4 v4, 0x0

    .line 31
    :goto_0
    iget-object v5, p0, LRX;->e:[LPX;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 32
    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6, v3}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    iget v0, p0, LRX;->f:I

    const/16 v4, 0x28

    invoke-virtual {p1, v0, v4}, Lr61;->a(II)V

    .line 34
    iget-boolean v0, p0, LRX;->i:Z

    const/16 v4, 0x2c

    invoke-virtual {p1, v0, v4, v3}, Lr61;->a(ZII)V

    .line 35
    iget-object v0, p0, LRX;->g:Ljava/lang/String;

    const/16 v4, 0x30

    const/4 v5, 0x1

    invoke-virtual {p1, v0, v4, v5}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 36
    iget-object v0, p0, LRX;->h:[LIX;

    const/16 v4, 0x38

    if-nez v0, :cond_2

    .line 37
    invoke-virtual {p1, v4, v3}, Lr61;->b(IZ)V

    goto :goto_3

    .line 38
    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v1}, Lr61;->a(III)Lr61;

    move-result-object p1

    const/4 v0, 0x0

    .line 39
    :goto_2
    iget-object v1, p0, LRX;->h:[LIX;

    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 40
    aget-object v1, v1, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v2

    invoke-virtual {p1, v1, v4, v3}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
