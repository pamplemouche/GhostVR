.class public final LDH;
.super LTG;
.source "PG"


# instance fields
.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;

.field public f:LBH;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LDH;->c:Ljava/lang/Integer;

    .line 3
    iput-object v0, p0, LDH;->d:Ljava/lang/Long;

    .line 4
    iput-object v0, p0, LDH;->e:Ljava/lang/Long;

    .line 5
    iput-object v0, p0, LDH;->f:LBH;

    .line 6
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 10
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 11
    iget-object v1, p0, LDH;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 12
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    .line 13
    :cond_0
    iget-object v1, p0, LDH;->d:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 14
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, LSG;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_1
    iget-object v1, p0, LDH;->e:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 16
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, LSG;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_2
    iget-object v1, p0, LDH;->f:LBH;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 18
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

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

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 20
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 21
    :cond_1
    iget-object v0, p0, LDH;->f:LBH;

    if-nez v0, :cond_2

    .line 22
    new-instance v0, LBH;

    invoke-direct {v0}, LBH;-><init>()V

    iput-object v0, p0, LDH;->f:LBH;

    .line 23
    :cond_2
    iget-object v0, p0, LDH;->f:LBH;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p1}, LQG;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LDH;->e:Ljava/lang/Long;

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {p1}, LQG;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LDH;->d:Ljava/lang/Long;

    goto :goto_0

    .line 26
    :cond_5
    invoke-virtual {p1}, LQG;->f()I

    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LDH;->c:Ljava/lang/Integer;

    goto :goto_0

    :cond_6
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 4

    .line 1
    iget-object v0, p0, LDH;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 3
    :cond_0
    iget-object v0, p0, LDH;->d:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, LSG;->a(IJ)V

    .line 5
    :cond_1
    iget-object v0, p0, LDH;->e:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, LSG;->a(IJ)V

    .line 7
    :cond_2
    iget-object v0, p0, LDH;->f:LBH;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 9
    :cond_3
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
