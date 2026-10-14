.class Lcom/samsung/android/app/vrsetupwizard/system/controller/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/controller/m;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;Lcom/samsung/android/app/vrsetupwizard/system/controller/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

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

    const-string v0, "status"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "FirmwareUpdateStatusHandler status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b:I

    const/4 v3, 0x6

    if-eq v0, v2, :cond_2

    sget v2, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->c:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    sget v2, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->d:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->e(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    iget-object v2, v2, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "checkUpdate"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "deviceAddress"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "deviceVersion"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "updateVersion"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "batteryValueInt"

    invoke-virtual {p2, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "deviceAddress"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "checkUpdate"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "deviceVersion"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "updateVersion"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "batteryValue"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "FirmwareUpdateStatusHandler deviceAddress : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "FirmwareUpdateStatusHandler checkUpdate : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FirmwareUpdateStatusHandler deviceVersion : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FirmwareUpdateStatusHandler updateVersion : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FirmwareUpdateStatusHandler batteryValue : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->c(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;

    invoke-interface {v0, v3, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    :goto_2
    sget v2, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b:I

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v2, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;Z)Z

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->e(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    iget-object v4, v4, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v2, "progress"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "progress"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->c(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;->a(ILandroid/os/Bundle;)V

    goto :goto_3

    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;

    invoke-interface {v0, v3, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;->a(ILandroid/os/Bundle;)V

    goto :goto_4

    :cond_5
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
