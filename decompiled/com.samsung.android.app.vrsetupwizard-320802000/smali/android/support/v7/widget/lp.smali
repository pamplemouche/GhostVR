.class Landroid/support/v7/widget/lp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/lo;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/lo;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/lp;->a:Landroid/support/v7/widget/lo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/lp;->a:Landroid/support/v7/widget/lo;

    invoke-virtual {p1}, Landroid/support/v7/widget/lo;->a()V

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/lp;->a:Landroid/support/v7/widget/lo;

    invoke-virtual {p1}, Landroid/support/v7/widget/lo;->a()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
