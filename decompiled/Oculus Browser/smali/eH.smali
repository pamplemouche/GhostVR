.class public final LeH;
.super LTG;
.source "PG"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:LqI;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LeH;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, LeH;->d:Ljava/lang/String;

    .line 4
    iput-object v0, p0, LeH;->e:Ljava/lang/String;

    .line 5
    iput-object v0, p0, LeH;->f:LqI;

    .line 6
    iput-object v0, p0, LeH;->g:Ljava/lang/String;

    .line 7
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 12
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 13
    iget-object v1, p0, LeH;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 14
    invoke-static {v2, v1}, LSG;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_0
    iget-object v1, p0, LeH;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    .line 16
    invoke-static {v2, v1}, LSG;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_1
    iget-object v1, p0, LeH;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    .line 18
    invoke-static {v2, v1}, LSG;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_2
    iget-object v1, p0, LeH;->f:LqI;

    if-eqz v1, :cond_3

    const/4 v2, 0x5

    .line 20
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_3
    iget-object v1, p0, LeH;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v2, 0x6

    .line 22
    invoke-static {v2, v1}, LSG;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 2

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    .line 24
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p1}, LQG;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LeH;->g:Ljava/lang/String;

    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, LeH;->f:LqI;

    if-nez v0, :cond_3

    .line 27
    new-instance v0, LqI;

    invoke-direct {v0}, LqI;-><init>()V

    iput-object v0, p0, LeH;->f:LqI;

    .line 28
    :cond_3
    iget-object v0, p0, LeH;->f:LqI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 29
    :cond_4
    invoke-virtual {p1}, LQG;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LeH;->e:Ljava/lang/String;

    goto :goto_0

    .line 30
    :cond_5
    invoke-virtual {p1}, LQG;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LeH;->d:Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_6
    invoke-virtual {p1}, LQG;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LeH;->c:Ljava/lang/String;

    goto :goto_0

    :cond_7
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 2

    .line 1
    iget-object v0, p0, LeH;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILjava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, LeH;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 4
    invoke-virtual {p1, v1, v0}, LSG;->a(ILjava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, LeH;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p1, v1, v0}, LSG;->a(ILjava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, LeH;->f:LqI;

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 8
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 9
    :cond_3
    iget-object v0, p0, LeH;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    .line 10
    invoke-virtual {p1, v1, v0}, LSG;->a(ILjava/lang/String;)V

    .line 11
    :cond_4
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
