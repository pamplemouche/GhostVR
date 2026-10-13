.class public final LzH;
.super LTG;
.source "PG"


# instance fields
.field public c:Ljava/lang/Long;

.field public d:LqI;

.field public e:LvH;

.field public f:LuH;

.field public g:LxH;

.field public h:LwH;

.field public i:LyH;

.field public j:LtH;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LzH;->c:Ljava/lang/Long;

    .line 3
    iput-object v0, p0, LzH;->d:LqI;

    .line 4
    iput-object v0, p0, LzH;->e:LvH;

    .line 5
    iput-object v0, p0, LzH;->f:LuH;

    .line 6
    iput-object v0, p0, LzH;->g:LxH;

    .line 7
    iput-object v0, p0, LzH;->h:LwH;

    .line 8
    iput-object v0, p0, LzH;->i:LyH;

    .line 9
    iput-object v0, p0, LzH;->j:LtH;

    .line 10
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 18
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 19
    iget-object v1, p0, LzH;->c:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, LSG;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_0
    iget-object v1, p0, LzH;->d:LqI;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 22
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_1
    iget-object v1, p0, LzH;->e:LvH;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 24
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_2
    iget-object v1, p0, LzH;->f:LuH;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 26
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_3
    iget-object v1, p0, LzH;->g:LxH;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 28
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_4
    iget-object v1, p0, LzH;->h:LwH;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 30
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_5
    iget-object v1, p0, LzH;->i:LyH;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 32
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_6
    iget-object v1, p0, LzH;->j:LtH;

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 34
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 2

    .line 35
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_10

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    const/16 v1, 0x12

    if-eq v0, v1, :cond_d

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_b

    const/16 v1, 0x22

    if-eq v0, v1, :cond_9

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    .line 36
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 37
    :cond_1
    iget-object v0, p0, LzH;->j:LtH;

    if-nez v0, :cond_2

    .line 38
    new-instance v0, LtH;

    invoke-direct {v0}, LtH;-><init>()V

    iput-object v0, p0, LzH;->j:LtH;

    .line 39
    :cond_2
    iget-object v0, p0, LzH;->j:LtH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 40
    :cond_3
    iget-object v0, p0, LzH;->i:LyH;

    if-nez v0, :cond_4

    .line 41
    new-instance v0, LyH;

    invoke-direct {v0}, LyH;-><init>()V

    iput-object v0, p0, LzH;->i:LyH;

    .line 42
    :cond_4
    iget-object v0, p0, LzH;->i:LyH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 43
    :cond_5
    iget-object v0, p0, LzH;->h:LwH;

    if-nez v0, :cond_6

    .line 44
    new-instance v0, LwH;

    invoke-direct {v0}, LwH;-><init>()V

    iput-object v0, p0, LzH;->h:LwH;

    .line 45
    :cond_6
    iget-object v0, p0, LzH;->h:LwH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 46
    :cond_7
    iget-object v0, p0, LzH;->g:LxH;

    if-nez v0, :cond_8

    .line 47
    new-instance v0, LxH;

    invoke-direct {v0}, LxH;-><init>()V

    iput-object v0, p0, LzH;->g:LxH;

    .line 48
    :cond_8
    iget-object v0, p0, LzH;->g:LxH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 49
    :cond_9
    iget-object v0, p0, LzH;->f:LuH;

    if-nez v0, :cond_a

    .line 50
    new-instance v0, LuH;

    invoke-direct {v0}, LuH;-><init>()V

    iput-object v0, p0, LzH;->f:LuH;

    .line 51
    :cond_a
    iget-object v0, p0, LzH;->f:LuH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    .line 52
    :cond_b
    iget-object v0, p0, LzH;->e:LvH;

    if-nez v0, :cond_c

    .line 53
    new-instance v0, LvH;

    invoke-direct {v0}, LvH;-><init>()V

    iput-object v0, p0, LzH;->e:LvH;

    .line 54
    :cond_c
    iget-object v0, p0, LzH;->e:LvH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    .line 55
    :cond_d
    iget-object v0, p0, LzH;->d:LqI;

    if-nez v0, :cond_e

    .line 56
    new-instance v0, LqI;

    invoke-direct {v0}, LqI;-><init>()V

    iput-object v0, p0, LzH;->d:LqI;

    .line 57
    :cond_e
    iget-object v0, p0, LzH;->d:LqI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    .line 58
    :cond_f
    invoke-virtual {p1}, LQG;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LzH;->c:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_10
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 4

    .line 1
    iget-object v0, p0, LzH;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, LSG;->a(IJ)V

    .line 3
    :cond_0
    iget-object v0, p0, LzH;->d:LqI;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 5
    :cond_1
    iget-object v0, p0, LzH;->e:LvH;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 7
    :cond_2
    iget-object v0, p0, LzH;->f:LuH;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 9
    :cond_3
    iget-object v0, p0, LzH;->g:LxH;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 11
    :cond_4
    iget-object v0, p0, LzH;->h:LwH;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 13
    :cond_5
    iget-object v0, p0, LzH;->i:LyH;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 15
    :cond_6
    iget-object v0, p0, LzH;->j:LtH;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 17
    :cond_7
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
