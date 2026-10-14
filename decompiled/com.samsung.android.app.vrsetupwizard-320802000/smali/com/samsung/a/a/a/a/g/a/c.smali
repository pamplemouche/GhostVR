.class Lcom/samsung/a/a/a/a/g/a/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/samsung/a/a/a/a/g/a/a;


# direct methods
.method constructor <init>(Lcom/samsung/a/a/a/a/g/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/a/c;->a:Lcom/samsung/a/a/a/a/g/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/a/c;->a:Lcom/samsung/a/a/a/a/g/a/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/a/a/a/a/g/a/a;->b(Lcom/samsung/a/a/a/a/g/a/a;Z)Z

    const-string p1, "dlc register reply fail"

    const-string v0, "DLC Sender"

    if-nez p2, :cond_0

    invoke-static {v0, p1}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz v1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/a/c;->a:Lcom/samsung/a/a/a/a/g/a/a;

    invoke-static {p1}, Lcom/samsung/a/a/a/a/g/a/a;->d(Lcom/samsung/a/a/a/a/g/a/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "EXTRA_STR"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "EXTRA_RESULT_CODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register DLC result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register DLC result fail:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "EXTRA_STR_ACTION"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/a/a/a/a/g/a/c;->a:Lcom/samsung/a/a/a/a/g/a/a;

    invoke-static {p2, p1}, Lcom/samsung/a/a/a/a/g/a/a;->a(Lcom/samsung/a/a/a/a/g/a/a;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-static {v0, p1}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
