.class public final LS81;
.super LT61;
.source "PG"


# static fields
.field public static final l:[Lk61;

.field public static final m:Lk61;


# instance fields
.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x58

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, LS81;->l:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LS81;->m:Lk61;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x58

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LT61;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x58

    .line 2
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)LS81;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, LS81;->l:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, LS81;

    invoke-direct {v1, v0}, LS81;-><init>(I)V

    const/4 v0, 0x0

    const/16 v2, 0x8

    .line 5
    invoke-virtual {p0, v2, v0}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, LS81;->b:Ljava/lang/String;

    const/16 v3, 0x10

    .line 6
    invoke-virtual {p0, v3, v0}, Lm61;->d(IZ)Lm61;

    move-result-object v3

    const/4 v4, -0x1

    .line 7
    invoke-virtual {v3, v4}, Lm61;->a(I)Lk61;

    move-result-object v4

    .line 8
    iget v5, v4, Lk61;->b:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, LS81;->c:[Ljava/lang/String;

    const/4 v5, 0x0

    .line 9
    :goto_0
    iget v6, v4, Lk61;->b:I

    if-ge v5, v6, :cond_1

    .line 10
    iget-object v6, v1, LS81;->c:[Ljava/lang/String;

    mul-int/lit8 v7, v5, 0x8

    add-int/2addr v7, v2

    invoke-virtual {v3, v7, v0}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x18

    .line 11
    invoke-virtual {p0, v2, v0}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LS81;->d:Ljava/lang/String;

    const/16 v2, 0x20

    .line 12
    invoke-virtual {p0, v2, v0}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LS81;->e:Ljava/lang/String;

    const/16 v2, 0x28

    .line 13
    invoke-virtual {p0, v2, v0}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LS81;->f:Ljava/lang/String;

    const/16 v2, 0x30

    .line 14
    invoke-virtual {p0, v2, v0}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LS81;->g:Ljava/lang/String;

    const/16 v2, 0x38

    .line 15
    invoke-virtual {p0, v2, v0}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LS81;->h:Ljava/lang/String;

    const/16 v2, 0x40

    .line 16
    invoke-virtual {p0, v2, v0}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LS81;->i:Ljava/lang/String;

    const/16 v2, 0x48

    .line 17
    invoke-virtual {p0, v2, v0}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LS81;->j:Ljava/lang/String;

    const/16 v2, 0x50

    .line 18
    invoke-virtual {p0, v2, v0}, Lm61;->e(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LS81;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
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

    .line 20
    sget-object v0, LS81;->m:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 21
    iget-object v0, p0, LS81;->b:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 22
    iget-object v0, p0, LS81;->c:[Ljava/lang/String;

    const/16 v3, 0x10

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p1, v3, v2}, Lr61;->b(IZ)V

    goto :goto_1

    .line 24
    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v3, v4}, Lr61;->a(III)Lr61;

    move-result-object v0

    const/4 v3, 0x0

    .line 25
    :goto_0
    iget-object v4, p0, LS81;->c:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 26
    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v0, v4, v5, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    iget-object v0, p0, LS81;->d:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 28
    iget-object v0, p0, LS81;->e:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 29
    iget-object v0, p0, LS81;->f:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 30
    iget-object v0, p0, LS81;->g:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 31
    iget-object v0, p0, LS81;->h:Ljava/lang/String;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 32
    iget-object v0, p0, LS81;->i:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 33
    iget-object v0, p0, LS81;->j:Ljava/lang/String;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    .line 34
    iget-object v0, p0, LS81;->k:Ljava/lang/String;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(Ljava/lang/String;IZ)V

    return-void
.end method
