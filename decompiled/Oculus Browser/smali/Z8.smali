.class public LZ8;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lk9;


# direct methods
.method public constructor <init>(Lk9;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZ8;->w:Lk9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, LZ8;->w:Lk9;

    iget-object v1, v0, Lk9;->K:Landroid/widget/PopupWindow;

    iget-object v0, v0, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/16 v3, 0x37

    invoke-virtual {v1, v0, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2
    iget-object v0, p0, LZ8;->w:Lk9;

    invoke-virtual {v0}, Lk9;->e()V

    .line 3
    iget-object v0, p0, LZ8;->w:Lk9;

    invoke-virtual {v0}, Lk9;->j()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, LZ8;->w:Lk9;

    iget-object v0, v0, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 5
    iget-object v0, p0, LZ8;->w:Lk9;

    iget-object v2, v0, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v2}, LA7;->a(Landroid/view/View;)LR7;

    move-result-object v2

    invoke-virtual {v2, v1}, LR7;->a(F)LR7;

    iput-object v2, v0, Lk9;->M:LR7;

    .line 6
    iget-object v0, p0, LZ8;->w:Lk9;

    iget-object v0, v0, Lk9;->M:LR7;

    new-instance v1, LY8;

    invoke-direct {v1, p0}, LY8;-><init>(LZ8;)V

    .line 7
    iget-object v2, v0, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0, v2, v1}, LR7;->a(Landroid/view/View;LS7;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, LZ8;->w:Lk9;

    iget-object v0, v0, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 10
    iget-object v0, p0, LZ8;->w:Lk9;

    iget-object v0, v0, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, LPd;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
