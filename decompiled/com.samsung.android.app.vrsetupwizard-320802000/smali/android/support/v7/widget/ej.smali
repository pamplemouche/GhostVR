.class public abstract Landroid/support/v7/widget/ej;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/ft;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/ek;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/widget/ek;

    invoke-direct {v0}, Landroid/support/v7/widget/ek;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ej;->a:Landroid/support/v7/widget/ek;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ej;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ej;->a:Landroid/support/v7/widget/ek;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ek;->c(II)V

    return-void
.end method

.method public final a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ej;->a:Landroid/support/v7/widget/ek;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ek;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ej;->a:Landroid/support/v7/widget/ek;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v7/widget/ek;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/widget/el;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ej;->a:Landroid/support/v7/widget/ek;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ek;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/ft;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/ft;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public a(Landroid/support/v7/widget/ft;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ej;->a(Landroid/support/v7/widget/ft;I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ej;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/widget/ej;->b:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ft;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final b(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ej;->a:Landroid/support/v7/widget/ek;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ek;->a(II)V

    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/support/v7/widget/el;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ej;->a:Landroid/support/v7/widget/ek;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ek;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/support/v7/widget/ft;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    iput p2, p1, Landroid/support/v7/widget/ft;->f:I

    invoke-virtual {p0}, Landroid/support/v7/widget/ej;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ej;->a(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/ft;->h:J

    :cond_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/ft;->a(II)V

    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/os/o;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/ft;->y()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/ej;->a(Landroid/support/v7/widget/ft;ILjava/util/List;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/ft;->x()V

    iget-object p1, p1, Landroid/support/v7/widget/ft;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/support/v7/widget/ey;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/support/v7/widget/ey;

    iput-boolean v1, p1, Landroid/support/v7/widget/ey;->e:Z

    :cond_1
    invoke-static {}, Landroid/support/v4/os/o;->a()V

    return-void
.end method

.method public b(Landroid/support/v7/widget/ft;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final c(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ft;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    :try_start_0
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/support/v4/os/o;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ej;->b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ft;

    move-result-object p1

    iget-object v0, p1, Landroid/support/v7/widget/ft;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iput p2, p1, Landroid/support/v7/widget/ft;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/support/v4/os/o;->a()V

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/support/v4/os/o;->a()V

    throw p1
.end method

.method public final c(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ej;->a:Landroid/support/v7/widget/ek;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ek;->b(II)V

    return-void
.end method

.method public c(Landroid/support/v7/widget/ft;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public final d(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ej;->a:Landroid/support/v7/widget/ek;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/ek;->a(II)V

    return-void
.end method

.method public d(Landroid/support/v7/widget/ft;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/ej;->b:Z

    return v0
.end method

.method public final e(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ej;->a:Landroid/support/v7/widget/ek;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/ek;->b(II)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ej;->a:Landroid/support/v7/widget/ek;

    invoke-virtual {v0}, Landroid/support/v7/widget/ek;->a()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ej;->a:Landroid/support/v7/widget/ek;

    invoke-virtual {v0}, Landroid/support/v7/widget/ek;->b()V

    return-void
.end method
