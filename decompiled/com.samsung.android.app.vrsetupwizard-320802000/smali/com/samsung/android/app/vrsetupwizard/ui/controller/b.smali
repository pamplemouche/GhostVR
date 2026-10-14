.class Lcom/samsung/android/app/vrsetupwizard/ui/controller/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/b;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "531"

    const-string v0, "0016"

    invoke-static {p2, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a()Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/b;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/b;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;

    invoke-virtual {p2}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;->finish()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
