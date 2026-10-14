.class final Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/q;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/q;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    sget v1, Lcom/samsung/android/app/vrsetupwizard/b;->eula_agree_msg:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "eula_agree_msg"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/q;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;

    iget-object v1, v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->f(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/q;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    sget v1, Lcom/samsung/android/app/vrsetupwizard/b;->hs_agree_msg:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "hs_agree_msg"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/q;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;

    iget-object v1, v1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->h(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/q;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/p;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->j(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Landroid/support/v7/app/az;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/az;->dismiss()V

    return-void
.end method
