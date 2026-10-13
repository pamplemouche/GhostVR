.class public final LPH;
.super LTG;
.source "PG"


# instance fields
.field public c:LcI;

.field public d:[B

.field public e:LjI;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LPH;->c:LcI;

    .line 3
    iput-object v0, p0, LPH;->d:[B

    .line 4
    iput-object v0, p0, LPH;->e:LjI;

    .line 5
    iput-object v0, p0, LPH;->f:Ljava/lang/Long;

    .line 6
    iput-object v0, p0, LPH;->g:Ljava/lang/Long;

    .line 7
    iput-object v0, p0, LPH;->h:Ljava/lang/String;

    .line 8
    iput-object v0, p0, LPH;->i:Ljava/lang/Integer;

    .line 9
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 16
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 17
    iget-object v1, p0, LPH;->c:LcI;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 18
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_0
    iget-object v1, p0, LPH;->d:[B

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 20
    invoke-static {v2, v1}, LSG;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_1
    iget-object v1, p0, LPH;->e:LjI;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 22
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_2
    iget-object v1, p0, LPH;->f:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 24
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, LSG;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_3
    iget-object v1, p0, LPH;->g:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 26
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, LSG;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_4
    iget-object v1, p0, LPH;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 28
    invoke-static {v2, v1}, LSG;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_5
    iget-object v1, p0, LPH;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 30
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    :cond_6
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 2

    .line 31
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const/16 v1, 0x12

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    .line 32
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p1}, LQG;->f()I

    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LPH;->i:Ljava/lang/Integer;

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p1}, LQG;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LPH;->h:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p1}, LQG;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LPH;->g:Ljava/lang/Long;

    goto :goto_0

    .line 37
    :cond_4
    invoke-virtual {p1}, LQG;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LPH;->f:Ljava/lang/Long;

    goto :goto_0

    .line 38
    :cond_5
    iget-object v0, p0, LPH;->e:LjI;

    if-nez v0, :cond_6

    .line 39
    new-instance v0, LjI;

    invoke-direct {v0}, LjI;-><init>()V

    iput-object v0, p0, LPH;->e:LjI;

    .line 40
    :cond_6
    iget-object v0, p0, LPH;->e:LjI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    .line 41
    :cond_7
    invoke-virtual {p1}, LQG;->c()[B

    move-result-object v0

    iput-object v0, p0, LPH;->d:[B

    goto :goto_0

    .line 42
    :cond_8
    iget-object v0, p0, LPH;->c:LcI;

    if-nez v0, :cond_9

    .line 43
    new-instance v0, LcI;

    invoke-direct {v0}, LcI;-><init>()V

    iput-object v0, p0, LPH;->c:LcI;

    .line 44
    :cond_9
    iget-object v0, p0, LPH;->c:LcI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    :cond_a
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 4

    .line 1
    iget-object v0, p0, LPH;->c:LcI;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 3
    :cond_0
    iget-object v0, p0, LPH;->d:[B

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, LSG;->a(I[B)V

    .line 5
    :cond_1
    iget-object v0, p0, LPH;->e:LjI;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 7
    :cond_2
    iget-object v0, p0, LPH;->f:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, LSG;->a(IJ)V

    .line 9
    :cond_3
    iget-object v0, p0, LPH;->g:Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, LSG;->a(IJ)V

    .line 11
    :cond_4
    iget-object v0, p0, LPH;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, LSG;->a(ILjava/lang/String;)V

    .line 13
    :cond_5
    iget-object v0, p0, LPH;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 15
    :cond_6
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
