.class public final LcI;
.super LTG;
.source "PG"


# instance fields
.field public c:LqI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LcI;->c:LqI;

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
    iget-object v1, p0, LcI;->c:LqI;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 6
    invoke-static {v2, v1}, LSG;->b(ILZG;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public a(LQG;)LZG;
    .locals 2

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 8
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, LcI;->c:LqI;

    if-nez v0, :cond_2

    .line 10
    new-instance v0, LqI;

    invoke-direct {v0}, LqI;-><init>()V

    iput-object v0, p0, LcI;->c:LqI;

    .line 11
    :cond_2
    iget-object v0, p0, LcI;->c:LqI;

    invoke-virtual {p1, v0}, LQG;->a(LZG;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 2

    .line 1
    iget-object v0, p0, LcI;->c:LqI;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(ILZG;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
