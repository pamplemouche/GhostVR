.class Landroid/support/v7/widget/jv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ic;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/jv;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/SeslNumberPicker;II)V
    .locals 4

    iget-object p1, p0, Landroid/support/v7/widget/jv;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->g()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/jv;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0xb

    const/16 v0, 0xc

    iget-object v1, p0, Landroid/support/v7/widget/jv;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)C

    move-result v1

    const/16 v2, 0x4b

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-ne p2, p1, :cond_1

    if-eq p3, v0, :cond_2

    :cond_1
    if-ne p2, v0, :cond_4

    if-ne p3, p1, :cond_4

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/jv;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->c(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z

    iget-object p1, p0, Landroid/support/v7/widget/jv;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->c(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/SeslNumberPicker;->a(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/jv;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1, p3}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z

    iget-object p1, p0, Landroid/support/v7/widget/jv;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->c(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Landroid/support/v7/widget/jw;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/jw;-><init>(Landroid/support/v7/widget/jv;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/jv;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->d(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    return-void
.end method
