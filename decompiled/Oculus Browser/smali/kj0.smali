.class public Lkj0;
.super LYi0;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbb;Lpj0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LYi0;-><init>(Ljava/lang/String;Lbb;Lpj0;)V

    return-void
.end method


# virtual methods
.method public a(LH2;)Ls2;
    .locals 3

    const-string v0, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    .line 1
    invoke-virtual {p1, v0}, LH2;->a(Ljava/lang/String;)Lz2;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Ljj0;

    invoke-direct {v1, p0}, Ljj0;-><init>(LYi0;)V

    .line 3
    iget-object v2, p0, LYi0;->b:Lbb;

    .line 4
    invoke-virtual {v1, v2}, Lw9;->a(Lbb;)V

    .line 5
    invoke-virtual {v1, p1, v0}, Ls2;->a(LH2;Ljava/lang/String;)V

    .line 6
    check-cast p1, LY2;

    .line 7
    invoke-virtual {p1}, LY2;->n()Z

    .line 8
    invoke-virtual {p1}, LY2;->o()V

    return-object v1
.end method
