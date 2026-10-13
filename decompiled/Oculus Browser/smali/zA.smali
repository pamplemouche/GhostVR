.class public LzA;
.super LYx;
.source "PG"


# direct methods
.method public constructor <init>(LQx;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LYx;-><init>(LQx;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, LbJ;

    .line 2
    sget-object v0, LvA;->a:LWx;

    sget-object v1, LwA;->a:LXx;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v2, v0, v1}, LYx;->a(LTF;LFF;LWx;LXx;)LFF;

    move-result-object v0

    check-cast v0, LZI;

    .line 4
    sget-object v1, LxA;->a:LWx;

    sget-object v2, LyA;->a:LXx;

    .line 5
    invoke-virtual {p0, p1, v0, v1, v2}, LYx;->a(LTF;LFF;LWx;LXx;)LFF;

    move-result-object v0

    check-cast v0, LZI;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, LbJ;

    :cond_0
    return-object p1
.end method
