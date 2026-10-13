.class public final LOH;
.super LTG;
.source "PG"


# instance fields
.field public c:LqI;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/lang/Integer;

.field public l:LbI;

.field public m:Ljava/lang/Boolean;

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LOH;->c:LqI;

    .line 3
    iput-object v0, p0, LOH;->d:Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, LOH;->e:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, LOH;->f:Ljava/lang/Integer;

    .line 6
    iput-object v0, p0, LOH;->g:Ljava/lang/Integer;

    .line 7
    iput-object v0, p0, LOH;->h:Ljava/lang/Integer;

    .line 8
    iput-object v0, p0, LOH;->i:Ljava/lang/Integer;

    .line 9
    iput-object v0, p0, LOH;->j:Ljava/lang/Boolean;

    .line 10
    iput-object v0, p0, LOH;->k:Ljava/lang/Integer;

    .line 11
    iput-object v0, p0, LOH;->l:LbI;

    .line 12
    iput-object v0, p0, LOH;->m:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, LOH;->n:Ljava/lang/Integer;

    .line 14
    iput-object v0, p0, LOH;->o:Ljava/lang/Boolean;

    .line 15
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 28
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 29
    iget-object v1, p0, LOH;->c:LqI;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 30
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_0
    iget-object v1, p0, LOH;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 32
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    .line 33
    :cond_1
    iget-object v1, p0, LOH;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 34
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    .line 35
    :cond_2
    iget-object v1, p0, LOH;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 36
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    .line 37
    :cond_3
    iget-object v1, p0, LOH;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 38
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    .line 39
    :cond_4
    iget-object v1, p0, LOH;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 40
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    .line 41
    :cond_5
    iget-object v1, p0, LOH;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 42
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    .line 43
    :cond_6
    iget-object v1, p0, LOH;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 44
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, LSG;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_7
    iget-object v1, p0, LOH;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 46
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    .line 47
    :cond_8
    iget-object v1, p0, LOH;->l:LbI;

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 48
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_9
    iget-object v1, p0, LOH;->m:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 50
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, LSG;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_a
    iget-object v1, p0, LOH;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const/16 v2, 0xc

    .line 52
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    .line 53
    :cond_b
    iget-object v1, p0, LOH;->o:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 54
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, LSG;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 1

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 56
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 57
    :sswitch_0
    invoke-virtual {p1}, LQG;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LOH;->o:Ljava/lang/Boolean;

    goto :goto_0

    .line 58
    :sswitch_1
    invoke-virtual {p1}, LQG;->f()I

    move-result v0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LOH;->n:Ljava/lang/Integer;

    goto :goto_0

    .line 60
    :sswitch_2
    invoke-virtual {p1}, LQG;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LOH;->m:Ljava/lang/Boolean;

    goto :goto_0

    .line 61
    :sswitch_3
    iget-object v0, p0, LOH;->l:LbI;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, LbI;

    invoke-direct {v0}, LbI;-><init>()V

    iput-object v0, p0, LOH;->l:LbI;

    .line 63
    :cond_1
    iget-object v0, p0, LOH;->l:LbI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 64
    :sswitch_4
    invoke-virtual {p1}, LQG;->f()I

    move-result v0

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LOH;->k:Ljava/lang/Integer;

    goto :goto_0

    .line 66
    :sswitch_5
    invoke-virtual {p1}, LQG;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LOH;->j:Ljava/lang/Boolean;

    goto :goto_0

    .line 67
    :sswitch_6
    invoke-virtual {p1}, LQG;->f()I

    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LOH;->i:Ljava/lang/Integer;

    goto :goto_0

    .line 69
    :sswitch_7
    invoke-virtual {p1}, LQG;->f()I

    move-result v0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LOH;->h:Ljava/lang/Integer;

    goto :goto_0

    .line 71
    :sswitch_8
    invoke-virtual {p1}, LQG;->f()I

    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LOH;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 73
    :sswitch_9
    invoke-virtual {p1}, LQG;->f()I

    move-result v0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LOH;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 75
    :sswitch_a
    invoke-virtual {p1}, LQG;->f()I

    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LOH;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 77
    :sswitch_b
    invoke-virtual {p1}, LQG;->f()I

    move-result v0

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LOH;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 79
    :sswitch_c
    iget-object v0, p0, LOH;->c:LqI;

    if-nez v0, :cond_2

    .line 80
    new-instance v0, LqI;

    invoke-direct {v0}, LqI;-><init>()V

    iput-object v0, p0, LOH;->c:LqI;

    .line 81
    :cond_2
    iget-object v0, p0, LOH;->c:LqI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    :goto_1
    :sswitch_d
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_c
        0x10 -> :sswitch_b
        0x18 -> :sswitch_a
        0x20 -> :sswitch_9
        0x28 -> :sswitch_8
        0x30 -> :sswitch_7
        0x38 -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x52 -> :sswitch_3
        0x58 -> :sswitch_2
        0x60 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(LSG;)V
    .locals 2

    .line 1
    iget-object v0, p0, LOH;->c:LqI;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 3
    :cond_0
    iget-object v0, p0, LOH;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 5
    :cond_1
    iget-object v0, p0, LOH;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 7
    :cond_2
    iget-object v0, p0, LOH;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 9
    :cond_3
    iget-object v0, p0, LOH;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 11
    :cond_4
    iget-object v0, p0, LOH;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 13
    :cond_5
    iget-object v0, p0, LOH;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 15
    :cond_6
    iget-object v0, p0, LOH;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(IZ)V

    .line 17
    :cond_7
    iget-object v0, p0, LOH;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 19
    :cond_8
    iget-object v0, p0, LOH;->l:LbI;

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 21
    :cond_9
    iget-object v0, p0, LOH;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(IZ)V

    .line 23
    :cond_a
    iget-object v0, p0, LOH;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 25
    :cond_b
    iget-object v0, p0, LOH;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(IZ)V

    .line 27
    :cond_c
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
