.class final Landroid/support/v7/app/ae;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ac;

.field private b:Landroid/support/v7/app/bi;

.field private c:Z

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ac;Landroid/support/v7/app/bi;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/ae;->a:Landroid/support/v7/app/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/ae;->b:Landroid/support/v7/app/bi;

    invoke-virtual {p2}, Landroid/support/v7/app/bi;->a()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/app/ae;->c:Z

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/ae;->b:Landroid/support/v7/app/bi;

    invoke-virtual {v0}, Landroid/support/v7/app/bi;->a()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/app/ae;->c:Z

    iget-boolean v0, p0, Landroid/support/v7/app/ae;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/ae;->b:Landroid/support/v7/app/bi;

    invoke-virtual {v0}, Landroid/support/v7/app/bi;->a()Z

    move-result v0

    iget-boolean v1, p0, Landroid/support/v7/app/ae;->c:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v7/app/ae;->c:Z

    iget-object v0, p0, Landroid/support/v7/app/ae;->a:Landroid/support/v7/app/ac;

    invoke-virtual {v0}, Landroid/support/v7/app/ac;->i()Z

    :cond_0
    return-void
.end method

.method final c()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/app/ae;->d()V

    iget-object v0, p0, Landroid/support/v7/app/ae;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/app/af;

    invoke-direct {v0, p0}, Landroid/support/v7/app/af;-><init>(Landroid/support/v7/app/ae;)V

    iput-object v0, p0, Landroid/support/v7/app/ae;->d:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ae;->e:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/ae;->e:Landroid/content/IntentFilter;

    iget-object v0, p0, Landroid/support/v7/app/ae;->e:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/app/ae;->e:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/app/ae;->e:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ae;->a:Landroid/support/v7/app/ac;

    iget-object v0, v0, Landroid/support/v7/app/ac;->a:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/ae;->d:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/support/v7/app/ae;->e:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method final d()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/ae;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ae;->a:Landroid/support/v7/app/ac;

    iget-object v0, v0, Landroid/support/v7/app/ac;->a:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/ae;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/ae;->d:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
