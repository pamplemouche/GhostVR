.class Lcom/samsung/android/app/vrsetupwizard/ui/launcher/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/a/b;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/h;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/h;->a:Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/i;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/i;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/h;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
