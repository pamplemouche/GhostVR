.class public Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidInstanceIDListenerService;
.super LWq;
.source "PG"


# static fields
.field public static final B:LZB;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "InstanceIDListener"

    .line 1
    invoke-static {v0}, LgC;->b(Ljava/lang/String;)LgC;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidInstanceIDListenerService;->B:LZB;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LWq;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidInstanceIDListenerService;->B:LZB;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    check-cast v0, LgC;

    const-string v3, "Received token refresh request"

    invoke-virtual {v0, v3, v2}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, LsD;->a(Landroid/content/Context;)LsD;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v3, ""

    .line 3
    invoke-static {v3}, LrD;->a(Ljava/lang/String;)V

    .line 4
    iget-object v3, v0, LsD;->b:Landroid/content/Context;

    const-string v4, "com.google.android.gms"

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, -0x1

    .line 6
    :try_start_0
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const v3, 0x738638

    if-ge v5, v3, :cond_1

    .line 8
    sget-object v0, LsD;->c:LZB;

    new-array v1, v1, [Ljava/lang/Object;

    check-cast v0, LgC;

    const-string v2, "Google Play Services unavailable. Initialization failed."

    invoke-virtual {v0, v2, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance v3, LFq;

    invoke-direct {v3}, LFq;-><init>()V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    .line 10
    iput-wide v4, v3, LFq;->j:J

    iput-wide v6, v3, LFq;->k:J

    const-string v4, "gcm_registration_task_service"

    .line 11
    iput-object v4, v3, LHq;->c:Ljava/lang/String;

    .line 12
    const-class v4, Lcom/google/ipc/invalidation/ticl/android2/channel/GcmRegistrationTaskService;

    .line 13
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LHq;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v3}, LFq;->b()V

    new-instance v4, Lcom/google/android/gms/gcm/OneoffTask;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/gcm/OneoffTask;-><init>(LFq;LOq;)V

    .line 15
    :try_start_1
    iget-object v0, v0, LsD;->a:LAq;

    invoke-virtual {v0, v4}, LAq;->a(Lcom/google/android/gms/gcm/Task;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 16
    sget-object v2, LsD;->c:LZB;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    check-cast v2, LgC;

    const-string v0, "Failed to schedule GCM registration task. Exception: %s"

    invoke-virtual {v2, v0, v3}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 17
    :cond_2
    throw v2
.end method
