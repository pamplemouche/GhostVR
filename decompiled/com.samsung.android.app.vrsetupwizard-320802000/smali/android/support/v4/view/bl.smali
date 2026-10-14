.class Landroid/support/v4/view/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field final synthetic a:Landroid/support/v4/view/z;

.field final synthetic b:Landroid/support/v4/view/bk;


# direct methods
.method constructor <init>(Landroid/support/v4/view/bk;Landroid/support/v4/view/z;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/bl;->b:Landroid/support/v4/view/bk;

    iput-object p2, p0, Landroid/support/v4/view/bl;->a:Landroid/support/v4/view/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-static {p2}, Landroid/support/v4/view/cu;->a(Ljava/lang/Object;)Landroid/support/v4/view/cu;

    move-result-object p2

    iget-object v0, p0, Landroid/support/v4/view/bl;->a:Landroid/support/v4/view/z;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/z;->a(Landroid/view/View;Landroid/support/v4/view/cu;)Landroid/support/v4/view/cu;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/cu;->a(Landroid/support/v4/view/cu;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    return-object p1
.end method
