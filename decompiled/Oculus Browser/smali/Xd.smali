.class public LXd;
.super LDd;
.source "PG"


# instance fields
.field public final synthetic m:Lee;


# direct methods
.method public constructor <init>(Lee;Landroid/content/Context;LNd;Landroid/view/View;)V
    .locals 7

    .line 1
    iput-object p1, p0, LXd;->m:Lee;

    const/4 v4, 0x0

    const v5, 0x7f04001e

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 2
    invoke-direct/range {v0 .. v6}, LDd;-><init>(Landroid/content/Context;Lqd;Landroid/view/View;ZII)V

    .line 3
    iget-object p2, p3, LNd;->X:Ltd;

    .line 4
    invoke-virtual {p2}, Ltd;->d()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    iget-object p2, p1, Lee;->E:Lbe;

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p1, Lcd;->D:LHd;

    .line 7
    check-cast p2, Landroid/view/View;

    .line 8
    :cond_0
    iput-object p2, p0, LDd;->f:Landroid/view/View;

    .line 9
    :cond_1
    iget-object p1, p1, Lee;->U:Lde;

    invoke-virtual {p0, p1}, LDd;->a(LEd;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, LXd;->m:Lee;

    const/4 v1, 0x0

    iput-object v1, v0, Lee;->R:LXd;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lee;->V:I

    .line 3
    invoke-super {p0}, LDd;->c()V

    return-void
.end method
