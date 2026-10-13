.class public final LoH;
.super LTG;
.source "PG"


# instance fields
.field public c:Ljava/lang/Long;

.field public d:LqI;

.field public e:LmH;

.field public f:LnH;

.field public g:LkH;

.field public h:LlH;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LoH;->c:Ljava/lang/Long;

    .line 3
    iput-object v0, p0, LoH;->d:LqI;

    .line 4
    iput-object v0, p0, LoH;->e:LmH;

    .line 5
    iput-object v0, p0, LoH;->f:LnH;

    .line 6
    iput-object v0, p0, LoH;->g:LkH;

    .line 7
    iput-object v0, p0, LoH;->h:LlH;

    .line 8
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 14
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 15
    iget-object v1, p0, LoH;->c:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, LSG;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_0
    iget-object v1, p0, LoH;->d:LqI;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 18
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_1
    iget-object v1, p0, LoH;->e:LmH;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 20
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_2
    iget-object v1, p0, LoH;->f:LnH;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 22
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_3
    iget-object v1, p0, LoH;->g:LkH;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 24
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_4
    iget-object v1, p0, LoH;->h:LlH;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 26
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 2

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b

    const/16 v1, 0x12

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    .line 28
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 29
    :cond_1
    iget-object v0, p0, LoH;->h:LlH;

    if-nez v0, :cond_2

    .line 30
    new-instance v0, LlH;

    invoke-direct {v0}, LlH;-><init>()V

    iput-object v0, p0, LoH;->h:LlH;

    .line 31
    :cond_2
    iget-object v0, p0, LoH;->h:LlH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 32
    :cond_3
    iget-object v0, p0, LoH;->g:LkH;

    if-nez v0, :cond_4

    .line 33
    new-instance v0, LkH;

    invoke-direct {v0}, LkH;-><init>()V

    iput-object v0, p0, LoH;->g:LkH;

    .line 34
    :cond_4
    iget-object v0, p0, LoH;->g:LkH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 35
    :cond_5
    iget-object v0, p0, LoH;->f:LnH;

    if-nez v0, :cond_6

    .line 36
    new-instance v0, LnH;

    invoke-direct {v0}, LnH;-><init>()V

    iput-object v0, p0, LoH;->f:LnH;

    .line 37
    :cond_6
    iget-object v0, p0, LoH;->f:LnH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 38
    :cond_7
    iget-object v0, p0, LoH;->e:LmH;

    if-nez v0, :cond_8

    .line 39
    new-instance v0, LmH;

    invoke-direct {v0}, LmH;-><init>()V

    iput-object v0, p0, LoH;->e:LmH;

    .line 40
    :cond_8
    iget-object v0, p0, LoH;->e:LmH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 41
    :cond_9
    iget-object v0, p0, LoH;->d:LqI;

    if-nez v0, :cond_a

    .line 42
    new-instance v0, LqI;

    invoke-direct {v0}, LqI;-><init>()V

    iput-object v0, p0, LoH;->d:LqI;

    .line 43
    :cond_a
    iget-object v0, p0, LoH;->d:LqI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 44
    :cond_b
    invoke-virtual {p1}, LQG;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LoH;->c:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_c
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 4

    .line 1
    iget-object v0, p0, LoH;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, LSG;->a(IJ)V

    .line 3
    :cond_0
    iget-object v0, p0, LoH;->d:LqI;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 5
    :cond_1
    iget-object v0, p0, LoH;->e:LmH;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 7
    :cond_2
    iget-object v0, p0, LoH;->f:LnH;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 9
    :cond_3
    iget-object v0, p0, LoH;->g:LkH;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 11
    :cond_4
    iget-object v0, p0, LoH;->h:LlH;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 13
    :cond_5
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
