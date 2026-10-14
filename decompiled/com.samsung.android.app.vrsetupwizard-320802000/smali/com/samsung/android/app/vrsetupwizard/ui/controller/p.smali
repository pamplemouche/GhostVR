.class Lcom/samsung/android/app/vrsetupwizard/ui/controller/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/p;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.PACKAGE_NAME"

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/p;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/p;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerPairNewActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
