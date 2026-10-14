.class final Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/v;
.super La/c/b/k;

# interfaces
.implements La/c/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/b/k;",
        "La/c/a/a<",
        "Landroid/support/v7/app/az;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/v;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, La/c/b/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/v;->b()Landroid/support/v7/app/az;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/support/v7/app/az;
    .locals 3

    new-instance v0, Landroid/support/v7/app/az;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/v;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/az;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/v;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/az;->a(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/az;->setCancelable(Z)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/az;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method
