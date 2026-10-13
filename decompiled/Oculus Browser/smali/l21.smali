.class public final Ll21;
.super LT61;
.source "PG"


# static fields
.field public static final d:[Lk61;

.field public static final e:Lk61;


# instance fields
.field public b:[Lm21;

.field public c:Ljava/lang/String;


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

    sput-object v0, Ll21;->d:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, Ll21;->e:Lk61;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x18

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LT61;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    .line 2
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)Ll21;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, Ll21;->d:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, Ll21;

    invoke-direct {v1, v0}, Ll21;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    const/4 v4, -0x1

    .line 6
    invoke-virtual {v3, v4}, Lm61;->a(I)Lk61;

    move-result-object v4

    .line 7
    iget v5, v4, Lk61;->b:I

    new-array v5, v5, [Lm21;

    iput-object v5, v1, Ll21;->b:[Lm21;

    const/4 v5, 0x0

    .line 8
    :goto_0
    iget v6, v4, Lk61;->b:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v6

    .line 9
    iget-object v7, v1, Ll21;->b:[Lm21;

    invoke-static {v6}, Lm21;->a(Lm61;)Lm21;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, v0, v2}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ll21;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 6

    .line 12
    sget-object v0, Ll21;->e:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 13
    iget-object v0, p0, Ll21;->b:[Lm21;

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

    move-result-object v0

    const/4 v3, 0x0

    .line 16
    :goto_0
    iget-object v4, p0, Ll21;->b:[Lm21;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 17
    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v5, v1}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    iget-object v0, p0, Ll21;->c:Ljava/lang/String;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    return-void
.end method
