.class public final Lcom/google/ipc/invalidation/external/client/contrib/AndroidListener$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const-string v0, "com.google.ipc.invalidation.android_listener.REGISTRATION"

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.ipc.invalidation.android_listener.SCHEDULED_TASK"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {p1, p2}, LiC;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    throw v0

    .line 5
    :cond_3
    throw v0
.end method
