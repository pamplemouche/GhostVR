.class public LW5;
.super LU5;
.source "PG"


# direct methods
.method public constructor <init>(LV5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LU5;-><init>(LT5;)V

    return-void
.end method


# virtual methods
.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p2}, LS5;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, LU5;->a:LT5;

    check-cast p1, LV5;

    check-cast p1, LF5;

    .line 3
    iget-object p1, p1, LF5;->b:LH5;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
