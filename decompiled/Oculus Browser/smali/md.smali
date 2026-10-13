.class public Lmd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFd;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:LEd;

.field public E:Lld;

.field public w:Landroid/content/Context;

.field public x:Landroid/view/LayoutInflater;

.field public y:Lqd;

.field public z:Landroid/support/v7/view/menu/ExpandedMenuView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lmd;->C:I

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lmd;->B:I

    .line 4
    iput-object p1, p0, Lmd;->w:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmd;->x:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    .line 11
    iget-object v0, p0, Lmd;->E:Lld;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lld;

    invoke-direct {v0, p0}, Lld;-><init>(Lmd;)V

    iput-object v0, p0, Lmd;->E:Lld;

    .line 13
    :cond_0
    iget-object v0, p0, Lmd;->E:Lld;

    return-object v0
.end method

.method public a(LEd;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lmd;->D:LEd;

    return-void
.end method

.method public a(Landroid/content/Context;Lqd;)V
    .locals 2

    .line 1
    iget v0, p0, Lmd;->B:I

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lmd;->B:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lmd;->w:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmd;->x:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lmd;->w:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 5
    iput-object p1, p0, Lmd;->w:Landroid/content/Context;

    .line 6
    iget-object v0, p0, Lmd;->x:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmd;->x:Landroid/view/LayoutInflater;

    .line 8
    :cond_1
    :goto_0
    iput-object p2, p0, Lmd;->y:Lqd;

    .line 9
    iget-object p1, p0, Lmd;->E:Lld;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lld;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public a(Lqd;Z)V
    .locals 1

    .line 44
    iget-object v0, p0, Lmd;->D:LEd;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p1, p2}, LEd;->a(Lqd;Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 14
    iget-object p1, p0, Lmd;->E:Lld;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lld;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(LNd;)Z
    .locals 6

    .line 16
    invoke-virtual {p1}, Lqd;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_0
    new-instance v0, Lrd;

    invoke-direct {v0, p1}, Lrd;-><init>(Lqd;)V

    .line 18
    iget-object v1, v0, Lrd;->w:Lqd;

    .line 19
    new-instance v2, LO8;

    .line 20
    iget-object v3, v1, Lqd;->w:Landroid/content/Context;

    .line 21
    invoke-direct {v2, v3}, LO8;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v3, Lmd;

    .line 23
    iget-object v4, v2, LO8;->a:LK8;

    iget-object v4, v4, LK8;->a:Landroid/content/Context;

    const v5, 0x7f0e0010

    .line 24
    invoke-direct {v3, v4, v5}, Lmd;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Lrd;->y:Lmd;

    .line 25
    iput-object v0, v3, Lmd;->D:LEd;

    .line 26
    iget-object v4, v0, Lrd;->w:Lqd;

    .line 27
    iget-object v5, v4, Lqd;->w:Landroid/content/Context;

    invoke-virtual {v4, v3, v5}, Lqd;->a(LFd;Landroid/content/Context;)V

    .line 28
    iget-object v3, v0, Lrd;->y:Lmd;

    invoke-virtual {v3}, Lmd;->a()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, LO8;->a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)LO8;

    .line 29
    iget-object v3, v1, Lqd;->K:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 30
    iget-object v1, v2, LO8;->a:LK8;

    iput-object v3, v1, LK8;->g:Landroid/view/View;

    goto :goto_0

    .line 31
    :cond_1
    iget-object v3, v1, Lqd;->J:Landroid/graphics/drawable/Drawable;

    .line 32
    iget-object v4, v2, LO8;->a:LK8;

    iput-object v3, v4, LK8;->d:Landroid/graphics/drawable/Drawable;

    .line 33
    iget-object v1, v1, Lqd;->I:Ljava/lang/CharSequence;

    .line 34
    iput-object v1, v4, LK8;->f:Ljava/lang/CharSequence;

    .line 35
    :goto_0
    iget-object v1, v2, LO8;->a:LK8;

    iput-object v0, v1, LK8;->p:Landroid/content/DialogInterface$OnKeyListener;

    .line 36
    invoke-virtual {v2}, LO8;->a()LP8;

    move-result-object v1

    iput-object v1, v0, Lrd;->x:LP8;

    .line 37
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 38
    iget-object v1, v0, Lrd;->x:LP8;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    .line 39
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 40
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 41
    iget-object v0, v0, Lrd;->x:LP8;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 42
    iget-object v0, p0, Lmd;->D:LEd;

    if-eqz v0, :cond_2

    .line 43
    invoke-interface {v0, p1}, LEd;->a(Lqd;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lqd;Ltd;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Lqd;Ltd;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmd;->y:Lqd;

    iget-object p2, p0, Lmd;->E:Lld;

    invoke-virtual {p2, p3}, Lld;->getItem(I)Ltd;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lqd;->a(Landroid/view/MenuItem;LFd;I)Z

    return-void
.end method
