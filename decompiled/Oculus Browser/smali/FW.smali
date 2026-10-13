.class public LFW;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final i:LFW;

.field public static final j:LFW;

.field public static final k:LFW;

.field public static final l:LFW;

.field public static final m:LFW;

.field public static final n:LFW;

.field public static final o:LFW;

.field public static final p:LFW;

.field public static final q:LFW;


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:B

.field public g:[B

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, LFW;

    invoke-direct {v0}, LFW;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, LFW;->a(I)LFW;

    move-result-object v0

    sput-object v0, LFW;->i:LFW;

    .line 3
    invoke-virtual {v0}, LFW;->a()LFW;

    move-result-object v0

    sput-object v0, LFW;->j:LFW;

    .line 4
    new-instance v0, LFW;

    invoke-direct {v0}, LFW;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, LFW;->a(I)LFW;

    move-result-object v0

    sput-object v0, LFW;->k:LFW;

    .line 6
    invoke-virtual {v0}, LFW;->a()LFW;

    move-result-object v0

    sput-object v0, LFW;->l:LFW;

    .line 7
    new-instance v0, LFW;

    invoke-direct {v0}, LFW;-><init>()V

    const/4 v3, 0x2

    .line 8
    invoke-virtual {v0, v3}, LFW;->a(I)LFW;

    move-result-object v0

    sput-object v0, LFW;->m:LFW;

    .line 9
    invoke-virtual {v0}, LFW;->a()LFW;

    move-result-object v0

    sput-object v0, LFW;->n:LFW;

    .line 10
    new-instance v0, LFW;

    invoke-direct {v0}, LFW;-><init>()V

    sput-object v0, LFW;->o:LFW;

    .line 11
    iput-boolean v2, v0, LFW;->h:Z

    .line 12
    new-instance v0, LFW;

    invoke-direct {v0}, LFW;-><init>()V

    .line 13
    new-instance v4, LFW;

    invoke-direct {v4, v0}, LFW;-><init>(LFW;)V

    .line 14
    iput-boolean v2, v4, LFW;->d:Z

    .line 15
    invoke-virtual {v4, v3}, LFW;->a(I)LFW;

    move-result-object v0

    sput-object v0, LFW;->p:LFW;

    .line 16
    invoke-virtual {v0, v3}, LFW;->a(I)LFW;

    .line 17
    sget-object v0, LFW;->p:LFW;

    .line 18
    invoke-virtual {v0, v2}, LFW;->a(I)LFW;

    .line 19
    sget-object v0, LFW;->p:LFW;

    .line 20
    invoke-virtual {v0, v1}, LFW;->a(I)LFW;

    .line 21
    new-instance v0, LFW;

    invoke-direct {v0}, LFW;-><init>()V

    .line 22
    new-instance v4, LFW;

    invoke-direct {v4, v0}, LFW;-><init>(LFW;)V

    .line 23
    iput-boolean v2, v4, LFW;->e:Z

    .line 24
    invoke-virtual {v4, v3}, LFW;->a(I)LFW;

    move-result-object v0

    sput-object v0, LFW;->q:LFW;

    .line 25
    invoke-virtual {v0, v3}, LFW;->a(I)LFW;

    .line 26
    sget-object v0, LFW;->q:LFW;

    .line 27
    invoke-virtual {v0, v2}, LFW;->a(I)LFW;

    .line 28
    sget-object v0, LFW;->q:LFW;

    .line 29
    invoke-virtual {v0, v1}, LFW;->a(I)LFW;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, LFW;->b:I

    return-void
.end method

.method public constructor <init>(LFW;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-boolean v0, p1, LFW;->a:Z

    iput-boolean v0, p0, LFW;->a:Z

    .line 5
    iget v0, p1, LFW;->b:I

    iput v0, p0, LFW;->b:I

    .line 6
    iget-boolean v0, p1, LFW;->c:Z

    iput-boolean v0, p0, LFW;->c:Z

    .line 7
    iget-boolean v0, p1, LFW;->d:Z

    iput-boolean v0, p0, LFW;->d:Z

    .line 8
    iget-byte v0, p1, LFW;->f:B

    iput-byte v0, p0, LFW;->f:B

    .line 9
    iget-boolean v0, p1, LFW;->e:Z

    iput-boolean v0, p0, LFW;->e:Z

    .line 10
    iget-object p1, p1, LFW;->g:[B

    iput-object p1, p0, LFW;->g:[B

    return-void
.end method


# virtual methods
.method public a()LFW;
    .locals 2

    .line 4
    new-instance v0, LFW;

    invoke-direct {v0, p0}, LFW;-><init>(LFW;)V

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, LFW;->c:Z

    return-object v0
.end method

.method public a(I)LFW;
    .locals 2

    .line 1
    new-instance v0, LFW;

    invoke-direct {v0, p0}, LFW;-><init>(LFW;)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, LFW;->a:Z

    .line 3
    iput p1, v0, LFW;->b:I

    return-object v0
.end method

.method public a(LGW;Ljava/lang/Object;)LFW;
    .locals 2

    .line 6
    check-cast p1, LXW0;

    if-eqz p1, :cond_0

    .line 7
    check-cast p2, LYW0;

    const/16 p1, 0x8

    new-array p1, p1, [B

    const/4 v0, 0x2

    const/4 v1, 0x1

    aput-byte v1, p1, v0

    .line 8
    iget p2, p2, LYW0;->a:I

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    .line 9
    new-instance p2, LFW;

    invoke-direct {p2, p0}, LFW;-><init>(LFW;)V

    int-to-byte v0, v1

    .line 10
    iput-byte v0, p2, LFW;->f:B

    .line 11
    iput-object p1, p2, LFW;->g:[B

    return-object p2

    :cond_0
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LFW;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, LFW;

    .line 3
    iget-boolean v1, p0, LFW;->a:Z

    iget-boolean v3, p1, LFW;->a:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, LFW;->b:I

    iget v3, p1, LFW;->b:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, LFW;->c:Z

    iget-boolean v3, p1, LFW;->c:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, LFW;->d:Z

    iget-boolean v3, p1, LFW;->d:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, LFW;->e:Z

    iget-boolean v3, p1, LFW;->e:Z

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, LFW;->f:B

    iget-byte v3, p1, LFW;->f:B

    if-ne v1, v3, :cond_1

    iget-object v1, p0, LFW;->g:[B

    iget-object v3, p1, LFW;->g:[B

    .line 4
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, LFW;->h:Z

    iget-boolean p1, p1, LFW;->h:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, LFW;->a:Z

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x47b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 2
    iget v0, p0, LFW;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 3
    iget-boolean v0, p0, LFW;->c:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 4
    iget-boolean v0, p0, LFW;->d:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 5
    iget-boolean v0, p0, LFW;->e:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 6
    iget-byte v0, p0, LFW;->f:B

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 7
    iget-object v0, p0, LFW;->g:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 8
    iget-boolean v1, p0, LFW;->h:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method
