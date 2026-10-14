.class Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroid/arch/lifecycle/o;

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/LiveData<",
        "TT;>.android/arch/lifecycle/o;",
        "Landroid/arch/lifecycle/GenericLifecycleObserver;"
    }
.end annotation


# instance fields
.field final a:Landroid/arch/lifecycle/j;

.field final synthetic b:Landroid/arch/lifecycle/LiveData;


# virtual methods
.method public a(Landroid/arch/lifecycle/j;Landroid/arch/lifecycle/g;)V
    .locals 0

    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroid/arch/lifecycle/j;

    invoke-interface {p1}, Landroid/arch/lifecycle/j;->a()Landroid/arch/lifecycle/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/f;->a()Landroid/arch/lifecycle/h;

    move-result-object p1

    sget-object p2, Landroid/arch/lifecycle/h;->a:Landroid/arch/lifecycle/h;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->b:Landroid/arch/lifecycle/LiveData;

    iget-object p2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->c:Landroid/arch/lifecycle/q;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/q;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a(Z)V

    return-void
.end method

.method a()Z
    .locals 2

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroid/arch/lifecycle/j;

    invoke-interface {v0}, Landroid/arch/lifecycle/j;->a()Landroid/arch/lifecycle/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/f;->a()Landroid/arch/lifecycle/h;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/h;->d:Landroid/arch/lifecycle/h;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/h;)Z

    move-result v0

    return v0
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->a:Landroid/arch/lifecycle/j;

    invoke-interface {v0}, Landroid/arch/lifecycle/j;->a()Landroid/arch/lifecycle/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/i;)V

    return-void
.end method
