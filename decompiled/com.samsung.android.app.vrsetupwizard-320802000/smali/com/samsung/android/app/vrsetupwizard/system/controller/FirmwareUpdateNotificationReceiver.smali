.class public Lcom/samsung/android/app/vrsetupwizard/system/controller/FirmwareUpdateNotificationReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "[FirmwareUpdateNotificationReceiver]onReceive()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/FirmwareUpdateNotificationReceiver;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/FirmwareUpdateNotificationReceiver;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->s(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/FirmwareUpdateNotificationReceiver;->a:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ControllerDetailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "deviceAddress"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "deviceVersion"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "updateVersion"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "checkUpdate"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "batteryValue"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/FirmwareUpdateNotificationReceiver;->a:Landroid/content/Context;

    const/high16 v1, 0x8000000

    invoke-static {p2, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/FirmwareUpdateNotificationReceiver;->a:Landroid/content/Context;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/FirmwareUpdateNotificationReceiver;->a:Landroid/content/Context;

    invoke-direct {v2, p2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/FirmwareUpdateNotificationReceiver;->a:Landroid/content/Context;

    const v0, 0x7f0f0045

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ZIZI)Landroid/app/Notification;

    move-result-object p2

    const/16 v0, 0x14

    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
