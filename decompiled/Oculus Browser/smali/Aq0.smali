.class public LAq0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final e:LAq0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LAq0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, LAq0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 2
    sput-object v0, LAq0;->e:LAq0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LAq0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, LAq0;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, LAq0;->c:Ljava/lang/Integer;

    .line 5
    iput-object p4, p0, LAq0;->d:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a(Z)Lsq0;
    .locals 6

    .line 1
    sget-object v0, Lsq0;->E:Lsq0;

    invoke-virtual {v0}, LTF;->c()LFF;

    move-result-object v0

    check-cast v0, Ljq0;

    .line 2
    sget-object v1, Lqq0;->C:Lqq0;

    invoke-virtual {v1}, LTF;->c()LFF;

    move-result-object v1

    check-cast v1, Lpq0;

    .line 3
    iget-object v2, p0, LAq0;->b:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, LFF;->g()V

    .line 5
    iget-object v4, v1, LFF;->x:LTF;

    check-cast v4, Lqq0;

    .line 6
    iget v5, v4, Lqq0;->z:I

    or-int/2addr v5, v3

    iput v5, v4, Lqq0;->z:I

    .line 7
    iput-object v2, v4, Lqq0;->A:Ljava/lang/String;

    .line 8
    :cond_0
    iget-object v2, p0, LAq0;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    invoke-virtual {v1}, LFF;->g()V

    .line 11
    iget-object v4, v1, LFF;->x:LTF;

    check-cast v4, Lqq0;

    .line 12
    iget v5, v4, Lqq0;->z:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lqq0;->z:I

    .line 13
    iput v2, v4, Lqq0;->B:I

    .line 14
    :cond_1
    invoke-virtual {v1}, LFF;->e()LTF;

    move-result-object v1

    check-cast v1, Lqq0;

    .line 15
    invoke-virtual {v0}, LFF;->g()V

    .line 16
    iget-object v2, v0, LFF;->x:LTF;

    check-cast v2, Lsq0;

    if-eqz v1, :cond_3

    .line 17
    iput-object v1, v2, Lsq0;->B:Ljava/lang/Object;

    .line 18
    iput v3, v2, Lsq0;->A:I

    .line 19
    iget-object v1, p0, LAq0;->d:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 21
    invoke-virtual {v0}, LFF;->g()V

    .line 22
    iget-object v3, v0, LFF;->x:LTF;

    check-cast v3, Lsq0;

    .line 23
    iget v4, v3, Lsq0;->z:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lsq0;->z:I

    .line 24
    iput-wide v1, v3, Lsq0;->D:J

    .line 25
    :cond_2
    invoke-virtual {v0}, LFF;->g()V

    .line 26
    iget-object v1, v0, LFF;->x:LTF;

    check-cast v1, Lsq0;

    .line 27
    iget v2, v1, Lsq0;->z:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lsq0;->z:I

    .line 28
    iput-boolean p1, v1, Lsq0;->C:Z

    .line 29
    invoke-virtual {v0}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, Lsq0;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    .line 30
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, LAq0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, LAq0;

    .line 3
    iget-object v0, p0, LAq0;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p1, LAq0;->a:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, LAq0;->b:Ljava/lang/String;

    .line 7
    iget-object p1, p1, LAq0;->b:Ljava/lang/String;

    .line 8
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, LAq0;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, LAq0;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
