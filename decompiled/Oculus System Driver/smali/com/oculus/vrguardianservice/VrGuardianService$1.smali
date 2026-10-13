.class Lcom/oculus/vrguardianservice/VrGuardianService$1;
.super Lcom/oculus/vrguardianservice/IVrGuardianService$Stub;
.source "VrGuardianService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrguardianservice/VrGuardianService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrguardianservice/VrGuardianService;


# direct methods
.method constructor <init>(Lcom/oculus/vrguardianservice/VrGuardianService;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/oculus/vrguardianservice/VrGuardianService$1;->this$0:Lcom/oculus/vrguardianservice/VrGuardianService;

    invoke-direct {p0}, Lcom/oculus/vrguardianservice/IVrGuardianService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createClient(Landroid/os/IBinder;)Lcom/oculus/vrguardianservice/IVrGuardianClient;
    .locals 6

    .line 258
    const-class v0, Lcom/oculus/vrguardianservice/VrGuardianService;

    monitor-enter v0

    const/4 v1, 0x0

    .line 262
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 265
    iget-object v4, p0, Lcom/oculus/vrguardianservice/VrGuardianService$1;->this$0:Lcom/oculus/vrguardianservice/VrGuardianService;

    invoke-virtual {v4}, Lcom/oculus/vrguardianservice/VrGuardianService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_0

    const-string p1, "VrGuardianService"

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VrGuardianService: createClient: token == null. PackageName: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 273
    :cond_0
    :try_start_2
    invoke-static {v3, v2}, Lcom/oculus/vrguardianservice/VrGuardianService;->access$1500(Ljava/lang/String;I)I

    move-result v2

    .line 277
    new-instance v4, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;

    iget-object v5, p0, Lcom/oculus/vrguardianservice/VrGuardianService$1;->this$0:Lcom/oculus/vrguardianservice/VrGuardianService;

    invoke-direct {v4, v5, v3, v2, p1}, Lcom/oculus/vrguardianservice/VrGuardianService$GuardianClient;-><init>(Lcom/oculus/vrguardianservice/VrGuardianService;Ljava/lang/String;ILandroid/os/IBinder;)V

    const/4 v2, 0x0

    .line 278
    invoke-interface {p1, v4, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    :try_start_3
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "VrGuardianService"

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VrGuardianService: createClient exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    monitor-exit v0

    return-object v1

    .line 287
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
