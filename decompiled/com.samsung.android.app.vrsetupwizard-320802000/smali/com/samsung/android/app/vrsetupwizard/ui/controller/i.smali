.class Lcom/samsung/android/app/vrsetupwizard/ui/controller/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/i;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/i;->a:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerFotaActivity;->k()V

    return-void
.end method
