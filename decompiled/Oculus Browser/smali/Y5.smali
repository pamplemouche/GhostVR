.class public LY5;
.super LW5;
.source "PG"


# direct methods
.method public constructor <init>(LX5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LW5;-><init>(LV5;)V

    return-void
.end method


# virtual methods
.method public onPrepare()V
    .locals 1

    .line 1
    iget-object v0, p0, LU5;->a:LT5;

    check-cast v0, LX5;

    check-cast v0, LG5;

    .line 2
    iget-object v0, v0, LG5;->c:LH5;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p2}, LS5;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, LU5;->a:LT5;

    check-cast p1, LX5;

    check-cast p1, LG5;

    .line 3
    iget-object p1, p1, LG5;->c:LH5;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p2}, LS5;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, LU5;->a:LT5;

    check-cast p1, LX5;

    check-cast p1, LG5;

    .line 3
    iget-object p1, p1, LG5;->c:LH5;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p2}, LS5;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, LU5;->a:LT5;

    check-cast p1, LX5;

    check-cast p1, LG5;

    .line 3
    iget-object p1, p1, LG5;->c:LH5;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
