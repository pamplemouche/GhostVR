.class abstract Landroid/arch/lifecycle/o;
.super Ljava/lang/Object;


# instance fields
.field final c:Landroid/arch/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field d:Z

.field e:I

.field final synthetic f:Landroid/arch/lifecycle/LiveData;


# virtual methods
.method a(Z)V
    .locals 4

    iget-boolean v0, p0, Landroid/arch/lifecycle/o;->d:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/arch/lifecycle/o;->d:Z

    iget-object p1, p0, Landroid/arch/lifecycle/o;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {p1}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LiveData;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Landroid/arch/lifecycle/o;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LiveData;)I

    move-result v2

    iget-boolean v3, p0, Landroid/arch/lifecycle/o;->d:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    add-int/2addr v2, v0

    invoke-static {v1, v2}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LiveData;I)I

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroid/arch/lifecycle/o;->d:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/arch/lifecycle/o;->f:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->a()V

    :cond_3
    iget-object p1, p0, Landroid/arch/lifecycle/o;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {p1}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LiveData;)I

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Landroid/arch/lifecycle/o;->d:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/arch/lifecycle/o;->f:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->b()V

    :cond_4
    iget-boolean p1, p0, Landroid/arch/lifecycle/o;->d:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/arch/lifecycle/o;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {p1, p0}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/o;)V

    :cond_5
    return-void
.end method

.method abstract a()Z
.end method

.method b()V
    .locals 0

    return-void
.end method
