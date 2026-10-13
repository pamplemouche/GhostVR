.class public final LHH;
.super LTG;
.source "PG"


# instance fields
.field public c:Ljava/lang/Integer;

.field public d:[B

.field public e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LHH;->c:Ljava/lang/Integer;

    .line 3
    iput-object v0, p0, LHH;->d:[B

    .line 4
    iput-object v0, p0, LHH;->e:Ljava/lang/Boolean;

    .line 5
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 8
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 9
    iget-object v1, p0, LHH;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    .line 11
    :cond_0
    iget-object v1, p0, LHH;->d:[B

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 12
    invoke-static {v2, v1}, LSG;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_1
    iget-object v1, p0, LHH;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, LSG;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 4

    .line 15
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

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
    invoke-virtual {p1}, LQG;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LHH;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, LQG;->c()[B

    move-result-object v0

    iput-object v0, p0, LHH;->d:[B

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p1}, LQG;->a()I

    move-result v1

    .line 20
    invoke-virtual {p1}, LQG;->f()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x71

    if-eq v2, v3, :cond_4

    const/16 v3, 0x72

    if-eq v2, v3, :cond_4

    .line 21
    invoke-virtual {p1, v1}, LQG;->c(I)V

    .line 22
    invoke-virtual {p0, p1, v0}, LTG;->a(LQG;I)Z

    goto :goto_0

    .line 23
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LHH;->c:Ljava/lang/Integer;

    goto :goto_0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 2

    .line 1
    iget-object v0, p0, LHH;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 3
    :cond_0
    iget-object v0, p0, LHH;->d:[B

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, LSG;->a(I[B)V

    .line 5
    :cond_1
    iget-object v0, p0, LHH;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(IZ)V

    .line 7
    :cond_2
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
