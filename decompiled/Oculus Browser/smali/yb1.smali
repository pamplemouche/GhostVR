.class public final Lyb1;
.super LT61;
.source "PG"


# static fields
.field public static final g:[Lk61;

.field public static final h:Lk61;


# instance fields
.field public b:I

.field public c:I

.field public d:[B

.field public e:I

.field public f:I


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

    sput-object v0, Lyb1;->g:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, Lyb1;->h:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)Lyb1;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, Lyb1;->g:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, Lyb1;

    invoke-direct {v1, v0}, Lyb1;-><init>(I)V

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, Lyb1;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_1

    const/4 v4, 0x7

    if-gt v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v4, "Invalid enum value."

    if-eqz v0, :cond_4

    const/16 v0, 0xc

    .line 6
    :try_start_1
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, Lyb1;->c:I

    if-ltz v0, :cond_2

    const/4 v5, 0x3

    if-gt v0, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    const/16 v0, 0x10

    const/4 v2, -0x1

    .line 7
    invoke-virtual {p0, v0, v3, v2}, Lm61;->a(III)[B

    move-result-object v0

    iput-object v0, v1, Lyb1;->d:[B

    const/16 v0, 0x18

    .line 8
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, Lyb1;->e:I

    const/16 v0, 0x1c

    .line 9
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, Lyb1;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    .line 11
    :cond_3
    :try_start_2
    new-instance v0, Lo61;

    invoke-direct {v0, v4}, Lo61;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_4
    new-instance v0, Lo61;

    invoke-direct {v0, v4}, Lo61;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 13
    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 4

    .line 14
    sget-object v0, Lyb1;->h:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 15
    iget v0, p0, Lyb1;->b:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    .line 16
    iget v0, p0, Lyb1;->c:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    .line 17
    iget-object v0, p0, Lyb1;->d:[B

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v1, v2}, Lr61;->a([BIII)V

    .line 18
    iget v0, p0, Lyb1;->e:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    .line 19
    iget v0, p0, Lyb1;->f:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    return-void
.end method
