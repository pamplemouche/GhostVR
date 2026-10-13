.class public final LDF;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LtG;

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LDF;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LDF;-><init>(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LDF;->c:Z

    const/16 v0, 0x10

    .line 3
    invoke-static {v0}, LtG;->c(I)LtG;

    move-result-object v0

    iput-object v0, p0, LDF;->a:LtG;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, LDF;->c:Z

    .line 6
    invoke-static {p1}, LtG;->c(I)LtG;

    move-result-object p1

    iput-object p1, p0, LDF;->a:LtG;

    .line 7
    invoke-virtual {p0}, LDF;->b()V

    return-void
.end method

.method public static a(LJG;Ljava/lang/Object;)I
    .locals 3

    .line 111
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0x8

    packed-switch p0, :pswitch_data_0

    .line 112
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    .line 114
    invoke-static {p0, p1}, LxF;->c(J)I

    move-result p0

    return p0

    .line 115
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shl-int/lit8 p1, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    .line 116
    invoke-static {p0}, LxF;->g(I)I

    move-result p0

    return p0

    .line 117
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, LxF;->h()I

    return v2

    .line 118
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, LxF;->g()I

    return v1

    .line 119
    :pswitch_4
    instance-of p0, p1, LVF;

    if-eqz p0, :cond_0

    .line 120
    check-cast p1, LVF;

    .line 121
    invoke-interface {p1}, LVF;->a()I

    move-result p0

    .line 122
    invoke-static {p0}, LxF;->d(I)I

    move-result p0

    return p0

    .line 123
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 124
    invoke-static {p0}, LxF;->d(I)I

    move-result p0

    return p0

    .line 125
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, LxF;->g(I)I

    move-result p0

    return p0

    .line 126
    :pswitch_6
    instance-of p0, p1, LrF;

    if-eqz p0, :cond_1

    .line 127
    check-cast p1, LrF;

    invoke-static {p1}, LxF;->b(LrF;)I

    move-result p0

    return p0

    .line 128
    :cond_1
    check-cast p1, [B

    invoke-static {p1}, LxF;->a([B)I

    move-result p0

    return p0

    .line 129
    :pswitch_7
    check-cast p1, LhG;

    invoke-static {p1}, LxF;->b(LhG;)I

    move-result p0

    return p0

    .line 130
    :pswitch_8
    check-cast p1, LhG;

    invoke-static {p1}, LxF;->a(LhG;)I

    move-result p0

    return p0

    .line 131
    :pswitch_9
    instance-of p0, p1, LrF;

    if-eqz p0, :cond_2

    .line 132
    check-cast p1, LrF;

    invoke-static {p1}, LxF;->b(LrF;)I

    move-result p0

    return p0

    .line 133
    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, LxF;->b(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 134
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, LxF;->b()I

    return v0

    .line 135
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, LxF;->d()I

    return v1

    .line 136
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, LxF;->e()I

    return v2

    .line 137
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, LxF;->d(I)I

    move-result p0

    return p0

    .line 138
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, LxF;->c(J)I

    move-result p0

    return p0

    .line 139
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 140
    invoke-static {p0, p1}, LxF;->c(J)I

    move-result p0

    return p0

    .line 141
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    invoke-static {}, LxF;->f()I

    return v1

    .line 142
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    invoke-static {}, LxF;->c()I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(LJG;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 1
    :cond_0
    iget p0, p0, LJG;->x:I

    return p0
.end method

.method public static a(LtF;LJG;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p2, :cond_0

    .line 35
    sget-object p2, LOG;->x:LOG;

    invoke-static {p0, p1, p2}, LPG;->a(LtF;LJG;LOG;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 36
    :cond_0
    sget-object p2, LOG;->w:LOG;

    invoke-static {p0, p1, p2}, LPG;->a(LtF;LJG;LOG;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(LCF;Ljava/lang/Object;LxF;)V
    .locals 3

    .line 96
    check-cast p0, LNF;

    .line 97
    iget-object v0, p0, LNF;->y:LJG;

    .line 98
    iget v1, p0, LNF;->x:I

    .line 99
    iget-boolean v2, p0, LNF;->z:Z

    if-eqz v2, :cond_2

    .line 100
    check-cast p1, Ljava/util/List;

    .line 101
    iget-boolean p0, p0, LNF;->A:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    .line 102
    invoke-virtual {p2, v1, p0}, LxF;->c(II)V

    const/4 p0, 0x0

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 104
    invoke-static {v0, v2}, LDF;->a(LJG;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p2, p0}, LxF;->c(I)V

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 107
    invoke-static {p2, v0, p1}, LDF;->a(LxF;LJG;Ljava/lang/Object;)V

    goto :goto_1

    .line 108
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 109
    invoke-static {p2, v0, v1, p1}, LDF;->a(LxF;LJG;ILjava/lang/Object;)V

    goto :goto_2

    .line 110
    :cond_2
    invoke-static {p2, v0, v1, p1}, LDF;->a(LxF;LJG;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static a(LxF;LJG;ILjava/lang/Object;)V
    .locals 2

    .line 37
    sget-object v0, LJG;->H:LJG;

    if-ne p1, v0, :cond_1

    .line 38
    check-cast p3, LhG;

    if-eqz p0, :cond_0

    .line 39
    move-object p1, p0

    check-cast p1, LvF;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 v0, p2, 0x3

    .line 40
    invoke-virtual {p1, v0}, LvF;->c(I)V

    .line 41
    invoke-interface {p3, p0}, LhG;->a(LxF;)V

    or-int/lit8 p0, p2, 0x4

    .line 42
    invoke-virtual {p1, p0}, LvF;->c(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 43
    throw p0

    :cond_1
    const/4 v0, 0x0

    .line 44
    invoke-static {p1, v0}, LDF;->a(LJG;Z)I

    move-result v0

    move-object v1, p0

    check-cast v1, LvF;

    shl-int/lit8 p2, p2, 0x3

    or-int/2addr p2, v0

    .line 45
    invoke-virtual {v1, p2}, LvF;->c(I)V

    .line 46
    invoke-static {p0, p1, p3}, LDF;->a(LxF;LJG;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static a(LxF;LJG;Ljava/lang/Object;)V
    .locals 3

    .line 47
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 48
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    .line 49
    invoke-virtual {p0, p1, p2}, LxF;->b(J)V

    goto/16 :goto_0

    .line 50
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    .line 51
    invoke-virtual {p0, p1}, LxF;->c(I)V

    goto/16 :goto_0

    .line 52
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 53
    invoke-virtual {p0, p1, p2}, LxF;->a(J)V

    goto/16 :goto_0

    .line 54
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 55
    invoke-virtual {p0, p1}, LxF;->a(I)V

    goto/16 :goto_0

    .line 56
    :pswitch_4
    instance-of p1, p2, LVF;

    if-eqz p1, :cond_2

    .line 57
    check-cast p2, LVF;

    invoke-interface {p2}, LVF;->a()I

    move-result p1

    if-eqz p0, :cond_1

    .line 58
    check-cast p0, LvF;

    if-ltz p1, :cond_0

    .line 59
    invoke-virtual {p0, p1}, LvF;->c(I)V

    goto/16 :goto_0

    :cond_0
    int-to-long p1, p1

    .line 60
    invoke-virtual {p0, p1, p2}, LvF;->b(J)V

    goto/16 :goto_0

    .line 61
    :cond_1
    throw v0

    .line 62
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p0, :cond_4

    .line 63
    check-cast p0, LvF;

    if-ltz p1, :cond_3

    .line 64
    invoke-virtual {p0, p1}, LvF;->c(I)V

    goto/16 :goto_0

    :cond_3
    int-to-long p1, p1

    .line 65
    invoke-virtual {p0, p1, p2}, LvF;->b(J)V

    goto/16 :goto_0

    .line 66
    :cond_4
    throw v0

    .line 67
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, LxF;->c(I)V

    goto/16 :goto_0

    .line 68
    :pswitch_6
    instance-of p1, p2, LrF;

    if-eqz p1, :cond_5

    .line 69
    check-cast p2, LrF;

    invoke-virtual {p0, p2}, LxF;->a(LrF;)V

    goto/16 :goto_0

    .line 70
    :cond_5
    check-cast p2, [B

    if-eqz p0, :cond_6

    .line 71
    array-length p1, p2

    check-cast p0, LvF;

    .line 72
    invoke-virtual {p0, p1}, LvF;->c(I)V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p2, v0, p1}, LvF;->a([BII)V

    goto/16 :goto_0

    .line 74
    :cond_6
    throw v0

    .line 75
    :pswitch_7
    check-cast p2, LhG;

    check-cast p0, LvF;

    if-eqz p0, :cond_7

    .line 76
    invoke-interface {p2}, LhG;->a()I

    move-result p1

    invoke-virtual {p0, p1}, LvF;->c(I)V

    .line 77
    invoke-interface {p2, p0}, LhG;->a(LxF;)V

    goto/16 :goto_0

    .line 78
    :cond_7
    throw v0

    .line 79
    :pswitch_8
    check-cast p2, LhG;

    if-eqz p0, :cond_8

    .line 80
    invoke-interface {p2, p0}, LhG;->a(LxF;)V

    goto/16 :goto_0

    :cond_8
    throw v0

    .line 81
    :pswitch_9
    instance-of p1, p2, LrF;

    if-eqz p1, :cond_9

    .line 82
    check-cast p2, LrF;

    invoke-virtual {p0, p2}, LxF;->a(LrF;)V

    goto :goto_0

    .line 83
    :cond_9
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, LxF;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    int-to-byte p1, p1

    .line 85
    invoke-virtual {p0, p1}, LxF;->a(B)V

    goto :goto_0

    .line 86
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, LxF;->a(I)V

    goto :goto_0

    .line 87
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, LxF;->a(J)V

    goto :goto_0

    .line 88
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, LxF;->b(I)V

    goto :goto_0

    .line 89
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, LxF;->b(J)V

    goto :goto_0

    .line 90
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 91
    invoke-virtual {p0, p1, p2}, LxF;->b(J)V

    goto :goto_0

    .line 92
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    if-eqz p0, :cond_a

    .line 93
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, LxF;->a(I)V

    goto :goto_0

    :cond_a
    throw v0

    .line 94
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    if-eqz p0, :cond_b

    .line 95
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, LxF;->a(J)V

    goto :goto_0

    :cond_b
    throw v0

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(LJG;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 4
    iget-object p0, p0, LJG;->w:LKG;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    instance-of p0, p1, LhG;

    if-nez p0, :cond_0

    goto :goto_1

    .line 7
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_0

    instance-of p0, p1, LVF;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 8
    :pswitch_2
    instance-of p0, p1, LrF;

    if-nez p0, :cond_0

    instance-of p0, p1, [B

    if-eqz p0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 9
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_1

    .line 10
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_1

    .line 11
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_1

    .line 12
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_1

    .line 13
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_1

    .line 14
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p0, 0x0

    .line 16
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(LCF;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p0, LNF;

    .line 2
    iget-object v0, p0, LNF;->y:LJG;

    .line 3
    iget v1, p0, LNF;->x:I

    .line 4
    iget-boolean v2, p0, LNF;->z:Z

    if-eqz v2, :cond_4

    .line 5
    iget-boolean p0, p0, LNF;->A:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 6
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-static {v0, p1}, LDF;->a(LJG;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v1}, LxF;->f(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 9
    invoke-static {v2}, LxF;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 10
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-static {v1}, LxF;->f(I)I

    move-result v3

    .line 12
    sget-object v4, LJG;->H:LJG;

    if-ne v0, v4, :cond_2

    mul-int/lit8 v3, v3, 0x2

    .line 13
    :cond_2
    invoke-static {v0, p1}, LDF;->a(LJG;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v3

    add-int/2addr v2, p1

    goto :goto_1

    :cond_3
    return v2

    .line 14
    :cond_4
    invoke-static {v1}, LxF;->f(I)I

    move-result p0

    .line 15
    sget-object v1, LJG;->H:LJG;

    if-ne v0, v1, :cond_5

    mul-int/lit8 p0, p0, 0x2

    .line 16
    :cond_5
    invoke-static {v0, p1}, LDF;->a(LJG;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public a(LCF;)Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, LDF;->a:LtG;

    invoke-virtual {v0, p1}, LtG;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 31
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, [B

    .line 33
    array-length v0, p1

    new-array v0, v0, [B

    .line 34
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method public a()Ljava/util/Iterator;
    .locals 2

    .line 2
    iget-boolean v0, p0, LDF;->c:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, LeG;

    iget-object v1, p0, LDF;->a:LtG;

    .line 4
    invoke-virtual {v1}, LtG;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, LeG;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, LDF;->a:LtG;

    invoke-virtual {v0}, LtG;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public a(LCF;Ljava/lang/Object;)V
    .locals 2

    .line 7
    move-object v0, p1

    check-cast v0, LNF;

    .line 8
    iget-boolean v0, v0, LNF;->z:Z

    if-eqz v0, :cond_1

    .line 9
    move-object v0, p1

    check-cast v0, LNF;

    .line 10
    iget-object v0, v0, LNF;->y:LJG;

    .line 11
    invoke-static {v0, p2}, LDF;->b(LJG;Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, LDF;->a:LtG;

    invoke-virtual {v0, p1}, LtG;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v1, p0, LDF;->a:LtG;

    invoke-virtual {v1, p1, v0}, LtG;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 16
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/Map$Entry;)Z
    .locals 3

    .line 18
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCF;

    .line 19
    move-object v1, v0

    check-cast v1, LNF;

    .line 20
    iget-object v1, v1, LNF;->y:LJG;

    .line 21
    iget-object v1, v1, LJG;->w:LKG;

    .line 22
    sget-object v2, LKG;->E:LKG;

    if-ne v1, v2, :cond_3

    .line 23
    check-cast v0, LNF;

    .line 24
    iget-boolean v0, v0, LNF;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 25
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhG;

    .line 26
    check-cast v0, LTF;

    invoke-virtual {v0}, LTF;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 27
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 28
    instance-of v0, p1, LhG;

    if-eqz v0, :cond_2

    .line 29
    check-cast p1, LhG;

    check-cast p1, LTF;

    invoke-virtual {p1}, LTF;->h()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LDF;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LDF;->a:LtG;

    invoke-virtual {v0}, LtG;->e()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LDF;->b:Z

    return-void
.end method

.method public b(LCF;Ljava/lang/Object;)V
    .locals 3

    .line 17
    move-object v0, p1

    check-cast v0, LNF;

    .line 18
    iget-boolean v0, v0, LNF;->z:Z

    if-eqz v0, :cond_2

    .line 19
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 23
    move-object v2, p1

    check-cast v2, LNF;

    .line 24
    iget-object v2, v2, LNF;->y:LJG;

    .line 25
    invoke-static {v2, v1}, LDF;->b(LJG;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    move-object v0, p1

    check-cast v0, LNF;

    .line 28
    iget-object v0, v0, LNF;->y:LJG;

    .line 29
    invoke-static {v0, p2}, LDF;->b(LJG;Ljava/lang/Object;)V

    .line 30
    :goto_1
    iget-object v0, p0, LDF;->a:LtG;

    invoke-virtual {v0, p1, p2}, LtG;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/util/Map$Entry;)V
    .locals 4

    .line 31
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCF;

    .line 32
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 33
    move-object v1, v0

    check-cast v1, LNF;

    .line 34
    iget-boolean v1, v1, LNF;->z:Z

    if-eqz v1, :cond_2

    .line 35
    iget-object v1, p0, LDF;->a:LtG;

    invoke-virtual {v1, v0}, LtG;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 38
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v2}, LDF;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, LDF;->a:LtG;

    invoke-virtual {p1, v0, v1}, LtG;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 40
    :cond_2
    move-object v1, v0

    check-cast v1, LNF;

    .line 41
    iget-object v1, v1, LNF;->y:LJG;

    .line 42
    iget-object v1, v1, LJG;->w:LKG;

    .line 43
    sget-object v2, LKG;->E:LKG;

    if-ne v1, v2, :cond_4

    .line 44
    iget-object v1, p0, LDF;->a:LtG;

    invoke-virtual {v1, v0}, LtG;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 45
    iget-object v1, p0, LDF;->a:LtG;

    invoke-virtual {p0, p1}, LDF;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, LtG;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 46
    :cond_3
    check-cast v1, LhG;

    .line 47
    invoke-interface {v1}, LhG;->c()LgG;

    move-result-object v1

    check-cast p1, LhG;

    .line 48
    check-cast v1, LFF;

    check-cast p1, LTF;

    invoke-virtual {v1, p1}, LFF;->a(LTF;)LFF;

    .line 49
    invoke-virtual {v1}, LFF;->e()LTF;

    move-result-object p1

    .line 50
    iget-object v1, p0, LDF;->a:LtG;

    invoke-virtual {v1, v0, p1}, LtG;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 51
    :cond_4
    iget-object v1, p0, LDF;->a:LtG;

    invoke-virtual {p0, p1}, LDF;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, LtG;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public clone()LDF;
    .locals 4

    .line 2
    new-instance v0, LDF;

    invoke-direct {v0}, LDF;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, LDF;->a:LtG;

    invoke-virtual {v2}, LtG;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, LDF;->a:LtG;

    invoke-virtual {v2, v1}, LtG;->a(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LCF;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, LDF;->b(LCF;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, LDF;->a:LtG;

    invoke-virtual {v1}, LtG;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LCF;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, LDF;->b(LCF;Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-boolean v1, p0, LDF;->c:Z

    iput-boolean v1, v0, LDF;->c:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LDF;->clone()LDF;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, LDF;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, LDF;

    .line 3
    iget-object v0, p0, LDF;->a:LtG;

    iget-object p1, p1, LDF;->a:LtG;

    invoke-virtual {v0, p1}, LtG;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, LDF;->a:LtG;

    invoke-virtual {v0}, LtG;->hashCode()I

    move-result v0

    return v0
.end method
