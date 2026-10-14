.class Lcom/samsung/android/app/vrsetupwizard/ui/launcher/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/l;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/m;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/m;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/m;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/m;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/m;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/m;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
