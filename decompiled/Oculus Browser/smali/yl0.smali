.class public Lyl0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lzl0;

.field public c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lzl0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lyl0;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lyl0;->b:Lzl0;

    return-void
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 4

    .line 1
    new-instance p1, Lxl0;

    const v0, 0x7f130413

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Lxl0;-><init>(Ljava/lang/Integer;)V

    .line 2
    :try_start_0
    new-instance v0, Lvl0;

    invoke-direct {v0, p0}, Lvl0;-><init>(Lyl0;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxl0;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    nop

    .line 4
    :goto_0
    iget-object v0, p1, Lxl0;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "MobileBeamInvalidAppState"

    .line 6
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 7
    new-instance v0, Lwl0;

    invoke-direct {v0, p0, p1}, Lwl0;-><init>(Lyl0;I)V

    .line 8
    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-object v1

    :cond_0
    const-string v0, "MobileBeamCallbackSuccess"

    .line 9
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 10
    iput-object v1, p0, Lyl0;->c:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/nfc/NdefRecord;

    const/4 v2, 0x0

    iget-object p1, p1, Lxl0;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/nfc/NdefRecord;->createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lyl0;->c:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iget-object v0, p0, Lyl0;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lyl0;->c:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
