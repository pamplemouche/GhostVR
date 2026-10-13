.class public final LkH;
.super LTG;
.source "PG"


# instance fields
.field public c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LkH;->c:[B

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
    iget-object v1, p0, LkH;->c:[B

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 6
    invoke-static {v2, v1}, LSG;->b(I[B)I

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

    if-eqz v0, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 8
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, LQG;->c()[B

    move-result-object v0

    iput-object v0, p0, LkH;->c:[B

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public a(LSG;)V
    .locals 2

    .line 1
    iget-object v0, p0, LkH;->c:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, LSG;->a(I[B)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, LTG;->a(LSG;)V

    return-void
.end method
