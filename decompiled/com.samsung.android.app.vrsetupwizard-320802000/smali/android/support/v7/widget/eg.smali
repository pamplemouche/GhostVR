.class Landroid/support/v7/widget/eg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/lw;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/ft;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    iget-object p1, p1, Landroid/support/v7/widget/ft;->d:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ff;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/et;->a(Landroid/view/View;Landroid/support/v7/widget/ff;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ff;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ff;->c(Landroid/support/v7/widget/ft;)V

    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)V

    return-void
.end method

.method public b(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)V

    return-void
.end method

.method public c(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ft;->c(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/en;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/support/v7/widget/en;->a(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v7/widget/en;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/en;->c(Landroid/support/v7/widget/ft;Landroid/support/v7/widget/eq;Landroid/support/v7/widget/eq;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->r()V

    :cond_1
    return-void
.end method
