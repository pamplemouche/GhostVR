.class final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/e;
.super La/c/b/k;

# interfaces
.implements La/c/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/b/k;",
        "La/c/a/a<",
        "Landroid/app/NotificationManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/e;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, La/c/b/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/e;->b()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/app/NotificationManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/e;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0

    :cond_0
    new-instance v0, La/i;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, La/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method
