.class public final LnI;
.super LTG;
.source "PG"


# instance fields
.field public c:LmI;

.field public d:LpI;

.field public e:LXH;

.field public f:LhI;

.field public g:LlI;

.field public h:LSH;

.field public i:LVH;

.field public j:LTH;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LnI;->c:LmI;

    .line 3
    iput-object v0, p0, LnI;->d:LpI;

    .line 4
    iput-object v0, p0, LnI;->e:LXH;

    .line 5
    iput-object v0, p0, LnI;->f:LhI;

    .line 6
    iput-object v0, p0, LnI;->g:LlI;

    .line 7
    iput-object v0, p0, LnI;->h:LSH;

    .line 8
    iput-object v0, p0, LnI;->i:LVH;

    .line 9
    iput-object v0, p0, LnI;->j:LTH;

    .line 10
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 18
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 19
    iget-object v1, p0, LnI;->c:LmI;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 20
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_0
    iget-object v1, p0, LnI;->d:LpI;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 22
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_1
    iget-object v1, p0, LnI;->e:LXH;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 24
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_2
    iget-object v1, p0, LnI;->f:LhI;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 26
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_3
    iget-object v1, p0, LnI;->g:LlI;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 28
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_4
    iget-object v1, p0, LnI;->h:LSH;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 30
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_5
    iget-object v1, p0, LnI;->i:LVH;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 32
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_6
    iget-object v1, p0, LnI;->j:LTH;

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

    if-eqz v0, :cond_11

    const/16 v1, 0xa

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
    iget-object v0, p0, LnI;->j:LTH;

    if-nez v0, :cond_2

    .line 38
    new-instance v0, LTH;

    invoke-direct {v0}, LTH;-><init>()V

    iput-object v0, p0, LnI;->j:LTH;

    .line 39
    :cond_2
    iget-object v0, p0, LnI;->j:LTH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 40
    :cond_3
    iget-object v0, p0, LnI;->i:LVH;

    if-nez v0, :cond_4

    .line 41
    new-instance v0, LVH;

    invoke-direct {v0}, LVH;-><init>()V

    iput-object v0, p0, LnI;->i:LVH;

    .line 42
    :cond_4
    iget-object v0, p0, LnI;->i:LVH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 43
    :cond_5
    iget-object v0, p0, LnI;->h:LSH;

    if-nez v0, :cond_6

    .line 44
    new-instance v0, LSH;

    invoke-direct {v0}, LSH;-><init>()V

    iput-object v0, p0, LnI;->h:LSH;

    .line 45
    :cond_6
    iget-object v0, p0, LnI;->h:LSH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 46
    :cond_7
    iget-object v0, p0, LnI;->g:LlI;

    if-nez v0, :cond_8

    .line 47
    new-instance v0, LlI;

    invoke-direct {v0}, LlI;-><init>()V

    iput-object v0, p0, LnI;->g:LlI;

    .line 48
    :cond_8
    iget-object v0, p0, LnI;->g:LlI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 49
    :cond_9
    iget-object v0, p0, LnI;->f:LhI;

    if-nez v0, :cond_a

    .line 50
    new-instance v0, LhI;

    invoke-direct {v0}, LhI;-><init>()V

    iput-object v0, p0, LnI;->f:LhI;

    .line 51
    :cond_a
    iget-object v0, p0, LnI;->f:LhI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    .line 52
    :cond_b
    iget-object v0, p0, LnI;->e:LXH;

    if-nez v0, :cond_c

    .line 53
    new-instance v0, LXH;

    invoke-direct {v0}, LXH;-><init>()V

    iput-object v0, p0, LnI;->e:LXH;

    .line 54
    :cond_c
    iget-object v0, p0, LnI;->e:LXH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    .line 55
    :cond_d
    iget-object v0, p0, LnI;->d:LpI;

    if-nez v0, :cond_e

    .line 56
    new-instance v0, LpI;

    invoke-direct {v0}, LpI;-><init>()V

    iput-object v0, p0, LnI;->d:LpI;

    .line 57
    :cond_e
    iget-object v0, p0, LnI;->d:LpI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    .line 58
    :cond_f
    iget-object v0, p0, LnI;->c:LmI;

    if-nez v0, :cond_10

    .line 59
    new-instance v0, LmI;

    invoke-direct {v0}, LmI;-><init>()V

    iput-object v0, p0, LnI;->c:LmI;

    .line 60
    :cond_10
    iget-object v0, p0, LnI;->c:LmI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    :cond_11
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 2

    .line 1
    iget-object v0, p0, LnI;->c:LmI;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 3
    :cond_0
    iget-object v0, p0, LnI;->d:LpI;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 5
    :cond_1
    iget-object v0, p0, LnI;->e:LXH;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 7
    :cond_2
    iget-object v0, p0, LnI;->f:LhI;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 9
    :cond_3
    iget-object v0, p0, LnI;->g:LlI;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 11
    :cond_4
    iget-object v0, p0, LnI;->h:LSH;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 13
    :cond_5
    iget-object v0, p0, LnI;->i:LVH;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 15
    :cond_6
    iget-object v0, p0, LnI;->j:LTH;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 17
    :cond_7
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
