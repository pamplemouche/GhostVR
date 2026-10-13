.class public final LOX;
.super LT61;
.source "PG"


# static fields
.field public static final p:[Lk61;

.field public static final q:Lk61;


# instance fields
.field public b:LSX;

.field public c:LUX;

.field public d:[B

.field public e:[LQX;

.field public f:LU71;

.field public g:[LPX;

.field public h:LMW;

.field public i:I

.field public j:LJX;

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Z

.field public o:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x60

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, LOX;->p:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LOX;->q:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x60

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)LOX;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, LOX;->p:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, LOX;

    invoke-direct {v1, v0}, LOX;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    .line 6
    invoke-static {v3}, LSX;->a(Lm61;)LSX;

    move-result-object v3

    iput-object v3, v1, LOX;->b:LSX;

    const/16 v3, 0x10

    .line 7
    invoke-virtual {p0, v3, v2}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    .line 8
    invoke-static {v3}, LUX;->a(Lm61;)LUX;

    move-result-object v3

    iput-object v3, v1, LOX;->c:LUX;

    const/16 v3, 0x18

    const/4 v4, -0x1

    .line 9
    invoke-virtual {p0, v3, v2, v4}, Lm61;->a(III)[B

    move-result-object v3

    iput-object v3, v1, LOX;->d:[B

    const/16 v3, 0x20

    .line 10
    invoke-virtual {p0, v3, v2}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    .line 11
    invoke-virtual {v3, v4}, Lm61;->a(I)Lk61;

    move-result-object v5

    .line 12
    iget v6, v5, Lk61;->b:I

    new-array v6, v6, [LQX;

    iput-object v6, v1, LOX;->e:[LQX;

    const/4 v6, 0x0

    .line 13
    :goto_0
    iget v7, v5, Lk61;->b:I

    if-ge v6, v7, :cond_1

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v3, v2}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v7

    .line 14
    iget-object v8, v1, LOX;->e:[LQX;

    invoke-static {v7}, LQX;->a(Lm61;)LQX;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x28

    .line 15
    invoke-virtual {p0, v3, v2}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    .line 16
    invoke-static {v3}, LU71;->a(Lm61;)LU71;

    move-result-object v3

    iput-object v3, v1, LOX;->f:LU71;

    const/16 v3, 0x30

    .line 17
    invoke-virtual {p0, v3, v2}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    .line 18
    invoke-virtual {v3, v4}, Lm61;->a(I)Lk61;

    move-result-object v4

    .line 19
    iget v5, v4, Lk61;->b:I

    new-array v5, v5, [LPX;

    iput-object v5, v1, LOX;->g:[LPX;

    const/4 v5, 0x0

    .line 20
    :goto_1
    iget v6, v4, Lk61;->b:I

    if-ge v5, v6, :cond_2

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v6

    .line 21
    iget-object v7, v1, LOX;->g:[LPX;

    invoke-static {v6}, LPX;->a(Lm61;)LPX;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x38

    const/4 v3, 0x1

    .line 22
    invoke-virtual {p0, v0, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    .line 23
    invoke-static {v0}, LMW;->a(Lm61;)LMW;

    move-result-object v0

    iput-object v0, v1, LOX;->h:LMW;

    const/16 v0, 0x40

    .line 24
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, LOX;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x3

    if-ltz v0, :cond_3

    if-gt v0, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const-string v5, "Invalid enum value."

    if-eqz v0, :cond_6

    const/16 v0, 0x44

    .line 25
    :try_start_1
    invoke-virtual {p0, v0, v2}, Lm61;->a(II)Z

    move-result v6

    iput-boolean v6, v1, LOX;->k:Z

    .line 26
    invoke-virtual {p0, v0, v3}, Lm61;->a(II)Z

    move-result v6

    iput-boolean v6, v1, LOX;->l:Z

    const/4 v6, 0x2

    .line 27
    invoke-virtual {p0, v0, v6}, Lm61;->a(II)Z

    move-result v0

    iput-boolean v0, v1, LOX;->n:Z

    const/16 v0, 0x48

    .line 28
    invoke-virtual {p0, v0, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    .line 29
    invoke-static {v0}, LJX;->a(Lm61;)LJX;

    move-result-object v0

    iput-object v0, v1, LOX;->j:LJX;

    const/16 v0, 0x50

    .line 30
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, LOX;->m:I

    if-ltz v0, :cond_4

    if-gt v0, v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    const/16 v0, 0x58

    .line 31
    invoke-virtual {p0, v0, v3}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LOX;->o:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    .line 33
    :cond_5
    :try_start_2
    new-instance v0, Lo61;

    invoke-direct {v0, v5}, Lo61;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_6
    new-instance v0, Lo61;

    invoke-direct {v0, v5}, Lo61;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 35
    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 7

    .line 36
    sget-object v0, LOX;->q:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 37
    iget-object v0, p0, LOX;->b:LSX;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(LT61;IZ)V

    .line 38
    iget-object v0, p0, LOX;->c:LUX;

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lr61;->a(LT61;IZ)V

    .line 39
    iget-object v0, p0, LOX;->d:[B

    const/4 v3, -0x1

    const/16 v4, 0x18

    invoke-virtual {p1, v0, v4, v2, v3}, Lr61;->a([BIII)V

    .line 40
    iget-object v0, p0, LOX;->e:[LQX;

    const/16 v4, 0x20

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p1, v4, v2}, Lr61;->b(IZ)V

    goto :goto_1

    .line 42
    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lr61;->a(III)Lr61;

    move-result-object v0

    const/4 v4, 0x0

    .line 43
    :goto_0
    iget-object v5, p0, LOX;->e:[LQX;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 44
    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    iget-object v0, p0, LOX;->f:LU71;

    const/16 v4, 0x28

    invoke-virtual {p1, v0, v4, v2}, Lr61;->a(LT61;IZ)V

    .line 46
    iget-object v0, p0, LOX;->g:[LPX;

    const/16 v4, 0x30

    if-nez v0, :cond_2

    .line 47
    invoke-virtual {p1, v4, v2}, Lr61;->b(IZ)V

    goto :goto_3

    .line 48
    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lr61;->a(III)Lr61;

    move-result-object v0

    const/4 v3, 0x0

    .line 49
    :goto_2
    iget-object v4, p0, LOX;->g:[LPX;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 50
    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v0, v4, v5, v2}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 51
    :cond_3
    :goto_3
    iget-object v0, p0, LOX;->h:LMW;

    const/16 v1, 0x38

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lr61;->a(LT61;IZ)V

    .line 52
    iget v0, p0, LOX;->i:I

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    .line 53
    iget-boolean v0, p0, LOX;->k:Z

    const/16 v1, 0x44

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(ZII)V

    .line 54
    iget-boolean v0, p0, LOX;->l:Z

    invoke-virtual {p1, v0, v1, v3}, Lr61;->a(ZII)V

    .line 55
    iget-boolean v0, p0, LOX;->n:Z

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(ZII)V

    .line 56
    iget-object v0, p0, LOX;->j:LJX;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v3}, Lr61;->a(LT61;IZ)V

    .line 57
    iget v0, p0, LOX;->m:I

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    .line 58
    iget-object v0, p0, LOX;->o:Ljava/lang/String;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v3}, Lr61;->a(Ljava/lang/String;IZ)V

    return-void
.end method
