.class public Loj0;
.super LYi0;
.source "PG"


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Lcb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbb;Ljava/lang/String;Lpj0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, LYi0;-><init>(Ljava/lang/String;Lbb;Lpj0;)V

    .line 2
    new-instance p1, Llj0;

    invoke-direct {p1, p0}, Llj0;-><init>(Loj0;)V

    iput-object p1, p0, Loj0;->g:Lcb;

    .line 3
    iput-object p3, p0, Loj0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(LH2;)Ls2;
    .locals 6

    const-string v0, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    .line 1
    invoke-virtual {p1, v0}, LH2;->a(Ljava/lang/String;)Lz2;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Lnj0;

    iget-object v2, p0, Loj0;->g:Lcb;

    invoke-direct {v1, p0, v2}, Lnj0;-><init>(LYi0;Lcb;)V

    .line 3
    iget-object v2, p0, LYi0;->c:Lrb;

    .line 4
    iget-object v3, p0, LYi0;->b:Lbb;

    .line 5
    iget-object v4, p0, Loj0;->g:Lcb;

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v2, v3, v4, v5}, Lrb;->a(Lbb;Lcb;I)V

    .line 7
    invoke-virtual {v1, p1, v0}, Ls2;->a(LH2;Ljava/lang/String;)V

    .line 8
    check-cast p1, LY2;

    .line 9
    invoke-virtual {p1}, LY2;->n()Z

    .line 10
    invoke-virtual {p1}, LY2;->o()V

    return-object v1
.end method
