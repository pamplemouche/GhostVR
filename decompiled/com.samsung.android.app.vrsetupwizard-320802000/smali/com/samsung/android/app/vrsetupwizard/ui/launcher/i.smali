.class Lcom/samsung/android/app/vrsetupwizard/ui/launcher/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/h;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/h;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/i;->b:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/h;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/i;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/i;->b:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/h;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/h;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/i;->b:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/h;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/h;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
