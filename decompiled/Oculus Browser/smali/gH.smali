.class public final LgH;
.super LTG;
.source "PG"


# instance fields
.field public c:LqI;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LgH;->c:LqI;

    .line 3
    iput-object v0, p0, LgH;->d:Ljava/lang/String;

    .line 4
    iput-object v0, p0, LgH;->e:Ljava/lang/Long;

    .line 5
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 8
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 9
    iget-object v1, p0, LgH;->c:LqI;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_0
    iget-object v1, p0, LgH;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 12
    invoke-static {v2, v1}, LSG;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_1
    iget-object v1, p0, LgH;->e:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 14
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, LSG;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 2

    .line 15
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 16
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, LQG;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LgH;->e:Ljava/lang/Long;

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, LQG;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LgH;->d:Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_3
    iget-object v0, p0, LgH;->c:LqI;

    if-nez v0, :cond_4

    .line 20
    new-instance v0, LqI;

    invoke-direct {v0}, LqI;-><init>()V

    iput-object v0, p0, LgH;->c:LqI;

    .line 21
    :cond_4
    iget-object v0, p0, LgH;->c:LqI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 4

    .line 1
    iget-object v0, p0, LgH;->c:LqI;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 3
    :cond_0
    iget-object v0, p0, LgH;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, LSG;->a(ILjava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, LgH;->e:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, LSG;->a(IJ)V

    .line 7
    :cond_2
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
