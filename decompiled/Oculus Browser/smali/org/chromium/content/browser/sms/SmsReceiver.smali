.class public Lorg/chromium/content/browser/sms/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final a:J

.field public b:Z

.field public c:Lr01;

.field public d:Lq01;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/content/browser/sms/SmsReceiver;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/chromium/content/browser/sms/SmsReceiver;->b:Z

    .line 3
    iput-wide p1, p0, Lorg/chromium/content/browser/sms/SmsReceiver;->a:J

    .line 4
    new-instance p1, Lq01;

    .line 5
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 6
    invoke-direct {p1, p2}, Lq01;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/chromium/content/browser/sms/SmsReceiver;->d:Lq01;

    .line 7
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lorg/chromium/content/browser/sms/SmsReceiver;->d:Lq01;

    invoke-virtual {p2, p0, p1}, Lq01;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static create(J)Lorg/chromium/content/browser/sms/SmsReceiver;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/content/browser/sms/SmsReceiver;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/sms/SmsReceiver;-><init>(J)V

    return-object v0
.end method

.method private destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/content/browser/sms/SmsReceiver;->b:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/sms/SmsReceiver;->d:Lq01;

    invoke-virtual {v0, p0}, Lq01;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private listen()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/sms/SmsReceiver;->c:Lr01;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lr01;

    iget-object v1, p0, Lorg/chromium/content/browser/sms/SmsReceiver;->d:Lq01;

    .line 3
    new-instance v2, LMr;

    invoke-direct {v2, v1}, LMr;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-direct {v0, v2}, Lr01;-><init>(Lhj;)V

    iput-object v0, p0, Lorg/chromium/content/browser/sms/SmsReceiver;->c:Lr01;

    .line 5
    :goto_0
    iget-object v0, v0, Lr01;->a:Lhj;

    check-cast v0, LMr;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    new-instance v2, LNr;

    invoke-direct {v2}, LNr;-><init>()V

    .line 7
    new-instance v3, Lcv;

    invoke-direct {v3}, Lcv;-><init>()V

    iget-object v4, v0, LDm;->h:LYm;

    iget-object v5, v0, LDm;->g:Ljn;

    if-eqz v4, :cond_1

    .line 8
    new-instance v1, Lmo;

    const/4 v6, 0x1

    invoke-direct {v1, v6, v2, v3, v5}, Lmo;-><init>(ILkn;Lcv;Ljn;)V

    iget-object v2, v4, LYm;->m:Landroid/os/Handler;

    new-instance v3, Lao;

    iget-object v4, v4, LYm;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {v3, v1, v4, v0}, Lao;-><init>(LIn;ILDm;)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    throw v1

    .line 9
    :cond_2
    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lorg/chromium/content/browser/sms/SmsReceiver;->b:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    const-string p1, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->x:I

    if-eqz p1, :cond_4

    const/16 p2, 0xf

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-wide p1, p0, Lorg/chromium/content/browser/sms/SmsReceiver;->a:J

    .line 7
    invoke-static {p1, p2}, LJ/N;->MW3td7Xy(J)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-wide v0, p0, Lorg/chromium/content/browser/sms/SmsReceiver;->a:J

    .line 10
    invoke-static {v0, v1, p1}, LJ/N;->McAbc1cO(JLjava/lang/String;)V

    :catchall_0
    :goto_0
    return-void
.end method
