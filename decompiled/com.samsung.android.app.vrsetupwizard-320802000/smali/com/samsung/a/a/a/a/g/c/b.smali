.class Lcom/samsung/a/a/a/a/g/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/samsung/a/a/a/a/a;

.field final synthetic b:Lcom/samsung/a/a/a/a/g/c/a;


# direct methods
.method constructor <init>(Lcom/samsung/a/a/a/a/g/c/a;Lcom/samsung/a/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/c/b;->b:Lcom/samsung/a/a/a/a/g/c/a;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/g/c/b;->a:Lcom/samsung/a/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/c/b;->b:Lcom/samsung/a/a/a/a/g/c/a;

    invoke-static {p2}, Lcom/sec/android/diagmonagent/a/b;->a(Landroid/os/IBinder;)Lcom/sec/android/diagmonagent/a/a;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/a/a/a/a/g/c/a;->a(Lcom/samsung/a/a/a/a/g/c/a;Lcom/sec/android/diagmonagent/a/a;)Lcom/sec/android/diagmonagent/a/a;

    iget-object p2, p0, Lcom/samsung/a/a/a/a/g/c/b;->b:Lcom/samsung/a/a/a/a/g/c/a;

    invoke-static {p2}, Lcom/samsung/a/a/a/a/g/c/a;->a(Lcom/samsung/a/a/a/a/g/c/a;)Lcom/sec/android/diagmonagent/a/a;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/diagmonagent/a/a;->a()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "DMABinder"

    if-nez p2, :cond_0

    :try_start_1
    iget-object p2, p0, Lcom/samsung/a/a/a/a/g/c/b;->b:Lcom/samsung/a/a/a/a/g/c/a;

    invoke-virtual {p2}, Lcom/samsung/a/a/a/a/g/c/a;->c()V

    iget-object p2, p0, Lcom/samsung/a/a/a/a/g/c/b;->b:Lcom/samsung/a/a/a/a/g/c/a;

    invoke-static {p2, p1}, Lcom/samsung/a/a/a/a/g/c/a;->a(Lcom/samsung/a/a/a/a/g/c/a;Z)Z

    const-string p2, "Token failed"

    :goto_0
    invoke-static {v0, p2}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/a/a/a/a/g/c/b;->b:Lcom/samsung/a/a/a/a/g/c/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/a/a/a/a/g/c/a;->a(Lcom/samsung/a/a/a/a/g/c/a;Z)Z

    iget-object v1, p0, Lcom/samsung/a/a/a/a/g/c/b;->a:Lcom/samsung/a/a/a/a/a;

    invoke-interface {v1, p2}, Lcom/samsung/a/a/a/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "DMA connected"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/c/b;->b:Lcom/samsung/a/a/a/a/g/c/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/g/c/a;->c()V

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/c/b;->b:Lcom/samsung/a/a/a/a/g/c/a;

    invoke-static {v0, p1}, Lcom/samsung/a/a/a/a/g/c/a;->a(Lcom/samsung/a/a/a/a/g/c/a;Z)Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/c/b;->b:Lcom/samsung/a/a/a/a/g/c/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/a/a/a/a/g/c/a;->a(Lcom/samsung/a/a/a/a/g/c/a;Lcom/sec/android/diagmonagent/a/a;)Lcom/sec/android/diagmonagent/a/a;

    return-void
.end method
