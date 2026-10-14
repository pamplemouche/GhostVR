.class Landroid/support/v7/widget/jw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/jv;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/jv;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/jw;->a:Landroid/support/v7/widget/jv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/jw;->a:Landroid/support/v7/widget/jv;

    iget-object v0, v0, Landroid/support/v7/widget/jv;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->b(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;Z)Z

    iget-object v0, p0, Landroid/support/v7/widget/jw;->a:Landroid/support/v7/widget/jv;

    iget-object v0, v0, Landroid/support/v7/widget/jv;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->c(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/jw;->a:Landroid/support/v7/widget/jv;

    iget-object v0, v0, Landroid/support/v7/widget/jv;->a:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->c(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->setEnabled(Z)V

    :cond_0
    return-void
.end method
