.class public final LMH;
.super LTG;
.source "PG"


# instance fields
.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LMH;->c:Ljava/lang/Integer;

    .line 3
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 4
    invoke-super {p0}, LTG;->a()I

    move-result v0

    .line 5
    iget-object v1, p0, LMH;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 6
    invoke-static {v1, v2, v0}, LZi;->a(Ljava/lang/Integer;II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 4

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 8
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, LQG;->a()I

    move-result v1

    .line 10
    invoke-virtual {p1}, LQG;->f()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 11
    invoke-virtual {p1, v1}, LQG;->c(I)V

    .line 12
    invoke-virtual {p0, p1, v0}, LTG;->a(LQG;I)Z

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LMH;->c:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 2

    .line 1
    iget-object v0, p0, LMH;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LSG;->a(II)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
