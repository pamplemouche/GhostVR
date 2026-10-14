.class final Lcom/samsung/a/a/a/a/e/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Lcom/samsung/a/a/a/c;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/samsung/a/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/e/e;->a:Landroid/app/Application;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/e/e;->b:Lcom/samsung/a/a/a/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/a/a/a/a/j/a;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/a/a/a/a/e/e;->a:Landroid/app/Application;

    iget-object p2, p0, Lcom/samsung/a/a/a/a/e/e;->b:Lcom/samsung/a/a/a/c;

    invoke-static {p1, p2}, Lcom/samsung/a/a/a/j;->a(Landroid/app/Application;Lcom/samsung/a/a/a/c;)V

    return-void
.end method
