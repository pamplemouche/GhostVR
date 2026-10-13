.class public LgZ;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/Runnable;

.field public c:Landroid/content/Intent;

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LgZ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LgZ;->a:Landroid/os/Handler;

    .line 3
    new-instance v0, LfZ;

    invoke-direct {v0, p0}, LfZ;-><init>(LgZ;)V

    iput-object v0, p0, LgZ;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, LgZ;->a:Landroid/os/Handler;

    iget-object v1, p0, LgZ;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    .line 2
    iget-boolean p1, p0, LgZ;->d:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, LgZ;->d:Z

    :goto_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, LgZ;->c:Landroid/content/Intent;

    return-void

    .line 7
    :cond_1
    iput-object p1, p0, LgZ;->c:Landroid/content/Intent;

    .line 8
    iget-boolean p1, p0, LgZ;->d:Z

    if-eqz p1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, LgZ;->d:Z

    .line 13
    :goto_1
    iget-object p1, p0, LgZ;->a:Landroid/os/Handler;

    iget-object v0, p0, LgZ;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, LgZ;->c:Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, LgZ;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
