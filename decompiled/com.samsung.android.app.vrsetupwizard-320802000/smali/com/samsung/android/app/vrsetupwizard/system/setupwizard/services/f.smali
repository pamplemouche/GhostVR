.class final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/f;
.super La/c/b/k;

# interfaces
.implements La/c/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/b/k;",
        "La/c/a/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, La/c/b/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/f;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/services/UpdateJobService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->o(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
