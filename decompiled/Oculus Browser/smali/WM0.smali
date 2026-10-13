.class public LWM0;
.super Lsi;
.source "PG"


# instance fields
.field public d:Ldh;

.field public final synthetic e:LXM0;


# direct methods
.method public synthetic constructor <init>(LXM0;LSM0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LWM0;->e:LXM0;

    invoke-direct {p0}, Lsi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Ldh;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lsi;->a(Landroid/support/v7/widget/RecyclerView;Ldh;)V

    .line 2
    invoke-virtual {p2}, Ldh;->c()I

    move-result v0

    iget-object v1, p0, LWM0;->e:LXM0;

    .line 3
    iget v1, v1, LXM0;->G:I

    if-eq v0, v1, :cond_0

    .line 4
    iget-boolean v0, p1, Landroid/support/v7/widget/RecyclerView;->N:Z

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, LUM0;

    invoke-direct {v0, p0}, LUM0;-><init>(LWM0;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, LWM0;->d:Ldh;

    .line 7
    iget-object p1, p0, LWM0;->e:LXM0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LXM0;->a(LXM0;Z)V

    .line 8
    invoke-virtual {p0, v0, p2}, LWM0;->a(ZLdh;)V

    return-void
.end method

.method public a(Ldh;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 24
    sget-object v0, Lzi;->a:Lyi;

    iget-object v0, p1, Ldh;->w:Landroid/view/View;

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 25
    iget-object p2, p0, LWM0;->d:Ldh;

    if-eq p2, p1, :cond_1

    .line 26
    iput-object p1, p0, LWM0;->d:Ldh;

    .line 27
    iget-object p2, p0, LWM0;->e:LXM0;

    invoke-virtual {p1}, Ldh;->c()I

    move-result v0

    .line 28
    iput v0, p2, LXM0;->G:I

    .line 29
    iget-object p2, p0, LWM0;->e:LXM0;

    const/4 v0, 0x1

    invoke-static {p2, v0}, LXM0;->a(LXM0;Z)V

    .line 30
    invoke-virtual {p0, v0, p1}, LWM0;->a(ZLdh;)V

    :cond_1
    return-void
.end method

.method public final a(ZLdh;)V
    .locals 3

    .line 14
    iget-object v0, p2, Ldh;->w:Landroid/view/View;

    invoke-static {v0}, LA7;->a(Landroid/view/View;)LR7;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 15
    iget-object v1, p0, LWM0;->e:LXM0;

    .line 16
    iget v1, v1, LXM0;->E:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    iget-object v2, v0, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 19
    :cond_1
    new-instance v1, LVM0;

    invoke-direct {v1, p0, p2, p1}, LVM0;-><init>(LWM0;Ldh;Z)V

    .line 20
    iget-object p1, v0, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    const-wide/16 p1, 0x64

    .line 22
    invoke-virtual {v0, p1, p2}, LR7;->a(J)LR7;

    .line 23
    invoke-virtual {v0}, LR7;->b()V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Ldh;Ldh;)Z
    .locals 2

    .line 9
    iget-object p1, p0, LWM0;->e:LXM0;

    move-object v0, p1

    check-cast v0, LOz0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 10
    instance-of p2, p2, LNz0;

    .line 11
    check-cast p1, LOz0;

    if-eqz p1, :cond_1

    .line 12
    instance-of p1, p3, LNz0;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    throw v1

    .line 13
    :cond_2
    throw v1
.end method

.method public b(Ldh;I)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    .line 6
    iget-object v0, p0, LWM0;->e:LXM0;

    iget-object v0, v0, LXM0;->F:LYM0;

    check-cast v0, LLz0;

    .line 7
    iget-boolean v0, v0, LLz0;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;Ldh;Ldh;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Ldh;->c()I

    move-result p1

    .line 2
    invoke-virtual {p3}, Ldh;->c()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object p3, p0, LWM0;->e:LXM0;

    iget-object p3, p3, LXM0;->B:Ljava/util/List;

    invoke-static {p3, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 4
    iget-object p3, p0, LWM0;->e:LXM0;

    .line 5
    iget-object p3, p3, LBg;->w:LCg;

    invoke-virtual {p3, p1, p2}, LCg;->a(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;Ldh;)I
    .locals 1

    .line 1
    iget-object p1, p0, LWM0;->d:Ldh;

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, LWM0;->e:LXM0;

    .line 2
    check-cast p1, LOz0;

    if-eqz p1, :cond_2

    .line 3
    instance-of p1, p2, LNz0;

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 4
    invoke-static {p1, v0}, Lsi;->c(II)I

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-static {v0, v0}, Lsi;->c(II)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
