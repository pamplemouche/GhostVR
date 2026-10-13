.class public Lcom/oculus/horizon/store/StoreCountdownTimer;
.super Ljava/lang/Object;
.source "StoreCountdownTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;
    }
.end annotation


# instance fields
.field private mEndTime:J

.field private mListener:Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLocale:Ljava/util/Locale;

.field private mResources:Landroid/content/res/Resources;

.field private mTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(JLjava/util/Locale;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mEndTime:J

    .line 24
    iput-object p3, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mLocale:Ljava/util/Locale;

    .line 25
    iput-object p4, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mResources:Landroid/content/res/Resources;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/store/StoreCountdownTimer;)Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mListener:Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/store/StoreCountdownTimer;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/store/StoreCountdownTimer;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static getMillisInFormattedString(JLjava/util/Locale;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    .line 67
    const-wide/16 v2, 0x18

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 68
    sget v2, Lcom/oculus/horizon/R$plurals;->store_countdown_days:I

    long-to-int v3, v0

    div-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v10, 0x18

    div-long/2addr v0, v10

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {p2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 68
    invoke-virtual {p3, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    .line 74
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 75
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long v2, v6, v2

    .line 76
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {p2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 84
    :cond_0
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mTimer:Landroid/os/CountDownTimer;

    .line 85
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mListener:Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;

    .line 86
    return-void
.end method

.method public refresh()Z
    .locals 6

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 39
    iget-wide v0, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mEndTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    .line 42
    :cond_0
    new-instance v0, Lcom/oculus/horizon/store/StoreCountdownTimer$1;

    iget-wide v4, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mEndTime:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/store/StoreCountdownTimer$1;-><init>(Lcom/oculus/horizon/store/StoreCountdownTimer;JJ)V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mTimer:Landroid/os/CountDownTimer;

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 61
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setListener(Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreCountdownTimer;->mListener:Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;

    .line 30
    return-void
.end method
