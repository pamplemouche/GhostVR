.class Lcom/samsung/a/a/a/a/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/samsung/a/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/samsung/a/a/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/e;->a:Lcom/samsung/a/a/a/a/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "DID"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/a/a/a/a/e;->a:Lcom/samsung/a/a/a/a/b;

    invoke-static {p1}, Lcom/samsung/a/a/a/a/b;->c(Lcom/samsung/a/a/a/a/b;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "Get CF id empty"

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const-string v0, "Get CF id"

    :goto_0
    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/a/a/a/a/e;->a:Lcom/samsung/a/a/a/a/b;

    invoke-static {v0, p1, p2}, Lcom/samsung/a/a/a/a/b;->a(Lcom/samsung/a/a/a/a/b;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/a/a/a/a/e;->a:Lcom/samsung/a/a/a/a/b;

    invoke-static {p1}, Lcom/samsung/a/a/a/a/b;->a(Lcom/samsung/a/a/a/a/b;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
