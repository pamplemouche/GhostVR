.class public final LmH;
.super LTG;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTG;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LTG;->b:LVG;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, LZG;->a:I

    return-void
.end method


# virtual methods
.method public a(LQG;)LZG;
    .locals 1

    .line 1
    :cond_0
    invoke-virtual {p1}, LQG;->h()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-super {p0, p1, v0}, LTG;->a(LQG;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method
