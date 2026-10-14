.class Landroid/support/v7/widget/ht;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ht;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/ht;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->d()V

    iget-object p2, p0, Landroid/support/v7/widget/ht;->a:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->a(Z)V

    :cond_0
    return p1
.end method
