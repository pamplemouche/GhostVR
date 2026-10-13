.class public final Lob1;
.super LT61;
.source "PG"


# static fields
.field public static final e:[Lk61;

.field public static final f:Lk61;


# instance fields
.field public b:Ljava/lang/String;

.field public c:LX31;

.field public d:[LW31;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, Lob1;->e:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, Lob1;->f:Lk61;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LT61;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    .line 2
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)Lob1;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, Lob1;->e:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, Lob1;

    invoke-direct {v1, v0}, Lob1;-><init>(I)V

    const/4 v0, 0x0

    const/16 v2, 0x8

    .line 5
    invoke-virtual {p0, v2, v0}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lob1;->b:Ljava/lang/String;

    const/16 v3, 0x10

    .line 6
    invoke-virtual {p0, v3, v0}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    .line 7
    invoke-static {v3}, LX31;->a(Lm61;)LX31;

    move-result-object v3

    iput-object v3, v1, Lob1;->c:LX31;

    const/16 v3, 0x18

    .line 8
    invoke-virtual {p0, v3, v0}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    const/4 v4, -0x1

    .line 9
    invoke-virtual {v3, v4}, Lm61;->a(I)Lk61;

    move-result-object v4

    .line 10
    iget v5, v4, Lk61;->b:I

    new-array v5, v5, [LW31;

    iput-object v5, v1, Lob1;->d:[LW31;

    const/4 v5, 0x0

    .line 11
    :goto_0
    iget v6, v4, Lk61;->b:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v2, v3, v0}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v6

    .line 12
    iget-object v7, v1, Lob1;->d:[LW31;

    invoke-static {v6}, LW31;->a(Lm61;)LW31;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 5

    .line 14
    sget-object v0, Lob1;->f:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lob1;->b:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 16
    iget-object v0, p0, Lob1;->c:LX31;

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lr61;->a(LT61;IZ)V

    .line 17
    iget-object v0, p0, Lob1;->d:[LW31;

    const/16 v3, 0x18

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p1, v3, v2}, Lr61;->b(IZ)V

    goto :goto_1

    .line 19
    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v3, v4}, Lr61;->a(III)Lr61;

    move-result-object p1

    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v3, p0, Lob1;->d:[LW31;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 21
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
