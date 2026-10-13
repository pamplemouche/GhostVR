.class public Lea0;
.super LH10;
.source "PG"


# instance fields
.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LH10;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 22

    const-wide/16 v4, 0x12c

    const-wide/16 v12, 0x258

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x12c

    .line 1
    invoke-static/range {v6 .. v13}, Lorg/chromium/chrome/browser/download/service/DownloadTaskScheduler;->scheduleTask(IZZIJJ)V

    const-wide/32 v18, 0xa8c0

    const-wide/32 v20, 0x15180

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 2
    invoke-static/range {v14 .. v21}, Lorg/chromium/chrome/browser/download/service/DownloadTaskScheduler;->scheduleTask(IZZIJJ)V

    const-wide/32 v6, 0x15180

    const/4 v0, 0x2

    .line 3
    invoke-static/range {v0 .. v7}, Lorg/chromium/chrome/browser/download/service/DownloadTaskScheduler;->scheduleTask(IZZIJJ)V

    return-void
.end method

.method public b(Landroid/content/Context;LRS0;LKR0;)I
    .locals 1

    .line 1
    iget-object p1, p2, LRS0;->b:Landroid/os/Bundle;

    const-string p3, "extra_battery_requires_charging"

    .line 2
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 3
    iget-object p3, p2, LRS0;->b:Landroid/os/Bundle;

    const-string v0, "extra_optimal_battery_percentage"

    .line 4
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 5
    iget-object p2, p2, LRS0;->b:Landroid/os/Bundle;

    const-string v0, "extra_task_type"

    .line 6
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lea0;->e:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->h()Z

    move-result p2

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->g()Z

    move-result p2

    :goto_0
    iput-boolean p2, p0, Lea0;->f:Z

    if-nez p1, :cond_1

    .line 9
    invoke-static {}, Lorg/chromium/components/download/internal/BatteryStatusListenerAndroid;->getBatteryPercentage()I

    move-result p1

    if-ge p1, p3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroid/content/Context;LRS0;LKR0;)V
    .locals 2

    .line 8
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/ProfileKey;->a()Lorg/chromium/chrome/browser/profiles/ProfileKey;

    move-result-object p1

    .line 9
    iget-wide v0, p1, Lorg/chromium/chrome/browser/profiles/ProfileKey;->a:J

    .line 10
    invoke-static {v0, v1, p1}, LJ/N;->MxX9WirW(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Lorg/chromium/chrome/browser/profiles/ProfileKey;

    .line 12
    iget p2, p0, Lea0;->e:I

    new-instance v0, Lda0;

    invoke-direct {v0, p3}, Lda0;-><init>(LKR0;)V

    .line 13
    invoke-static {p0, p1, p2, v0}, LJ/N;->MBBY92FO(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lea0;->f:Z

    return v0
.end method

.method public c(Landroid/content/Context;LRS0;)Z
    .locals 2

    .line 1
    iget-object p1, p2, LRS0;->b:Landroid/os/Bundle;

    const-string p2, "extra_task_type"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/ProfileKey;->a()Lorg/chromium/chrome/browser/profiles/ProfileKey;

    move-result-object p2

    .line 4
    iget-wide v0, p2, Lorg/chromium/chrome/browser/profiles/ProfileKey;->a:J

    .line 5
    invoke-static {v0, v1, p2}, LJ/N;->MxX9WirW(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    check-cast p2, Lorg/chromium/chrome/browser/profiles/ProfileKey;

    .line 7
    invoke-static {p0, p2, p1}, LJ/N;->MtXApQ3N(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method
