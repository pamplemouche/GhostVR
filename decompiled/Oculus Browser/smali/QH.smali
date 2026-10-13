.class public final LQH;
.super LTG;
.source "PG"


# instance fields
.field public c:LPH;

.field public d:LWH;

.field public e:LeI;

.field public f:LkI;

.field public g:LXH;

.field public h:LUH;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LQH;->c:LPH;

    .line 3
    iput-object v0, p0, LQH;->d:LWH;

    .line 4
    iput-object v0, p0, LQH;->e:LeI;

    .line 5
    iput-object v0, p0, LQH;->f:LkI;

    .line 6
    iput-object v0, p0, LQH;->g:LXH;

    .line 7
    iput-object v0, p0, LQH;->h:LUH;

    .line 8
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 14
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 15
    iget-object v1, p0, LQH;->c:LPH;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 16
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_0
    iget-object v1, p0, LQH;->d:LWH;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 18
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_1
    iget-object v1, p0, LQH;->e:LeI;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 20
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_2
    iget-object v1, p0, LQH;->f:LkI;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 22
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_3
    iget-object v1, p0, LQH;->g:LXH;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 24
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_4
    iget-object v1, p0, LQH;->h:LUH;

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

    if-eqz v0, :cond_d

    const/16 v1, 0xa

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
    iget-object v0, p0, LQH;->h:LUH;

    if-nez v0, :cond_2

    .line 30
    new-instance v0, LUH;

    invoke-direct {v0}, LUH;-><init>()V

    iput-object v0, p0, LQH;->h:LUH;

    .line 31
    :cond_2
    iget-object v0, p0, LQH;->h:LUH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 32
    :cond_3
    iget-object v0, p0, LQH;->g:LXH;

    if-nez v0, :cond_4

    .line 33
    new-instance v0, LXH;

    invoke-direct {v0}, LXH;-><init>()V

    iput-object v0, p0, LQH;->g:LXH;

    .line 34
    :cond_4
    iget-object v0, p0, LQH;->g:LXH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 35
    :cond_5
    iget-object v0, p0, LQH;->f:LkI;

    if-nez v0, :cond_6

    .line 36
    new-instance v0, LkI;

    invoke-direct {v0}, LkI;-><init>()V

    iput-object v0, p0, LQH;->f:LkI;

    .line 37
    :cond_6
    iget-object v0, p0, LQH;->f:LkI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 38
    :cond_7
    iget-object v0, p0, LQH;->e:LeI;

    if-nez v0, :cond_8

    .line 39
    new-instance v0, LeI;

    invoke-direct {v0}, LeI;-><init>()V

    iput-object v0, p0, LQH;->e:LeI;

    .line 40
    :cond_8
    iget-object v0, p0, LQH;->e:LeI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 41
    :cond_9
    iget-object v0, p0, LQH;->d:LWH;

    if-nez v0, :cond_a

    .line 42
    new-instance v0, LWH;

    invoke-direct {v0}, LWH;-><init>()V

    iput-object v0, p0, LQH;->d:LWH;

    .line 43
    :cond_a
    iget-object v0, p0, LQH;->d:LWH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 44
    :cond_b
    iget-object v0, p0, LQH;->c:LPH;

    if-nez v0, :cond_c

    .line 45
    new-instance v0, LPH;

    invoke-direct {v0}, LPH;-><init>()V

    iput-object v0, p0, LQH;->c:LPH;

    .line 46
    :cond_c
    iget-object v0, p0, LQH;->c:LPH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto/16 :goto_0

    :cond_d
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 2

    .line 1
    iget-object v0, p0, LQH;->c:LPH;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 3
    :cond_0
    iget-object v0, p0, LQH;->d:LWH;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 5
    :cond_1
    iget-object v0, p0, LQH;->e:LeI;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 7
    :cond_2
    iget-object v0, p0, LQH;->f:LkI;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 9
    :cond_3
    iget-object v0, p0, LQH;->g:LXH;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 11
    :cond_4
    iget-object v0, p0, LQH;->h:LUH;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 13
    :cond_5
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
