.class public LdW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LfW0;

    return-void
.end method

.method public synthetic constructor <init>(LbW0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(LcW0;LcW0;)I
    .locals 2

    .line 1
    iget-boolean v0, p0, LcW0;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, LcW0;->d:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    iget-boolean v0, p0, LcW0;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, LcW0;->d:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    iget-wide v0, p0, LcW0;->c:J

    iget-wide p0, p1, LcW0;->c:J

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(LcW0;LcW0;)I
    .locals 9

    .line 1
    iget-boolean v0, p1, LcW0;->b:Z

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-wide v6, p1, LcW0;->c:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p1, LcW0;->e:I

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v6, p2, LcW0;->b:Z

    if-eqz v6, :cond_3

    iget-wide v6, p2, LcW0;->c:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_4

    :cond_3
    iget v6, p2, LcW0;->e:I

    if-ne v6, v1, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 3
    invoke-static {p1, p2}, LdW0;->b(LcW0;LcW0;)I

    move-result p1

    return p1

    :cond_6
    const/4 v6, -0x1

    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    return v6

    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    return v5

    .line 4
    :cond_8
    iget-boolean v0, p1, LcW0;->b:Z

    if-eqz v0, :cond_9

    iget-wide v0, p1, LcW0;->c:J

    cmp-long v7, v0, v2

    if-lez v7, :cond_9

    iget-boolean v0, p1, LcW0;->d:Z

    if-nez v0, :cond_a

    :cond_9
    iget v0, p1, LcW0;->e:I

    if-ne v0, v5, :cond_b

    :cond_a
    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    .line 5
    :goto_2
    iget-boolean v1, p2, LcW0;->b:Z

    if-eqz v1, :cond_c

    iget-wide v7, p2, LcW0;->c:J

    cmp-long v1, v7, v2

    if-lez v1, :cond_c

    iget-boolean v1, p2, LcW0;->d:Z

    if-nez v1, :cond_d

    :cond_c
    iget v1, p2, LcW0;->e:I

    if-ne v1, v5, :cond_e

    :cond_d
    const/4 v1, 0x1

    goto :goto_3

    :cond_e
    const/4 v1, 0x0

    :goto_3
    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    .line 6
    invoke-static {p1, p2}, LdW0;->b(LcW0;LcW0;)I

    move-result p1

    return p1

    :cond_f
    if-eqz v0, :cond_10

    if-nez v1, :cond_10

    return v6

    :cond_10
    if-nez v0, :cond_11

    if-eqz v1, :cond_11

    return v5

    .line 7
    :cond_11
    iget-boolean v0, p1, LcW0;->b:Z

    if-nez v0, :cond_12

    iget-wide v0, p1, LcW0;->c:J

    cmp-long v7, v0, v2

    if-nez v7, :cond_12

    const/4 v0, 0x1

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    .line 8
    :goto_4
    iget-boolean v1, p2, LcW0;->b:Z

    if-nez v1, :cond_13

    iget-wide v7, p2, LcW0;->c:J

    cmp-long v1, v7, v2

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_5

    :cond_13
    const/4 v1, 0x0

    :goto_5
    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    return v4

    :cond_14
    if-eqz v0, :cond_15

    if-nez v1, :cond_15

    return v6

    :cond_15
    if-nez v0, :cond_16

    if-eqz v1, :cond_16

    return v5

    .line 9
    :cond_16
    iget-boolean v0, p1, LcW0;->b:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p2, LcW0;->b:Z

    if-nez v0, :cond_17

    return v6

    .line 10
    :cond_17
    iget-boolean v0, p1, LcW0;->b:Z

    if-nez v0, :cond_18

    iget-boolean v0, p2, LcW0;->b:Z

    if-eqz v0, :cond_18

    return v5

    .line 11
    :cond_18
    invoke-static {p1, p2}, LdW0;->b(LcW0;LcW0;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, LcW0;

    check-cast p2, LcW0;

    invoke-virtual {p0, p1, p2}, LdW0;->a(LcW0;LcW0;)I

    move-result p1

    return p1
.end method
