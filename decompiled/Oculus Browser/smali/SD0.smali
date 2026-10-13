.class public LSD0;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static d:Ljava/lang/String;

.field public static e:LSD0;


# instance fields
.field public final a:Z

.field public final b:LRD0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LSD0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZLRD0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-boolean p1, p0, LSD0;->a:Z

    .line 3
    iput-object p2, p0, LSD0;->b:LRD0;

    return-void
.end method

.method public static a(ZLandroid/app/Activity;Landroid/content/Intent;LRD0;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, LSD0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LSD0;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LSD0;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, LSD0;->d:Ljava/lang/String;

    .line 5
    :cond_0
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 6
    sget-object v2, LSD0;->e:LSD0;

    if-eqz v2, :cond_1

    .line 7
    sget-object v2, LSD0;->e:LSD0;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    sget-object v2, LSD0;->e:LSD0;

    .line 9
    iget-object v2, v2, LSD0;->b:LRD0;

    if-eqz v2, :cond_1

    .line 10
    check-cast v2, LTP0;

    const/4 v3, 0x3

    const-string v4, "WebShare.ShareOutcome"

    const/4 v5, 0x2

    .line 11
    invoke-static {v4, v5, v3}, LfV;->a(Ljava/lang/String;II)V

    .line 12
    iget-object v2, v2, LTP0;->a:LUf1;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Lbg1;

    invoke-virtual {v2, v3}, Lbg1;->a(Ljava/lang/Object;)V

    .line 13
    :cond_1
    new-instance v2, LSD0;

    invoke-direct {v2, p0, p3}, LSD0;-><init>(ZLRD0;)V

    sput-object v2, LSD0;->e:LSD0;

    .line 14
    new-instance p0, Landroid/content/IntentFilter;

    sget-object p3, LSD0;->d:Ljava/lang/String;

    invoke-direct {p0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    new-instance p0, Landroid/content/Intent;

    sget-object p3, LSD0;->d:Ljava/lang/String;

    invoke-direct {p0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    sget-object p3, LSD0;->e:LSD0;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const-string v0, "receiver_token"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "source_package_name"

    .line 19
    invoke-virtual {p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p3, 0x0

    const/high16 p4, 0x50000000

    .line 20
    invoke-static {p1, p3, p0, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const p3, 0x7f130576

    .line 21
    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 22
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    .line 23
    invoke-static {p2, p3, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    sget-object p1, LSD0;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    sget-object v0, LSD0;->e:LSD0;

    if-eq v0, p0, :cond_0

    monitor-exit p1

    return-void

    .line 3
    :cond_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 4
    sget-object v1, LSD0;->e:LSD0;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 5
    sput-object v0, LSD0;->e:LSD0;

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "receiver_token"

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const-string v0, "receiver_token"

    .line 8
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.extra.CHOSEN_COMPONENT"

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const-string v1, "source_package_name"

    .line 10
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    iget-object v1, p0, LSD0;->b:LRD0;

    if-eqz v1, :cond_2

    .line 12
    check-cast v1, LTP0;

    const/4 v2, 0x3

    const-string v3, "WebShare.ShareOutcome"

    .line 13
    invoke-static {v3, p1, v2}, LfV;->a(Ljava/lang/String;II)V

    .line 14
    iget-object v1, v1, LTP0;->a:LUf1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v1, Lbg1;

    invoke-virtual {v1, p1}, Lbg1;->a(Ljava/lang/Object;)V

    .line 15
    :cond_2
    iget-boolean p1, p0, LSD0;->a:Z

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 16
    invoke-static {v0, p2}, LTD0;->a(Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p2

    .line 17
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
