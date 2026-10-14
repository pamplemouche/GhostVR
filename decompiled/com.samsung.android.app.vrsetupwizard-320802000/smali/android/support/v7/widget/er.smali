.class Landroid/support/v7/widget/er;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ep;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/er;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/ft;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ft;->c(Z)V

    iget-object v0, p1, Landroid/support/v7/widget/ft;->k:Landroid/support/v7/widget/ft;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/ft;->l:Landroid/support/v7/widget/ft;

    if-nez v0, :cond_0

    iput-object v1, p1, Landroid/support/v7/widget/ft;->k:Landroid/support/v7/widget/ft;

    :cond_0
    iput-object v1, p1, Landroid/support/v7/widget/ft;->l:Landroid/support/v7/widget/ft;

    invoke-static {p1}, Landroid/support/v7/widget/ft;->c(Landroid/support/v7/widget/ft;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/er;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/ft;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/ft;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/er;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/ft;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
