.class Landroid/support/v7/widget/bw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/support/v7/widget/bv;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bv;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bw;->b:Landroid/support/v7/widget/bv;

    iput-object p2, p0, Landroid/support/v7/widget/bw;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/bw;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/cg;

    iget-object v2, p0, Landroid/support/v7/widget/bw;->b:Landroid/support/v7/widget/bv;

    iget-object v3, v1, Landroid/support/v7/widget/cg;->a:Landroid/support/v7/widget/ft;

    iget v4, v1, Landroid/support/v7/widget/cg;->b:I

    iget v5, v1, Landroid/support/v7/widget/cg;->c:I

    iget v6, v1, Landroid/support/v7/widget/cg;->d:I

    iget v7, v1, Landroid/support/v7/widget/cg;->e:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/bv;->b(Landroid/support/v7/widget/ft;IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bw;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/bw;->b:Landroid/support/v7/widget/bv;

    iget-object v0, v0, Landroid/support/v7/widget/bv;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/bw;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
