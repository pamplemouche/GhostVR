.class Landroid/arch/lifecycle/m;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/arch/lifecycle/h;

.field b:Landroid/arch/lifecycle/GenericLifecycleObserver;


# virtual methods
.method a(Landroid/arch/lifecycle/j;Landroid/arch/lifecycle/g;)V
    .locals 2

    invoke-static {p2}, Landroid/arch/lifecycle/k;->b(Landroid/arch/lifecycle/g;)Landroid/arch/lifecycle/h;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/h;

    invoke-static {v1, v0}, Landroid/arch/lifecycle/k;->a(Landroid/arch/lifecycle/h;Landroid/arch/lifecycle/h;)Landroid/arch/lifecycle/h;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/h;

    iget-object v1, p0, Landroid/arch/lifecycle/m;->b:Landroid/arch/lifecycle/GenericLifecycleObserver;

    invoke-interface {v1, p1, p2}, Landroid/arch/lifecycle/GenericLifecycleObserver;->a(Landroid/arch/lifecycle/j;Landroid/arch/lifecycle/g;)V

    iput-object v0, p0, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/h;

    return-void
.end method
