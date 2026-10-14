.class Landroid/support/v7/app/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/z;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/aj;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/cu;)Landroid/support/v4/view/cu;
    .locals 4

    invoke-virtual {p2}, Landroid/support/v4/view/cu;->b()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/aj;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->g(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/view/cu;->a()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v4/view/cu;->c()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/view/cu;->d()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/support/v4/view/cu;->a(IIII)Landroid/support/v4/view/cu;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/be;->a(Landroid/view/View;Landroid/support/v4/view/cu;)Landroid/support/v4/view/cu;

    move-result-object p1

    return-object p1
.end method
