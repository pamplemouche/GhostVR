.class Landroid/support/v7/widget/kc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/kc;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/kc;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->j(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslTimePickerSpinner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    return v0

    :cond_1
    const/16 p3, 0x17

    if-eq p2, p3, :cond_6

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_5

    const/16 p3, 0x42

    if-eq p2, p3, :cond_2

    return v0

    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/kc;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->h()Z

    move-result p2

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getImeOptions()I

    move-result p3

    const/4 v2, 0x5

    and-int/2addr p3, v2

    if-ne p3, v2, :cond_4

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p2

    iget-object p3, p0, Landroid/support/v7/widget/kc;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    iget-object p3, p3, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    const/4 v0, 0x2

    invoke-virtual {p2, p3, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/widget/EditText;->getImeOptions()I

    move-result p1

    const/4 p2, 0x6

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Landroid/support/v7/widget/kc;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    iget-object p1, p0, Landroid/support/v7/widget/kc;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->c(Z)V

    :cond_5
    :goto_0
    return v1

    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/kc;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->a:Landroid/support/v7/widget/SeslTimePicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method
