.class Landroid/support/v7/widget/co;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/cn;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/cn;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/co;->a:Landroid/support/v7/widget/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/co;->a:Landroid/support/v7/widget/cn;

    iget-object v0, v0, Landroid/support/v7/widget/cn;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method
