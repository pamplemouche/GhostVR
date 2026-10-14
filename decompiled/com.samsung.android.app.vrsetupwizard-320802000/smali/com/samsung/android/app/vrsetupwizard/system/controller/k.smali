.class Lcom/samsung/android/app/vrsetupwizard/system/controller/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/controller/m;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;Lcom/samsung/android/app/vrsetupwizard/system/controller/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/k;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-class p1, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    monitor-enter p1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "synchronized +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const-string v0, "connection_state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "connection_state"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "FirmwareConnectionStatusInfoHandler connection_state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v2, p2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;Z)Z

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->c(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->d(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;

    const/4 v3, 0x6

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mFirmwareConnecting = false"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/k;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {p2, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;Z)Z

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "synchronized -"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
