.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/c;
.super Landroid/content/pm/PackageInstaller$SessionCallback;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0

    return-void
.end method

.method public onCreated(I)V
    .locals 0

    return-void
.end method

.method public onFinished(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Install Result : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/b;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->d(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;)Landroid/content/pm/PackageInstaller;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    return-void
.end method

.method public onProgressChanged(IF)V
    .locals 0

    return-void
.end method
