.class final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/d;
.super La/c/b/k;

# interfaces
.implements La/c/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/b/k;",
        "La/c/a/a<",
        "Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/d;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, La/c/b/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/d;->b()Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/d;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
