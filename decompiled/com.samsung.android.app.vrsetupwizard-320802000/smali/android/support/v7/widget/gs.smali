.class Landroid/support/v7/widget/gs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslColorPicker;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/gs;->a:Landroid/support/v7/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/gs;->a:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslColorPicker;->f(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslGradientColorSeekBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->setSelected(Z)V

    return v0

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/gs;->a:Landroid/support/v7/widget/SeslColorPicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslColorPicker;->f(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslGradientColorSeekBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->setSelected(Z)V

    return p2
.end method
