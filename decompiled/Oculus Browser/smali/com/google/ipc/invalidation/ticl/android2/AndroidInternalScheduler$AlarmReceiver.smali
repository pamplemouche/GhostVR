.class public final Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# static fields
.field public static final a:LZB;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AlarmReceiver"

    .line 1
    invoke-static {v0}, LgC;->b(Ljava/lang/String;)LgC;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler$AlarmReceiver;->a:LZB;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance v0, LhD;

    invoke-direct {v0, p1}, LhD;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v0, v0, LhD;->a:LgD;

    .line 3
    iget-object v0, v0, LgD;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object p2, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler$AlarmReceiver;->a:LZB;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    check-cast p2, LgC;

    const-string p1, "Unable to handle alarm: %s"

    invoke-virtual {p2, p1, v0}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
