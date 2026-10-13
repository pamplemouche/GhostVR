.class public final LIa1;
.super LT61;
.source "PG"


# static fields
.field public static final c:[Lk61;

.field public static final d:Lk61;


# instance fields
.field public b:[LFa1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, LIa1;->c:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LIa1;->d:Lk61;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LT61;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    .line 2
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(LH61;)LIa1;
    .locals 8

    .line 1
    new-instance v0, Lm61;

    invoke-direct {v0, p0}, Lm61;-><init>(LH61;)V

    .line 2
    invoke-virtual {v0}, Lm61;->b()V

    .line 3
    :try_start_0
    sget-object p0, LIa1;->c:[Lk61;

    invoke-virtual {v0, p0}, Lm61;->a([Lk61;)Lk61;

    move-result-object p0

    .line 4
    iget p0, p0, Lk61;->b:I

    .line 5
    new-instance v1, LIa1;

    invoke-direct {v1, p0}, LIa1;-><init>(I)V

    const/16 p0, 0x8

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    const/4 v4, -0x1

    .line 7
    invoke-virtual {v3, v4}, Lm61;->a(I)Lk61;

    move-result-object v4

    .line 8
    iget v5, v4, Lk61;->b:I

    new-array v5, v5, [LFa1;

    iput-object v5, v1, LIa1;->b:[LFa1;

    const/4 v5, 0x0

    .line 9
    :goto_0
    iget v6, v4, Lk61;->b:I

    if-ge v5, v6, :cond_0

    const/16 v6, 0x8

    invoke-static {v5, v6, p0, v3, v2}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v6

    .line 10
    iget-object v7, v1, LIa1;->b:[LFa1;

    invoke-static {v6}, LFa1;->a(Lm61;)LFa1;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
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

    .line 12
    sget-object v0, LIa1;->d:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 13
    iget-object v0, p0, LIa1;->b:[LFa1;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p1, v2, v1}, Lr61;->b(IZ)V

    goto :goto_1

    .line 15
    :cond_0
    array-length v0, v0

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v2, v3}, Lr61;->a(III)Lr61;

    move-result-object p1

    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, LIa1;->b:[LFa1;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 17
    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v2

    invoke-virtual {p1, v3, v4, v1}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
