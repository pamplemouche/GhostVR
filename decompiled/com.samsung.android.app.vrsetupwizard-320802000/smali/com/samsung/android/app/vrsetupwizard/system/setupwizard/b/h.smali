.class final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Lb/al;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/h;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/am;)Lb/bc;
    .locals 4

    invoke-interface {p1}, Lb/am;->a()Lb/ax;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/h;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/app/vrsetupwizard/common/b/e;->a:Lcom/samsung/android/app/vrsetupwizard/common/b/e;

    invoke-virtual {v3}, Lcom/samsung/android/app/vrsetupwizard/common/b/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/h;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;

    invoke-static {v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " User Agent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/ax;->e()Lb/ay;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-virtual {v2, v3, v1}, Lb/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    move-result-object v1

    invoke-virtual {v0}, Lb/ax;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lb/ax;->d()Lb/az;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lb/ay;->a(Ljava/lang/String;Lb/az;)Lb/ay;

    move-result-object v0

    invoke-virtual {v0}, Lb/ay;->a()Lb/ax;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/am;->a(Lb/ax;)Lb/bc;

    move-result-object p1

    return-object p1
.end method
