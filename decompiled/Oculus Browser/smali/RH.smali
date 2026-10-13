.class public final LRH;
.super LTG;
.source "PG"


# instance fields
.field public c:LqI;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LRH;->c:LqI;

    .line 3
    iput-object v0, p0, LRH;->d:Ljava/lang/String;

    .line 4
    iput-object v0, p0, LRH;->e:Ljava/lang/String;

    .line 5
    iput-object v0, p0, LRH;->f:Ljava/lang/String;

    .line 6
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 10
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 11
    iget-object v1, p0, LRH;->c:LqI;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 12
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_0
    iget-object v1, p0, LRH;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 14
    invoke-static {v2, v1}, LSG;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_1
    iget-object v1, p0, LRH;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 16
    invoke-static {v2, v1}, LSG;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_2
    iget-object v1, p0, LRH;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 18
    invoke-static {v2, v1}, LSG;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 2

    .line 19
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 20
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p1}, LQG;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LRH;->f:Ljava/lang/String;

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p1}, LQG;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LRH;->e:Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p1}, LQG;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LRH;->d:Ljava/lang/String;

    goto :goto_0

    .line 24
    :cond_4
    iget-object v0, p0, LRH;->c:LqI;

    if-nez v0, :cond_5

    .line 25
    new-instance v0, LqI;

    invoke-direct {v0}, LqI;-><init>()V

    iput-object v0, p0, LRH;->c:LqI;

    .line 26
    :cond_5
    iget-object v0, p0, LRH;->c:LqI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    :cond_6
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 2

    .line 1
    iget-object v0, p0, LRH;->c:LqI;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 3
    :cond_0
    iget-object v0, p0, LRH;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, LSG;->a(ILjava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, LRH;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, LSG;->a(ILjava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, LRH;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, LSG;->a(ILjava/lang/String;)V

    .line 9
    :cond_3
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
