.class Lcom/oculus/vrruntimeservice/VrRuntimeService$1;
.super Lcom/oculus/vrruntimeservice/IVrRuntimeService$Stub;
.source "VrRuntimeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrruntimeservice/VrRuntimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrruntimeservice/VrRuntimeService;


# direct methods
.method constructor <init>(Lcom/oculus/vrruntimeservice/VrRuntimeService;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$1;->this$0:Lcom/oculus/vrruntimeservice/VrRuntimeService;

    invoke-direct {p0}, Lcom/oculus/vrruntimeservice/IVrRuntimeService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createClient(Landroid/os/IBinder;Z)Lcom/oculus/vrruntimeservice/IRuntimeClient;
    .locals 12

    .line 926
    const-class v0, Lcom/oculus/vrruntimeservice/VrRuntimeService;

    monitor-enter v0

    const/4 v1, 0x0

    .line 930
    :try_start_0
    iget-object v2, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$1;->this$0:Lcom/oculus/vrruntimeservice/VrRuntimeService;

    invoke-virtual {v2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    if-nez p1, :cond_0

    const-string p1, "VrRuntimeService"

    .line 936
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrRuntimeService: createClient: token == null. PackageName: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 940
    :cond_0
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 941
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 942
    invoke-static {v6, v9, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$3900(Ljava/lang/String;IZ)I

    move-result v8

    .line 944
    new-instance v2, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;

    iget-object v5, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$1;->this$0:Lcom/oculus/vrruntimeservice/VrRuntimeService;

    move-object v4, v2

    move v7, p2

    move-object v11, p1

    invoke-direct/range {v4 .. v11}, Lcom/oculus/vrruntimeservice/VrRuntimeService$RuntimeClient;-><init>(Lcom/oculus/vrruntimeservice/VrRuntimeService;Ljava/lang/String;ZIIILandroid/os/IBinder;)V

    const/4 p2, 0x0

    .line 945
    invoke-interface {p1, v2, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 947
    :try_start_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "VrRuntimeService"

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrRuntimeService: createClient exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    monitor-exit v0

    return-object v1

    .line 954
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
