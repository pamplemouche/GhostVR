.class public Ld90;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final h:Ld90;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:LbU0;

.field public final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v8, Ld90;

    new-instance v1, LbU0;

    invoke-direct {v1}, LbU0;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ld90;-><init>(LbU0;IZZLjava/lang/String;ZZ)V

    sput-object v8, Ld90;->h:Ld90;

    return-void
.end method

.method public constructor <init>(LbU0;IZZLjava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Ld90;->a:I

    .line 3
    iput-boolean p3, p0, Ld90;->b:Z

    .line 4
    iput-boolean p4, p0, Ld90;->c:Z

    .line 5
    iput-object p5, p0, Ld90;->d:Ljava/lang/String;

    .line 6
    iput-boolean p6, p0, Ld90;->e:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, LbU0;

    invoke-direct {p1}, LbU0;-><init>()V

    :goto_0
    iput-object p1, p0, Ld90;->f:LbU0;

    .line 8
    iput-boolean p7, p0, Ld90;->g:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static b(Ljava/lang/String;)Ld90;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, ","

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_6

    const/16 v4, 0x8

    const/4 v5, 0x7

    const-string v6, "1"

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x6

    const/4 v12, 0x1

    packed-switch v3, :pswitch_data_0

    .line 3
    sget-object v0, Ld90;->h:Ld90;

    return-object v0

    :pswitch_0
    const/16 v3, 0x9

    .line 4
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v1, v0

    if-eq v1, v3, :cond_0

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_0

    .line 6
    :cond_0
    aget-object v1, v0, v2

    .line 7
    aget-object v2, v0, v12

    .line 8
    aget-object v3, v0, v10

    .line 9
    aget-object v9, v0, v9

    .line 10
    aget-object v8, v0, v8

    .line 11
    aget-object v7, v0, v7

    .line 12
    aget-object v10, v0, v11

    .line 13
    aget-object v5, v0, v5

    .line 14
    aget-object v17, v0, v4

    .line 15
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 16
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 17
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 18
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 19
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v0, v11, :cond_1

    .line 21
    sget-object v0, Ld90;->h:Ld90;

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_0

    .line 24
    :cond_3
    new-instance v0, Ld90;

    new-instance v13, LbU0;

    invoke-direct {v13, v3, v9}, LbU0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Ld90;-><init>(LbU0;IZZLjava/lang/String;ZZ)V

    goto :goto_0

    .line 25
    :catch_0
    sget-object v0, Ld90;->h:Ld90;

    :goto_0
    return-object v0

    .line 26
    :pswitch_1
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 27
    array-length v1, v0

    if-eq v1, v4, :cond_4

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_1

    .line 28
    :cond_4
    aget-object v1, v0, v2

    .line 29
    aget-object v2, v0, v12

    .line 30
    aget-object v3, v0, v10

    .line 31
    aget-object v4, v0, v9

    .line 32
    aget-object v8, v0, v8

    .line 33
    aget-object v9, v0, v7

    .line 34
    aget-object v10, v0, v11

    .line 35
    aget-object v16, v0, v5

    .line 36
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 37
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 38
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 39
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    if-eq v0, v7, :cond_5

    .line 41
    sget-object v0, Ld90;->h:Ld90;

    goto :goto_1

    .line 42
    :cond_5
    invoke-static {v4}, Ld90;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_1

    .line 43
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_1

    .line 44
    :cond_7
    new-instance v0, Ld90;

    new-instance v12, LbU0;

    invoke-direct {v12, v3, v4}, LbU0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Ld90;-><init>(LbU0;IZZLjava/lang/String;ZZ)V

    goto :goto_1

    .line 45
    :catch_1
    sget-object v0, Ld90;->h:Ld90;

    :goto_1
    return-object v0

    .line 46
    :pswitch_2
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 47
    array-length v1, v0

    if-eq v1, v4, :cond_8

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_2

    .line 48
    :cond_8
    aget-object v1, v0, v2

    .line 49
    aget-object v3, v0, v12

    .line 50
    aget-object v4, v0, v10

    .line 51
    aget-object v9, v0, v9

    .line 52
    aget-object v13, v0, v8

    .line 53
    aget-object v7, v0, v7

    .line 54
    aget-object v11, v0, v11

    .line 55
    aget-object v19, v0, v5

    .line 56
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 57
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 58
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 59
    :try_start_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    if-eq v0, v8, :cond_9

    .line 62
    sget-object v0, Ld90;->h:Ld90;

    goto :goto_2

    .line 63
    :cond_9
    invoke-static {v11}, Ld90;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_2

    :cond_a
    if-eq v1, v12, :cond_b

    if-eq v1, v10, :cond_b

    .line 64
    sget-object v0, Ld90;->h:Ld90;

    goto :goto_2

    :cond_b
    if-ne v1, v10, :cond_c

    const/4 v2, 0x1

    .line 65
    :cond_c
    new-instance v0, Ld90;

    .line 66
    invoke-static {v2, v11}, LcU0;->a(ZLjava/lang/String;)LbU0;

    move-result-object v15

    const/16 v21, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v21}, Ld90;-><init>(LbU0;IZZLjava/lang/String;ZZ)V

    goto :goto_2

    .line 67
    :catch_2
    sget-object v0, Ld90;->h:Ld90;

    :goto_2
    return-object v0

    .line 68
    :pswitch_3
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 69
    array-length v1, v0

    if-eq v1, v5, :cond_d

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_3

    .line 70
    :cond_d
    aget-object v1, v0, v2

    .line 71
    aget-object v3, v0, v12

    .line 72
    aget-object v4, v0, v10

    .line 73
    aget-object v5, v0, v9

    .line 74
    aget-object v8, v0, v8

    .line 75
    aget-object v7, v0, v7

    .line 76
    aget-object v18, v0, v11

    .line 77
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 78
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 79
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    if-eq v0, v9, :cond_e

    .line 82
    sget-object v0, Ld90;->h:Ld90;

    goto :goto_3

    .line 83
    :cond_e
    invoke-static {v7}, Ld90;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_3

    :cond_f
    if-eq v1, v12, :cond_10

    if-eq v1, v10, :cond_10

    .line 84
    sget-object v0, Ld90;->h:Ld90;

    goto :goto_3

    :cond_10
    if-ne v1, v10, :cond_11

    const/4 v2, 0x1

    .line 85
    :cond_11
    new-instance v0, Ld90;

    .line 86
    invoke-static {v2, v7}, LcU0;->a(ZLjava/lang/String;)LbU0;

    move-result-object v14

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v20}, Ld90;-><init>(LbU0;IZZLjava/lang/String;ZZ)V

    goto :goto_3

    .line 87
    :catch_3
    sget-object v0, Ld90;->h:Ld90;

    :goto_3
    return-object v0

    .line 88
    :pswitch_4
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 89
    array-length v1, v0

    if-eq v1, v11, :cond_12

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_4

    .line 90
    :cond_12
    aget-object v1, v0, v2

    .line 91
    aget-object v3, v0, v12

    .line 92
    aget-object v4, v0, v10

    .line 93
    aget-object v5, v0, v9

    .line 94
    aget-object v8, v0, v8

    .line 95
    aget-object v16, v0, v7

    .line 96
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 97
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 98
    :try_start_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    if-eq v0, v10, :cond_13

    .line 100
    sget-object v0, Ld90;->h:Ld90;

    goto :goto_4

    .line 101
    :cond_13
    invoke-static {v8}, Ld90;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_4

    .line 102
    :cond_14
    new-instance v0, Ld90;

    .line 103
    invoke-static {v2, v8}, LcU0;->a(ZLjava/lang/String;)LbU0;

    move-result-object v12

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Ld90;-><init>(LbU0;IZZLjava/lang/String;ZZ)V

    goto :goto_4

    .line 104
    :catch_4
    sget-object v0, Ld90;->h:Ld90;

    :goto_4
    return-object v0

    .line 105
    :pswitch_5
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 106
    array-length v1, v0

    if-eq v1, v11, :cond_15

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_5

    .line 107
    :cond_15
    aget-object v1, v0, v2

    .line 108
    aget-object v3, v0, v12

    .line 109
    aget-object v4, v0, v10

    .line 110
    aget-object v5, v0, v9

    .line 111
    aget-object v8, v0, v8

    .line 112
    aget-object v18, v0, v7

    .line 113
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 114
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 115
    :try_start_6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    if-eq v1, v12, :cond_16

    .line 117
    sget-object v0, Ld90;->h:Ld90;

    goto :goto_5

    .line 118
    :cond_16
    invoke-static {v8}, Ld90;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v0, Ld90;->h:Ld90;

    goto :goto_5

    .line 119
    :cond_17
    new-instance v1, Ld90;

    .line 120
    invoke-static {v2, v8}, LcU0;->a(ZLjava/lang/String;)LbU0;

    move-result-object v14

    xor-int/lit8 v16, v0, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Ld90;-><init>(LbU0;IZZLjava/lang/String;ZZ)V

    move-object v0, v1

    goto :goto_5

    .line 121
    :catch_5
    sget-object v0, Ld90;->h:Ld90;

    :goto_5
    return-object v0

    :catch_6
    const-string v1, "Exception while parsing pending download:"

    .line 122
    invoke-static {v1, v0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "DownloadEntry"

    invoke-static {v2, v0, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    sget-object v0, Ld90;->h:Ld90;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ld90;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Ld90;

    .line 3
    iget-object v0, p0, Ld90;->f:LbU0;

    iget-object v2, p1, Ld90;->f:LbU0;

    invoke-virtual {v0, v2}, LbU0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld90;->d:Ljava/lang/String;

    iget-object v2, p1, Ld90;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Ld90;->a:I

    iget v2, p1, Ld90;->a:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Ld90;->b:Z

    iget-boolean v2, p1, Ld90;->b:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Ld90;->c:Z

    iget-boolean v2, p1, Ld90;->c:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Ld90;->e:Z

    iget-boolean v2, p1, Ld90;->e:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Ld90;->g:Z

    iget-boolean p1, p1, Ld90;->g:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld90;->b:Z

    const/16 v1, 0x47b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 2
    iget-boolean v0, p0, Ld90;->c:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 3
    iget-boolean v0, p0, Ld90;->e:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 4
    iget v0, p0, Ld90;->a:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 5
    iget-object v0, p0, Ld90;->f:LbU0;

    invoke-virtual {v0}, LbU0;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 6
    iget-object v1, p0, Ld90;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 7
    iget-boolean v0, p0, Ld90;->g:Z

    add-int/2addr v1, v0

    return v1
.end method
