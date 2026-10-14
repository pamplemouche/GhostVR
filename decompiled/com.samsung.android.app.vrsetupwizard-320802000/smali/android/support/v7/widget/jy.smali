.class Landroid/support/v7/widget/jy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ic;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/jy;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/SeslNumberPicker;II)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/jy;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->c(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/jy;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->c(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/jy;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->e(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/jy;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1, v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/jy;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->f(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/jy;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->f(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result p1

    if-nez p1, :cond_4

    if-ne p3, p2, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/jy;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z

    iget-object p1, p0, Landroid/support/v7/widget/jy;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->g(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    iget-object p1, p0, Landroid/support/v7/widget/jy;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->d(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    iget-object p1, p0, Landroid/support/v7/widget/jy;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->h(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    :goto_1
    return-void
.end method
