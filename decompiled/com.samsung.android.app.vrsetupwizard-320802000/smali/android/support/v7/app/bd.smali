.class Landroid/support/v7/app/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/lb;


# instance fields
.field final synthetic a:Landroid/support/v7/app/bb;


# direct methods
.method constructor <init>(Landroid/support/v7/app/bb;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/bd;->a:Landroid/support/v7/app/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/bd;->a:Landroid/support/v7/app/bb;

    iget-object v0, v0, Landroid/support/v7/app/bb;->c:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
