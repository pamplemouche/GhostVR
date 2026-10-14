.class Landroid/arch/lifecycle/b;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/arch/lifecycle/g;",
            "Ljava/util/List<",
            "Landroid/arch/lifecycle/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private static a(Ljava/util/List;Landroid/arch/lifecycle/j;Landroid/arch/lifecycle/g;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/arch/lifecycle/c;",
            ">;",
            "Landroid/arch/lifecycle/j;",
            "Landroid/arch/lifecycle/g;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/c;

    invoke-virtual {v1, p1, p2, p3}, Landroid/arch/lifecycle/c;->a(Landroid/arch/lifecycle/j;Landroid/arch/lifecycle/g;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/arch/lifecycle/j;Landroid/arch/lifecycle/g;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/arch/lifecycle/b;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Landroid/arch/lifecycle/b;->a(Ljava/util/List;Landroid/arch/lifecycle/j;Landroid/arch/lifecycle/g;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/arch/lifecycle/b;->a:Ljava/util/Map;

    sget-object v1, Landroid/arch/lifecycle/g;->ON_ANY:Landroid/arch/lifecycle/g;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Landroid/arch/lifecycle/b;->a(Ljava/util/List;Landroid/arch/lifecycle/j;Landroid/arch/lifecycle/g;Ljava/lang/Object;)V

    return-void
.end method
