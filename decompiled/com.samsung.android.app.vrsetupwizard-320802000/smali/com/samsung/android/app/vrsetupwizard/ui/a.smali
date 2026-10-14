.class final Lcom/samsung/android/app/vrsetupwizard/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/a;->a:Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/a;->a:Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/VRSetupWizard;->finishAndRemoveTask()V

    return-void
.end method
