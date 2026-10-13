.class public Lni;
.super Lvi;
.source "PG"


# instance fields
.field public final synthetic J:I

.field public final synthetic K:Ldh;

.field public final synthetic L:Lxi;


# direct methods
.method public constructor <init>(Lxi;Ldh;IIFFFFILdh;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 1
    iput-object v0, v8, Lni;->L:Lxi;

    move/from16 v0, p9

    iput v0, v8, Lni;->J:I

    move-object/from16 v0, p10

    iput-object v0, v8, Lni;->K:Ldh;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lvi;-><init>(Ldh;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lvi;->H:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lvi;->A:Ldh;

    invoke-virtual {p1, v0}, Ldh;->a(Z)V

    .line 3
    :cond_0
    iput-boolean v0, p0, Lvi;->H:Z

    .line 4
    iget-boolean p1, p0, Lvi;->G:Z

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget p1, p0, Lni;->J:I

    if-gtz p1, :cond_2

    .line 6
    iget-object p1, p0, Lni;->L:Lxi;

    iget-object v0, p1, Lxi;->m:Lsi;

    iget-object p1, p1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lni;->K:Ldh;

    invoke-virtual {v0, p1, v1}, Lsi;->a(Landroid/support/v7/widget/RecyclerView;Ldh;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lni;->L:Lxi;

    iget-object p1, p1, Lxi;->a:Ljava/util/List;

    iget-object v1, p0, Lni;->K:Ldh;

    iget-object v1, v1, Ldh;->w:Landroid/view/View;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iput-boolean v0, p0, Lvi;->D:Z

    .line 9
    iget p1, p0, Lni;->J:I

    if-lez p1, :cond_3

    .line 10
    iget-object v0, p0, Lni;->L:Lxi;

    .line 11
    iget-object v1, v0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Loi;

    invoke-direct {v2, v0, p0, p1}, Loi;-><init>(Lxi;Lvi;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Lni;->L:Lxi;

    iget-object v0, p1, Lxi;->x:Landroid/view/View;

    iget-object v1, p0, Lni;->K:Ldh;

    iget-object v1, v1, Ldh;->w:Landroid/view/View;

    if-ne v0, v1, :cond_4

    .line 13
    invoke-virtual {p1, v1}, Lxi;->a(Landroid/view/View;)V

    :cond_4
    return-void
.end method
