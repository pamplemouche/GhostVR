.class Landroid/support/v7/widget/ka;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ka;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/ka;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->i(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)V

    iget-object p2, p0, Landroid/support/v7/widget/ka;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->c(Z)V

    :cond_0
    return p1
.end method
