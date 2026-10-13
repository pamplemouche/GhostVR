.class public Loi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lvi;

.field public final synthetic x:I

.field public final synthetic y:Lxi;


# direct methods
.method public constructor <init>(Lxi;Lvi;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Loi;->y:Lxi;

    iput-object p2, p0, Loi;->w:Lvi;

    iput p3, p0, Loi;->x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Loi;->y:Lxi;

    iget-object v0, v0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Z

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Loi;->w:Lvi;

    iget-boolean v1, v0, Lvi;->G:Z

    if-nez v1, :cond_4

    iget-object v0, v0, Lvi;->A:Ldh;

    .line 4
    invoke-virtual {v0}, Ldh;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 5
    iget-object v0, p0, Loi;->y:Lxi;

    iget-object v0, v0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 6
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, LJg;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    :cond_0
    iget-object v0, p0, Loi;->y:Lxi;

    .line 9
    iget-object v1, v0, Lxi;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 10
    iget-object v4, v0, Lxi;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvi;

    iget-boolean v4, v4, Lvi;->H:Z

    if-nez v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 11
    iget-object v0, p0, Loi;->y:Lxi;

    iget-object v0, v0, Lxi;->m:Lsi;

    iget-object v1, p0, Loi;->w:Lvi;

    iget-object v1, v1, Lvi;->A:Ldh;

    iget v2, p0, Loi;->x:I

    invoke-virtual {v0, v1, v2}, Lsi;->b(Ldh;I)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object v0, p0, Loi;->y:Lxi;

    iget-object v0, v0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_2
    return-void
.end method
