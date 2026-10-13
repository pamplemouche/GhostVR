.class public final LCH;
.super LTG;
.source "PG"


# instance fields
.field public c:LMH;

.field public d:[B

.field public e:[B

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Boolean;

.field public i:LDH;

.field public j:LFH;

.field public k:LEH;

.field public l:LEH;

.field public m:LEH;

.field public n:LEH;

.field public o:LEH;

.field public p:LLH;

.field public q:LGH;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LCH;->c:LMH;

    .line 3
    iput-object v0, p0, LCH;->d:[B

    .line 4
    iput-object v0, p0, LCH;->e:[B

    .line 5
    iput-object v0, p0, LCH;->f:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, LCH;->g:Ljava/lang/Long;

    .line 7
    iput-object v0, p0, LCH;->h:Ljava/lang/Boolean;

    .line 8
    iput-object v0, p0, LCH;->i:LDH;

    .line 9
    iput-object v0, p0, LCH;->j:LFH;

    .line 10
    iput-object v0, p0, LCH;->k:LEH;

    .line 11
    iput-object v0, p0, LCH;->l:LEH;

    .line 12
    iput-object v0, p0, LCH;->m:LEH;

    .line 13
    iput-object v0, p0, LCH;->n:LEH;

    .line 14
    iput-object v0, p0, LCH;->o:LEH;

    .line 15
    iput-object v0, p0, LCH;->p:LLH;

    .line 16
    iput-object v0, p0, LCH;->q:LGH;

    .line 17
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 32
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 33
    iget-object v1, p0, LCH;->c:LMH;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 34
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_0
    iget-object v1, p0, LCH;->d:[B

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 36
    invoke-static {v2, v1}, LSG;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_1
    iget-object v1, p0, LCH;->e:[B

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 38
    invoke-static {v2, v1}, LSG;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_2
    iget-object v1, p0, LCH;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 40
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, LSG;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_3
    iget-object v1, p0, LCH;->g:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 42
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, LSG;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_4
    iget-object v1, p0, LCH;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 44
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, LSG;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_5
    iget-object v1, p0, LCH;->i:LDH;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 46
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_6
    iget-object v1, p0, LCH;->j:LFH;

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 48
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_7
    iget-object v1, p0, LCH;->k:LEH;

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 50
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_8
    iget-object v1, p0, LCH;->l:LEH;

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 52
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    :cond_9
    iget-object v1, p0, LCH;->m:LEH;

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 54
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_a
    iget-object v1, p0, LCH;->n:LEH;

    if-eqz v1, :cond_b

    const/16 v2, 0xc

    .line 56
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_b
    iget-object v1, p0, LCH;->o:LEH;

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 58
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_c
    iget-object v1, p0, LCH;->p:LLH;

    if-eqz v1, :cond_d

    const/16 v2, 0xe

    .line 60
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_d
    iget-object v1, p0, LCH;->q:LGH;

    if-eqz v1, :cond_e

    const/16 v2, 0xf

    .line 62
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 2

    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 64
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 65
    :sswitch_0
    iget-object v0, p0, LCH;->q:LGH;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, LGH;

    invoke-direct {v0}, LGH;-><init>()V

    iput-object v0, p0, LCH;->q:LGH;

    .line 67
    :cond_1
    iget-object v0, p0, LCH;->q:LGH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 68
    :sswitch_1
    iget-object v0, p0, LCH;->p:LLH;

    if-nez v0, :cond_2

    .line 69
    new-instance v0, LLH;

    invoke-direct {v0}, LLH;-><init>()V

    iput-object v0, p0, LCH;->p:LLH;

    .line 70
    :cond_2
    iget-object v0, p0, LCH;->p:LLH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 71
    :sswitch_2
    iget-object v0, p0, LCH;->o:LEH;

    if-nez v0, :cond_3

    .line 72
    new-instance v0, LEH;

    invoke-direct {v0}, LEH;-><init>()V

    iput-object v0, p0, LCH;->o:LEH;

    .line 73
    :cond_3
    iget-object v0, p0, LCH;->o:LEH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 74
    :sswitch_3
    iget-object v0, p0, LCH;->n:LEH;

    if-nez v0, :cond_4

    .line 75
    new-instance v0, LEH;

    invoke-direct {v0}, LEH;-><init>()V

    iput-object v0, p0, LCH;->n:LEH;

    .line 76
    :cond_4
    iget-object v0, p0, LCH;->n:LEH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 77
    :sswitch_4
    iget-object v0, p0, LCH;->m:LEH;

    if-nez v0, :cond_5

    .line 78
    new-instance v0, LEH;

    invoke-direct {v0}, LEH;-><init>()V

    iput-object v0, p0, LCH;->m:LEH;

    .line 79
    :cond_5
    iget-object v0, p0, LCH;->m:LEH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 80
    :sswitch_5
    iget-object v0, p0, LCH;->l:LEH;

    if-nez v0, :cond_6

    .line 81
    new-instance v0, LEH;

    invoke-direct {v0}, LEH;-><init>()V

    iput-object v0, p0, LCH;->l:LEH;

    .line 82
    :cond_6
    iget-object v0, p0, LCH;->l:LEH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 83
    :sswitch_6
    iget-object v0, p0, LCH;->k:LEH;

    if-nez v0, :cond_7

    .line 84
    new-instance v0, LEH;

    invoke-direct {v0}, LEH;-><init>()V

    iput-object v0, p0, LCH;->k:LEH;

    .line 85
    :cond_7
    iget-object v0, p0, LCH;->k:LEH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    .line 86
    :sswitch_7
    iget-object v0, p0, LCH;->j:LFH;

    if-nez v0, :cond_8

    .line 87
    new-instance v0, LFH;

    invoke-direct {v0}, LFH;-><init>()V

    iput-object v0, p0, LCH;->j:LFH;

    .line 88
    :cond_8
    iget-object v0, p0, LCH;->j:LFH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    .line 89
    :sswitch_8
    iget-object v0, p0, LCH;->i:LDH;

    if-nez v0, :cond_9

    .line 90
    new-instance v0, LDH;

    invoke-direct {v0}, LDH;-><init>()V

    iput-object v0, p0, LCH;->i:LDH;

    .line 91
    :cond_9
    iget-object v0, p0, LCH;->i:LDH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    .line 92
    :sswitch_9
    invoke-virtual {p1}, LQG;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LCH;->h:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 93
    :sswitch_a
    invoke-virtual {p1}, LQG;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LCH;->g:Ljava/lang/Long;

    goto/16 :goto_0

    .line 94
    :sswitch_b
    invoke-virtual {p1}, LQG;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LCH;->f:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 95
    :sswitch_c
    invoke-virtual {p1}, LQG;->c()[B

    move-result-object v0

    iput-object v0, p0, LCH;->e:[B

    goto/16 :goto_0

    .line 96
    :sswitch_d
    invoke-virtual {p1}, LQG;->c()[B

    move-result-object v0

    iput-object v0, p0, LCH;->d:[B

    goto/16 :goto_0

    .line 97
    :sswitch_e
    iget-object v0, p0, LCH;->c:LMH;

    if-nez v0, :cond_a

    .line 98
    new-instance v0, LMH;

    invoke-direct {v0}, LMH;-><init>()V

    iput-object v0, p0, LCH;->c:LMH;

    .line 99
    :cond_a
    iget-object v0, p0, LCH;->c:LMH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    :goto_1
    :sswitch_f
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_e
        0x12 -> :sswitch_d
        0x1a -> :sswitch_c
        0x20 -> :sswitch_b
        0x28 -> :sswitch_a
        0x30 -> :sswitch_9
        0x3a -> :sswitch_8
        0x42 -> :sswitch_7
        0x4a -> :sswitch_6
        0x52 -> :sswitch_5
        0x5a -> :sswitch_4
        0x62 -> :sswitch_3
        0x6a -> :sswitch_2
        0x72 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public a(LSG;)V
    .locals 4

    .line 1
    iget-object v0, p0, LCH;->c:LMH;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 3
    :cond_0
    iget-object v0, p0, LCH;->d:[B

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, LSG;->a(I[B)V

    .line 5
    :cond_1
    iget-object v0, p0, LCH;->e:[B

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, LSG;->a(I[B)V

    .line 7
    :cond_2
    iget-object v0, p0, LCH;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(IZ)V

    .line 9
    :cond_3
    iget-object v0, p0, LCH;->g:Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, LSG;->a(IJ)V

    .line 11
    :cond_4
    iget-object v0, p0, LCH;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(IZ)V

    .line 13
    :cond_5
    iget-object v0, p0, LCH;->i:LDH;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 15
    :cond_6
    iget-object v0, p0, LCH;->j:LFH;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 17
    :cond_7
    iget-object v0, p0, LCH;->k:LEH;

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 19
    :cond_8
    iget-object v0, p0, LCH;->l:LEH;

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 21
    :cond_9
    iget-object v0, p0, LCH;->m:LEH;

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 22
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 23
    :cond_a
    iget-object v0, p0, LCH;->n:LEH;

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 24
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 25
    :cond_b
    iget-object v0, p0, LCH;->o:LEH;

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 26
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 27
    :cond_c
    iget-object v0, p0, LCH;->p:LLH;

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 28
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 29
    :cond_d
    iget-object v0, p0, LCH;->q:LGH;

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 30
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 31
    :cond_e
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
