.class public Lzq0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final j:Lzq0;

.field public static final k:Lzq0;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Integer;

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/lang/Integer;

.field public final e:Ljava/lang/Integer;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Integer;

.field public final h:Ljava/lang/Integer;

.field public i:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lzq0;->a(I)Lyq0;

    move-result-object v0

    invoke-virtual {v0}, Lyq0;->a()Lzq0;

    move-result-object v0

    sput-object v0, Lzq0;->j:Lzq0;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lzq0;->a(I)Lyq0;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lyq0;->a()Lzq0;

    move-result-object v0

    sput-object v0, Lzq0;->k:Lzq0;

    return-void
.end method

.method public synthetic constructor <init>(Lyq0;Lxq0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p2, p1, Lyq0;->a:I

    .line 3
    iput p2, p0, Lzq0;->a:I

    .line 4
    iget-object p2, p1, Lyq0;->b:Ljava/lang/Integer;

    .line 5
    iput-object p2, p0, Lzq0;->b:Ljava/lang/Integer;

    .line 6
    iget-object p2, p1, Lyq0;->c:Ljava/lang/Integer;

    .line 7
    iput-object p2, p0, Lzq0;->c:Ljava/lang/Integer;

    .line 8
    iget-object p2, p1, Lyq0;->d:Ljava/lang/Integer;

    .line 9
    iput-object p2, p0, Lzq0;->d:Ljava/lang/Integer;

    .line 10
    iget-object p2, p1, Lyq0;->e:Ljava/lang/Integer;

    .line 11
    iput-object p2, p0, Lzq0;->e:Ljava/lang/Integer;

    .line 12
    iget-object p2, p1, Lyq0;->f:Ljava/lang/Integer;

    .line 13
    iput-object p2, p0, Lzq0;->f:Ljava/lang/Integer;

    .line 14
    iget-object p2, p1, Lyq0;->g:Ljava/lang/Integer;

    .line 15
    iput-object p2, p0, Lzq0;->g:Ljava/lang/Integer;

    .line 16
    iget-object p2, p1, Lyq0;->h:Ljava/lang/Integer;

    .line 17
    iput-object p2, p0, Lzq0;->h:Ljava/lang/Integer;

    .line 18
    iget-object p1, p1, Lyq0;->i:Ljava/lang/Long;

    .line 19
    iput-object p1, p0, Lzq0;->i:Ljava/lang/Long;

    return-void
.end method

.method public static a(I)Lyq0;
    .locals 1

    .line 1
    new-instance v0, Lyq0;

    invoke-direct {v0}, Lyq0;-><init>()V

    .line 2
    iput p0, v0, Lyq0;->a:I

    return-object v0
.end method


# virtual methods
.method public a(Z)Lsq0;
    .locals 7

    .line 3
    sget-object v0, Lsq0;->E:Lsq0;

    invoke-virtual {v0}, LTF;->c()LFF;

    move-result-object v0

    check-cast v0, Ljq0;

    .line 4
    sget-object v1, Lmq0;->I:Lmq0;

    invoke-virtual {v1}, LTF;->c()LFF;

    move-result-object v1

    check-cast v1, Lkq0;

    .line 5
    iget v2, p0, Lzq0;->a:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    if-eq v2, v3, :cond_1

    const/4 v5, 0x5

    if-eq v2, v5, :cond_0

    .line 6
    sget-object v2, Llq0;->x:Llq0;

    invoke-virtual {v1, v2}, Lkq0;->a(Llq0;)Lkq0;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v2, Llq0;->B:Llq0;

    invoke-virtual {v1, v2}, Lkq0;->a(Llq0;)Lkq0;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v2, Llq0;->z:Llq0;

    invoke-virtual {v1, v2}, Lkq0;->a(Llq0;)Lkq0;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v2, Llq0;->y:Llq0;

    invoke-virtual {v1, v2}, Lkq0;->a(Llq0;)Lkq0;

    goto :goto_0

    .line 10
    :cond_3
    sget-object v2, Llq0;->A:Llq0;

    invoke-virtual {v1, v2}, Lkq0;->a(Llq0;)Lkq0;

    .line 11
    :goto_0
    iget-object v2, p0, Lzq0;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 13
    invoke-virtual {v1}, LFF;->g()V

    .line 14
    iget-object v5, v1, LFF;->x:LTF;

    check-cast v5, Lmq0;

    .line 15
    iget v6, v5, Lmq0;->z:I

    or-int/2addr v6, v4

    iput v6, v5, Lmq0;->z:I

    .line 16
    iput v2, v5, Lmq0;->B:I

    .line 17
    :cond_4
    iget-object v2, p0, Lzq0;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 19
    invoke-virtual {v1}, LFF;->g()V

    .line 20
    iget-object v5, v1, LFF;->x:LTF;

    check-cast v5, Lmq0;

    .line 21
    iget v6, v5, Lmq0;->z:I

    or-int/2addr v6, v3

    iput v6, v5, Lmq0;->z:I

    .line 22
    iput v2, v5, Lmq0;->C:I

    .line 23
    :cond_5
    iget-object v2, p0, Lzq0;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 25
    invoke-virtual {v1}, LFF;->g()V

    .line 26
    iget-object v5, v1, LFF;->x:LTF;

    check-cast v5, Lmq0;

    .line 27
    iget v6, v5, Lmq0;->z:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Lmq0;->z:I

    .line 28
    iput v2, v5, Lmq0;->D:I

    .line 29
    :cond_6
    iget-object v2, p0, Lzq0;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 30
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 31
    invoke-virtual {v1}, LFF;->g()V

    .line 32
    iget-object v5, v1, LFF;->x:LTF;

    check-cast v5, Lmq0;

    .line 33
    iget v6, v5, Lmq0;->z:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Lmq0;->z:I

    .line 34
    iput v2, v5, Lmq0;->E:I

    .line 35
    :cond_7
    iget-object v2, p0, Lzq0;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    .line 36
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 37
    invoke-virtual {v1}, LFF;->g()V

    .line 38
    iget-object v5, v1, LFF;->x:LTF;

    check-cast v5, Lmq0;

    .line 39
    iget v6, v5, Lmq0;->z:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v5, Lmq0;->z:I

    .line 40
    iput v2, v5, Lmq0;->F:I

    .line 41
    :cond_8
    iget-object v2, p0, Lzq0;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 42
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 43
    invoke-virtual {v1}, LFF;->g()V

    .line 44
    iget-object v5, v1, LFF;->x:LTF;

    check-cast v5, Lmq0;

    .line 45
    iget v6, v5, Lmq0;->z:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v5, Lmq0;->z:I

    .line 46
    iput v2, v5, Lmq0;->G:I

    .line 47
    :cond_9
    iget-object v2, p0, Lzq0;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 48
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 49
    invoke-virtual {v1}, LFF;->g()V

    .line 50
    iget-object v5, v1, LFF;->x:LTF;

    check-cast v5, Lmq0;

    .line 51
    iget v6, v5, Lmq0;->z:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v5, Lmq0;->z:I

    .line 52
    iput v2, v5, Lmq0;->H:I

    .line 53
    :cond_a
    invoke-virtual {v1}, LFF;->e()LTF;

    move-result-object v1

    check-cast v1, Lmq0;

    .line 54
    invoke-virtual {v0}, LFF;->g()V

    .line 55
    iget-object v2, v0, LFF;->x:LTF;

    check-cast v2, Lsq0;

    if-eqz v1, :cond_c

    .line 56
    iput-object v1, v2, Lsq0;->B:Ljava/lang/Object;

    .line 57
    iput v4, v2, Lsq0;->A:I

    .line 58
    iget-object v1, p0, Lzq0;->i:Ljava/lang/Long;

    if-eqz v1, :cond_b

    .line 59
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 60
    invoke-virtual {v0}, LFF;->g()V

    .line 61
    iget-object v4, v0, LFF;->x:LTF;

    check-cast v4, Lsq0;

    .line 62
    iget v5, v4, Lsq0;->z:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Lsq0;->z:I

    .line 63
    iput-wide v1, v4, Lsq0;->D:J

    .line 64
    :cond_b
    invoke-virtual {v0}, LFF;->g()V

    .line 65
    iget-object v1, v0, LFF;->x:LTF;

    check-cast v1, Lsq0;

    .line 66
    iget v2, v1, Lsq0;->z:I

    or-int/2addr v2, v3

    iput v2, v1, Lsq0;->z:I

    .line 67
    iput-boolean p1, v1, Lsq0;->C:Z

    .line 68
    invoke-virtual {v0}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, Lsq0;

    return-object p1

    :cond_c
    const/4 p1, 0x0

    .line 69
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lzq0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lzq0;

    .line 3
    iget v0, p0, Lzq0;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4
    iget v2, p1, Lzq0;->a:I

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lzq0;->b:Ljava/lang/Integer;

    .line 8
    iget-object v2, p1, Lzq0;->b:Ljava/lang/Integer;

    .line 9
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lzq0;->c:Ljava/lang/Integer;

    .line 11
    iget-object v2, p1, Lzq0;->c:Ljava/lang/Integer;

    .line 12
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lzq0;->d:Ljava/lang/Integer;

    .line 14
    iget-object v2, p1, Lzq0;->d:Ljava/lang/Integer;

    .line 15
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lzq0;->e:Ljava/lang/Integer;

    .line 17
    iget-object v2, p1, Lzq0;->e:Ljava/lang/Integer;

    .line 18
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lzq0;->f:Ljava/lang/Integer;

    .line 20
    iget-object v2, p1, Lzq0;->f:Ljava/lang/Integer;

    .line 21
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lzq0;->g:Ljava/lang/Integer;

    .line 23
    iget-object v2, p1, Lzq0;->g:Ljava/lang/Integer;

    .line 24
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lzq0;->h:Ljava/lang/Integer;

    .line 26
    iget-object p1, p1, Lzq0;->h:Ljava/lang/Integer;

    .line 27
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lzq0;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lzq0;->b:Ljava/lang/Integer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lzq0;->c:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lzq0;->d:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lzq0;->e:Ljava/lang/Integer;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lzq0;->f:Ljava/lang/Integer;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lzq0;->g:Ljava/lang/Integer;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lzq0;->h:Ljava/lang/Integer;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
