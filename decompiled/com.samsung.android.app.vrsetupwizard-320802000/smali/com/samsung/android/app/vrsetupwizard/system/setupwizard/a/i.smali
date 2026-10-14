.class Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/i;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->e()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->e()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V

    :cond_0
    return-void
.end method
