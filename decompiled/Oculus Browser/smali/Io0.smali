.class public final LIo0;
.super LTF;
.source "PG"

# interfaces
.implements LJo0;


# static fields
.field public static final F:LIo0;

.field public static volatile G:LkG;


# instance fields
.field public A:J

.field public B:Ljava/lang/String;

.field public C:I

.field public D:I

.field public E:Z

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LIo0;

    invoke-direct {v0}, LIo0;-><init>()V

    sput-object v0, LIo0;->F:LIo0;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, LIo0;->B:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, LIo0;->C:I

    .line 4
    iput v0, p0, LIo0;->D:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 15
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 16
    iget v1, p0, LIo0;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 17
    iget-wide v3, p0, LIo0;->A:J

    .line 18
    invoke-static {v2, v3, v4}, LxF;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_1
    iget v1, p0, LIo0;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 20
    iget-object v1, p0, LIo0;->B:Ljava/lang/String;

    .line 21
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_2
    iget v1, p0, LIo0;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 23
    iget v3, p0, LIo0;->C:I

    .line 24
    invoke-static {v1, v3}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_3
    iget v1, p0, LIo0;->z:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 26
    iget v1, p0, LIo0;->D:I

    .line 27
    invoke-static {v2, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_4
    iget v1, p0, LIo0;->z:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 29
    iget-boolean v2, p0, LIo0;->E:Z

    .line 30
    invoke-static {v1, v2}, LxF;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_5
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 32
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    .line 33
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/16 v7, 0x8

    const/4 v8, 0x4

    packed-switch v0, :pswitch_data_0

    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 35
    :pswitch_0
    sget-object v0, LIo0;->G:LkG;

    if-nez v0, :cond_1

    const-class v2, LIo0;

    monitor-enter v2

    .line 36
    :try_start_0
    sget-object v0, LIo0;->G:LkG;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, LGF;

    sget-object v3, LIo0;->F:LIo0;

    invoke-direct {v0, v3}, LGF;-><init>(LTF;)V

    sput-object v0, LIo0;->G:LkG;

    .line 38
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 39
    :cond_1
    :goto_0
    sget-object v0, LIo0;->G:LkG;

    return-object v0

    .line 40
    :pswitch_1
    new-instance v0, LFo0;

    invoke-direct {v0, v4}, LFo0;-><init>(LEo0;)V

    return-object v0

    .line 41
    :pswitch_2
    new-instance v0, LIo0;

    invoke-direct {v0}, LIo0;-><init>()V

    return-object v0

    :pswitch_3
    return-object v4

    .line 42
    :pswitch_4
    move-object/from16 v0, p2

    check-cast v0, LtF;

    .line 43
    move-object/from16 v4, p3

    check-cast v4, LBF;

    :cond_2
    :goto_1
    if-nez v2, :cond_b

    .line 44
    :try_start_1
    invoke-virtual {v0}, LtF;->p()I

    move-result v4

    if-eqz v4, :cond_a

    if-eq v4, v7, :cond_9

    const/16 v9, 0x12

    if-eq v4, v9, :cond_8

    const/16 v9, 0x18

    if-eq v4, v9, :cond_6

    const/16 v9, 0x20

    if-eq v4, v9, :cond_4

    const/16 v9, 0x28

    if-eq v4, v9, :cond_3

    .line 45
    invoke-virtual {v1, v4, v0}, LTF;->a(ILtF;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 46
    :cond_3
    iget v4, v1, LIo0;->z:I

    or-int/2addr v4, v5

    iput v4, v1, LIo0;->z:I

    .line 47
    invoke-virtual {v0}, LtF;->b()Z

    move-result v4

    iput-boolean v4, v1, LIo0;->E:Z

    goto :goto_1

    .line 48
    :cond_4
    invoke-virtual {v0}, LtF;->k()I

    move-result v4

    .line 49
    invoke-static {v4}, LGo0;->a(I)LGo0;

    move-result-object v9

    if-nez v9, :cond_5

    .line 50
    invoke-super {v1, v8, v4}, LTF;->a(II)V

    goto :goto_1

    .line 51
    :cond_5
    iget v9, v1, LIo0;->z:I

    or-int/2addr v9, v7

    iput v9, v1, LIo0;->z:I

    .line 52
    iput v4, v1, LIo0;->D:I

    goto :goto_1

    .line 53
    :cond_6
    invoke-virtual {v0}, LtF;->k()I

    move-result v4

    .line 54
    invoke-static {v4}, LHo0;->a(I)LHo0;

    move-result-object v9

    if-nez v9, :cond_7

    const/4 v9, 0x3

    .line 55
    invoke-super {v1, v9, v4}, LTF;->a(II)V

    goto :goto_1

    .line 56
    :cond_7
    iget v9, v1, LIo0;->z:I

    or-int/2addr v9, v8

    iput v9, v1, LIo0;->z:I

    .line 57
    iput v4, v1, LIo0;->C:I

    goto :goto_1

    .line 58
    :cond_8
    invoke-virtual {v0}, LtF;->n()Ljava/lang/String;

    move-result-object v4

    .line 59
    iget v9, v1, LIo0;->z:I

    or-int/2addr v9, v6

    iput v9, v1, LIo0;->z:I

    .line 60
    iput-object v4, v1, LIo0;->B:Ljava/lang/String;

    goto :goto_1

    .line 61
    :cond_9
    iget v4, v1, LIo0;->z:I

    or-int/2addr v4, v3

    iput v4, v1, LIo0;->z:I

    .line 62
    invoke-virtual {v0}, LtF;->l()J

    move-result-wide v9

    .line 63
    iput-wide v9, v1, LIo0;->A:J
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_a
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 64
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, LdG;

    .line 65
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 66
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :goto_3
    throw v0

    .line 68
    :cond_b
    :pswitch_5
    sget-object v0, LIo0;->F:LIo0;

    return-object v0

    .line 69
    :pswitch_6
    move-object/from16 v0, p2

    check-cast v0, LSF;

    .line 70
    move-object/from16 v4, p3

    check-cast v4, LIo0;

    .line 71
    iget v9, v1, LIo0;->z:I

    and-int/2addr v9, v3

    if-ne v9, v3, :cond_c

    const/4 v10, 0x1

    goto :goto_4

    :cond_c
    const/4 v10, 0x0

    .line 72
    :goto_4
    iget-wide v11, v1, LIo0;->A:J

    .line 73
    iget v9, v4, LIo0;->z:I

    and-int/2addr v9, v3

    if-ne v9, v3, :cond_d

    const/4 v13, 0x1

    goto :goto_5

    :cond_d
    const/4 v13, 0x0

    .line 74
    :goto_5
    iget-wide v14, v4, LIo0;->A:J

    move-object v9, v0

    .line 75
    invoke-interface/range {v9 .. v15}, LSF;->a(ZJZJ)J

    move-result-wide v9

    iput-wide v9, v1, LIo0;->A:J

    .line 76
    iget v9, v1, LIo0;->z:I

    and-int/2addr v9, v6

    if-ne v9, v6, :cond_e

    const/4 v9, 0x1

    goto :goto_6

    :cond_e
    const/4 v9, 0x0

    .line 77
    :goto_6
    iget-object v10, v1, LIo0;->B:Ljava/lang/String;

    .line 78
    iget v11, v4, LIo0;->z:I

    and-int/2addr v11, v6

    if-ne v11, v6, :cond_f

    const/4 v6, 0x1

    goto :goto_7

    :cond_f
    const/4 v6, 0x0

    .line 79
    :goto_7
    iget-object v11, v4, LIo0;->B:Ljava/lang/String;

    .line 80
    invoke-interface {v0, v9, v10, v6, v11}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, LIo0;->B:Ljava/lang/String;

    .line 81
    iget v6, v1, LIo0;->z:I

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_10

    const/4 v6, 0x1

    goto :goto_8

    :cond_10
    const/4 v6, 0x0

    .line 82
    :goto_8
    iget v9, v1, LIo0;->C:I

    .line 83
    iget v10, v4, LIo0;->z:I

    and-int/2addr v10, v8

    if-ne v10, v8, :cond_11

    const/4 v8, 0x1

    goto :goto_9

    :cond_11
    const/4 v8, 0x0

    .line 84
    :goto_9
    iget v10, v4, LIo0;->C:I

    .line 85
    invoke-interface {v0, v6, v9, v8, v10}, LSF;->a(ZIZI)I

    move-result v6

    iput v6, v1, LIo0;->C:I

    .line 86
    iget v6, v1, LIo0;->z:I

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_12

    const/4 v6, 0x1

    goto :goto_a

    :cond_12
    const/4 v6, 0x0

    .line 87
    :goto_a
    iget v8, v1, LIo0;->D:I

    .line 88
    iget v9, v4, LIo0;->z:I

    and-int/2addr v9, v7

    if-ne v9, v7, :cond_13

    const/4 v7, 0x1

    goto :goto_b

    :cond_13
    const/4 v7, 0x0

    .line 89
    :goto_b
    iget v9, v4, LIo0;->D:I

    .line 90
    invoke-interface {v0, v6, v8, v7, v9}, LSF;->a(ZIZI)I

    move-result v6

    iput v6, v1, LIo0;->D:I

    .line 91
    iget v6, v1, LIo0;->z:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_14

    const/4 v6, 0x1

    goto :goto_c

    :cond_14
    const/4 v6, 0x0

    .line 92
    :goto_c
    iget-boolean v7, v1, LIo0;->E:Z

    .line 93
    iget v8, v4, LIo0;->z:I

    and-int/2addr v8, v5

    if-ne v8, v5, :cond_15

    const/4 v2, 0x1

    .line 94
    :cond_15
    iget-boolean v3, v4, LIo0;->E:Z

    .line 95
    invoke-interface {v0, v6, v7, v2, v3}, LSF;->a(ZZZZ)Z

    move-result v2

    iput-boolean v2, v1, LIo0;->E:Z

    .line 96
    sget-object v2, LQF;->a:LQF;

    if-ne v0, v2, :cond_16

    .line 97
    iget v0, v1, LIo0;->z:I

    iget v2, v4, LIo0;->z:I

    or-int/2addr v0, v2

    iput v0, v1, LIo0;->z:I

    :cond_16
    return-object v1

    .line 98
    :pswitch_7
    sget-object v0, LIo0;->F:LIo0;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public a(LxF;)V
    .locals 4

    .line 1
    iget v0, p0, LIo0;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-wide v2, p0, LIo0;->A:J

    invoke-virtual {p1, v1, v2, v3}, LxF;->b(IJ)V

    .line 3
    :cond_0
    iget v0, p0, LIo0;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, LIo0;->B:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 6
    :cond_1
    iget v0, p0, LIo0;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget v2, p0, LIo0;->C:I

    .line 8
    invoke-virtual {p1, v0, v2}, LxF;->b(II)V

    .line 9
    :cond_2
    iget v0, p0, LIo0;->z:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 10
    iget v0, p0, LIo0;->D:I

    .line 11
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 12
    :cond_3
    iget v0, p0, LIo0;->z:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 13
    iget-boolean v1, p0, LIo0;->E:Z

    invoke-virtual {p1, v0, v1}, LxF;->a(IZ)V

    .line 14
    :cond_4
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
