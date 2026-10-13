.class public final LKX;
.super LT61;
.source "PG"


# static fields
.field public static final i:[Lk61;

.field public static final j:Lk61;


# instance fields
.field public b:LS71;

.field public c:[LWX;

.field public d:J

.field public e:J

.field public f:J

.field public g:Z

.field public h:LV71;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x48

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, LKX;->i:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LKX;->j:Lk61;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x48

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LT61;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x48

    .line 2
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)LKX;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, LKX;->i:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, LKX;

    invoke-direct {v1, v0}, LKX;-><init>(I)V

    const/16 v0, 0x8

    .line 5
    invoke-static {p0, v0}, LS71;->a(Lm61;I)LS71;

    move-result-object v2

    iput-object v2, v1, LKX;->b:LS71;

    const/16 v2, 0x18

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p0, v2, v3}, Lm61;->d(IZ)Lm61;

    move-result-object v2

    const/4 v4, -0x1

    .line 7
    invoke-virtual {v2, v4}, Lm61;->a(I)Lk61;

    move-result-object v4

    .line 8
    iget v5, v4, Lk61;->b:I

    new-array v5, v5, [LWX;

    iput-object v5, v1, LKX;->c:[LWX;

    const/4 v5, 0x0

    .line 9
    :goto_0
    iget v6, v4, Lk61;->b:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v2, v3}, LZi;->a(IIILm61;Z)Lm61;

    move-result-object v6

    .line 10
    iget-object v7, v1, LKX;->c:[LWX;

    invoke-static {v6}, LWX;->a(Lm61;)LWX;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    .line 11
    invoke-virtual {p0, v0}, Lm61;->f(I)J

    move-result-wide v4

    iput-wide v4, v1, LKX;->d:J

    const/16 v0, 0x28

    .line 12
    invoke-virtual {p0, v0}, Lm61;->f(I)J

    move-result-wide v4

    iput-wide v4, v1, LKX;->e:J

    const/16 v0, 0x30

    .line 13
    invoke-virtual {p0, v0}, Lm61;->f(I)J

    move-result-wide v4

    iput-wide v4, v1, LKX;->f:J

    const/16 v0, 0x38

    .line 14
    invoke-virtual {p0, v0, v3}, Lm61;->a(II)Z

    move-result v0

    iput-boolean v0, v1, LKX;->g:Z

    const/16 v0, 0x40

    const/4 v2, 0x1

    .line 15
    invoke-virtual {p0, v0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    .line 16
    invoke-static {v0}, LV71;->a(Lm61;)LV71;

    move-result-object v0

    iput-object v0, v1, LKX;->h:LV71;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
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

    .line 18
    sget-object v0, LKX;->j:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 19
    iget-object v0, p0, LKX;->b:LS71;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(LU61;IZ)V

    .line 20
    iget-object v0, p0, LKX;->c:[LWX;

    const/16 v3, 0x18

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p1, v3, v2}, Lr61;->b(IZ)V

    goto :goto_1

    .line 22
    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v3, v4}, Lr61;->a(III)Lr61;

    move-result-object v0

    const/4 v3, 0x0

    .line 23
    :goto_0
    iget-object v4, p0, LKX;->c:[LWX;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 24
    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v0, v4, v5, v2}, Lr61;->a(LT61;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    iget-wide v0, p0, LKX;->d:J

    const/16 v3, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lr61;->a(JI)V

    .line 26
    iget-wide v0, p0, LKX;->e:J

    const/16 v3, 0x28

    invoke-virtual {p1, v0, v1, v3}, Lr61;->a(JI)V

    .line 27
    iget-wide v0, p0, LKX;->f:J

    const/16 v3, 0x30

    invoke-virtual {p1, v0, v1, v3}, Lr61;->a(JI)V

    .line 28
    iget-boolean v0, p0, LKX;->g:Z

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(ZII)V

    .line 29
    iget-object v0, p0, LKX;->h:LV71;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lr61;->a(LT61;IZ)V

    return-void
.end method
