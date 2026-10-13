.class public Leh;
.super Lh7;
.source "PG"


# instance fields
.field public final c:Lfh;


# direct methods
.method public constructor <init>(Lfh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh7;-><init>()V

    .line 2
    iput-object p1, p0, Leh;->c:Lfh;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;LZ7;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lh7;->a(Landroid/view/View;LZ7;)V

    .line 2
    iget-object v0, p0, Leh;->c:Lfh;

    invoke-virtual {v0}, Lfh;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leh;->c:Lfh;

    iget-object v0, v0, Lfh;->c:Landroid/support/v7/widget/RecyclerView;

    .line 3
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, LQg;->a(Landroid/view/View;LZ7;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 5
    invoke-super {p0, p1, p2, p3}, Lh7;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    iget-object p1, p0, Leh;->c:Lfh;

    invoke-virtual {p1}, Lfh;->b()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Leh;->c:Lfh;

    iget-object p1, p1, Lfh;->c:Landroid/support/v7/widget/RecyclerView;

    .line 7
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p1, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    :cond_1
    return p2
.end method
