.class public LZR0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LaS0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 2

    .line 10
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 11
    new-instance v0, Landroid/content/Intent;

    const-class v1, LMR0;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "_background_task_id"

    .line 12
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 13
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const-string v0, "alarm"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 15
    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(Landroid/content/Context;LOS0;)Z
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const-string v0, "alarm"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3
    iget v1, p2, LOS0;->a:I

    .line 4
    new-instance v2, Landroid/content/Intent;

    const-class v3, LMR0;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "_background_task_id"

    .line 5
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 6
    invoke-static {p1, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 7
    new-instance v1, LYR0;

    invoke-direct {v1, v0, p1}, LYR0;-><init>(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    .line 8
    iget-object p1, p2, LOS0;->g:LMS0;

    .line 9
    invoke-interface {p1, v1}, LMS0;->a(LNS0;)V

    const/4 p1, 0x1

    return p1
.end method
