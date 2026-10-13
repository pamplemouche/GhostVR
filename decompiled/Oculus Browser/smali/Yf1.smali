.class public final LYf1;
.super LT61;
.source "PG"


# static fields
.field public static final f:[Lk61;

.field public static final g:Lk61;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lrf1;

.field public e:[Leg1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, LYf1;->f:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LYf1;->g:Lk61;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x28

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LT61;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    .line 2
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(LH61;)LYf1;
    .locals 8

    .line 1
    new-instance v0, Lm61;

    invoke-direct {v0, p0}, Lm61;-><init>(LH61;)V

    .line 2
    invoke-virtual {v0}, Lm61;->b()V

    .line 3
    :try_start_0
    sget-object p0, LYf1;->f:[Lk61;

    invoke-virtual {v0, p0}, Lm61;->a([Lk61;)Lk61;

    move-result-object p0

    .line 4
    iget p0, p0, Lk61;->b:I

    .line 5
    new-instance v1, LYf1;

    invoke-direct {v1, p0}, LYf1;-><init>(I)V

    const/4 p0, 0x0

    const/16 v2, 0x8

    .line 6
    invoke-virtual {v0, v2, p0}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, LYf1;->b:Ljava/lang/String;

    const/16 v3, 0x10

    .line 7
    invoke-virtual {v0, v3, p0}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, LYf1;->c:Ljava/lang/String;

    const/16 v3, 0x18

    .line 8
    invoke-virtual {v0, v3, p0}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    .line 9
    invoke-static {v3}, Lrf1;->a(Lm61;)Lrf1;

    move-result-object v3

    iput-object v3, v1, LYf1;->d:Lrf1;

    const/16 v3, 0x20

    .line 10
    invoke-virtual {v0, v3, p0}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    const/4 v4, -0x1

    .line 11
    invoke-virtual {v3, v4}, Lm61;->a(I)Lk61;

    move-result-object v4

    .line 12
    iget v5, v4, Lk61;->b:I

    new-array v5, v5, [Leg1;

    iput-object v5, v1, LYf1;->e:[Leg1;

    const/4 v5, 0x0

    .line 13
    :goto_0
    iget v6, v4, Lk61;->b:I

    if-ge v5, v6, :cond_0

    const/16 v6, 0x8

    invoke-static {v5, v6, v2, v3, p0}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v6

    .line 14
    iget-object v7, v1, LYf1;->e:[Leg1;

    invoke-static {v6}, Leg1;->a(Lm61;)Leg1;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lm61;->a()V

    throw p0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 5

    .line 16
    sget-object v0, LYf1;->g:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 17
    iget-object v0, p0, LYf1;->b:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 18
    iget-object v0, p0, LYf1;->c:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 19
    iget-object v0, p0, LYf1;->d:Lrf1;

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v3, v2}, Lr61;->a(LT61;IZ)V

    .line 20
    iget-object v0, p0, LYf1;->e:[Leg1;

    const/16 v3, 0x20

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p1, v3, v2}, Lr61;->b(IZ)V

    goto :goto_1

    .line 22
    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v3, v4}, Lr61;->a(III)Lr61;

    move-result-object p1

    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v3, p0, LYf1;->e:[Leg1;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 24
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
