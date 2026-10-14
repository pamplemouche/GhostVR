.class final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/b;
.super La/c/b/k;

# interfaces
.implements La/c/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/b/k;",
        "La/c/a/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/b;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, La/c/b/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/b;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/b;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/b;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "mContext"

    invoke-static {v0, v2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "initial_app_auto_update"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/t;->b(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
