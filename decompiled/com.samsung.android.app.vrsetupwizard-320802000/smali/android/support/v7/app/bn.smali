.class Landroid/support/v7/app/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ct;


# instance fields
.field final synthetic a:Landroid/support/v7/app/bk;


# direct methods
.method constructor <init>(Landroid/support/v7/app/bk;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/bn;->a:Landroid/support/v7/app/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/app/bn;->a:Landroid/support/v7/app/bk;

    iget-object p1, p1, Landroid/support/v7/app/bk;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
