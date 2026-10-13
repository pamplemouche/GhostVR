.class public final LXX;
.super LT61;
.source "PG"


# static fields
.field public static final j:[Lk61;

.field public static final k:Lk61;


# instance fields
.field public b:LKX;

.field public c:[Lx71;

.field public d:[Lx71;

.field public e:[LVX;

.field public f:[Lxb1;

.field public g:LYX;

.field public h:Z

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

    sput-object v0, LXX;->j:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LXX;->k:Lk61;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LT61;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    .line 2
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(LH61;)LXX;
    .locals 9

    .line 1
    new-instance v0, Lm61;

    invoke-direct {v0, p0}, Lm61;-><init>(LH61;)V

    .line 2
    invoke-virtual {v0}, Lm61;->b()V

    .line 3
    :try_start_0
    sget-object p0, LXX;->j:[Lk61;

    invoke-virtual {v0, p0}, Lm61;->a([Lk61;)Lk61;

    move-result-object p0

    .line 4
    iget p0, p0, Lk61;->b:I

    .line 5
    new-instance v1, LXX;

    invoke-direct {v1, p0}, LXX;-><init>(I)V

    const/4 p0, 0x0

    const/16 v2, 0x8

    .line 6
    invoke-virtual {v0, v2, p0}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    .line 7
    invoke-static {v3}, LKX;->a(Lm61;)LKX;

    move-result-object v3

    iput-object v3, v1, LXX;->b:LKX;

    const/16 v3, 0x10

    const/4 v4, -0x1

    .line 8
    invoke-virtual {v0, v3, p0, v4}, Lm61;->c(III)[Lx71;

    move-result-object v3

    iput-object v3, v1, LXX;->c:[Lx71;

    const/16 v3, 0x18

    .line 9
    invoke-virtual {v0, v3, p0, v4}, Lm61;->c(III)[Lx71;

    move-result-object v3

    iput-object v3, v1, LXX;->d:[Lx71;

    const/16 v3, 0x20

    .line 10
    invoke-virtual {v0, v3, p0}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    .line 11
    invoke-virtual {v3, v4}, Lm61;->a(I)Lk61;

    move-result-object v5

    .line 12
    iget v6, v5, Lk61;->b:I

    new-array v6, v6, [LVX;

    iput-object v6, v1, LXX;->e:[LVX;

    const/4 v6, 0x0

    .line 13
    :goto_0
    iget v7, v5, Lk61;->b:I

    if-ge v6, v7, :cond_0

    const/16 v7, 0x8

    invoke-static {v6, v7, v2, v3, p0}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v7

    .line 14
    iget-object v8, v1, LXX;->e:[LVX;

    invoke-static {v7}, LVX;->a(Lm61;)LVX;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x28

    .line 15
    invoke-virtual {v0, v3, p0}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    .line 16
    invoke-virtual {v3, v4}, Lm61;->a(I)Lk61;

    move-result-object v4

    .line 17
    iget v5, v4, Lk61;->b:I

    new-array v5, v5, [Lxb1;

    iput-object v5, v1, LXX;->f:[Lxb1;

    const/4 v5, 0x0

    .line 18
    :goto_1
    iget v6, v4, Lk61;->b:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v2, v3, p0}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v6

    .line 19
    iget-object v7, v1, LXX;->f:[Lxb1;

    invoke-static {v6}, Lxb1;->a(Lm61;)Lxb1;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x30

    const/4 v3, 0x1

    .line 20
    invoke-virtual {v0, v2, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v2

    .line 21
    invoke-static {v2}, LYX;->a(Lm61;)LYX;

    move-result-object v2

    iput-object v2, v1, LXX;->g:LYX;

    const/16 v2, 0x38

    .line 22
    invoke-virtual {v0, v2, p0}, Lm61;->a(II)Z

    move-result p0

    iput-boolean p0, v1, LXX;->h:Z

    .line 23
    invoke-virtual {v0, v2, v3}, Lm61;->a(II)Z

    move-result p0

    iput-boolean p0, v1, LXX;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lm61;->a()V

    throw p0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 7

    .line 25
    sget-object v0, LXX;->k:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 26
    iget-object v0, p0, LXX;->b:LKX;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(LT61;IZ)V

    .line 27
    iget-object v0, p0, LXX;->c:[Lx71;

    const/4 v3, -0x1

    const/16 v4, 0x10

    invoke-virtual {p1, v0, v4, v2, v3}, Lr61;->a([Lq71;III)V

    .line 28
    iget-object v0, p0, LXX;->d:[Lx71;

    const/16 v4, 0x18

    invoke-virtual {p1, v0, v4, v2, v3}, Lr61;->a([Lq71;III)V

    .line 29
    iget-object v0, p0, LXX;->e:[LVX;

    const/16 v4, 0x20

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p1, v4, v2}, Lr61;->b(IZ)V

    goto :goto_1

    .line 31
    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lr61;->a(III)Lr61;

    move-result-object v0

    const/4 v4, 0x0

    .line 32
    :goto_0
    iget-object v5, p0, LXX;->e:[LVX;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 33
    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    iget-object v0, p0, LXX;->f:[Lxb1;

    const/16 v4, 0x28

    if-nez v0, :cond_2

    .line 35
    invoke-virtual {p1, v4, v2}, Lr61;->b(IZ)V

    goto :goto_3

    .line 36
    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lr61;->a(III)Lr61;

    move-result-object v0

    const/4 v3, 0x0

    .line 37
    :goto_2
    iget-object v4, p0, LXX;->f:[Lxb1;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 38
    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v0, v4, v5, v2}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 39
    :cond_3
    :goto_3
    iget-object v0, p0, LXX;->g:LYX;

    const/16 v1, 0x30

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lr61;->a(LT61;IZ)V

    .line 40
    iget-boolean v0, p0, LXX;->h:Z

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(ZII)V

    .line 41
    iget-boolean v0, p0, LXX;->i:Z

    invoke-virtual {p1, v0, v1, v3}, Lr61;->a(ZII)V

    return-void
.end method
