.class public final LgD;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final e:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LgD;->e:Ljava/util/Map;

    const-string v1, "ipc.invalidation.ticl.service_class"

    const-string v2, "com.google.ipc.invalidation.ticl.android2.TiclService"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, LgD;->e:Ljava/util/Map;

    const-string v1, "ipc.invalidation.ticl.listener_class"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, LgD;->e:Ljava/util/Map;

    const-string v1, "ipc.invalidation.ticl.listener_service_class"

    const-string v2, "com.google.ipc.invalidation.ticl.android2.AndroidInvalidationListenerStub"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, LgD;->e:Ljava/util/Map;

    const/4 v1, 0x0

    const-string v2, "ipc.invalidation.ticl.background_invalidation_listener_service_class"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, LgD;->e:Ljava/util/Map;

    const-string v2, "ipc.invalidation.ticl.gcm_upstream_service_class"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "ipc.invalidation.ticl.service_class"

    .line 4
    invoke-static {p1, v0}, LgD;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LgD;->a:Ljava/lang/String;

    const-string v0, "ipc.invalidation.ticl.listener_class"

    .line 5
    invoke-static {p1, v0}, LgD;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ipc.invalidation.ticl.listener_service_class"

    .line 6
    invoke-static {p1, v0}, LgD;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LgD;->b:Ljava/lang/String;

    const-string v0, "ipc.invalidation.ticl.background_invalidation_listener_service_class"

    .line 7
    invoke-static {p1, v0}, LgD;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LgD;->c:Ljava/lang/String;

    const-string v0, "ipc.invalidation.ticl.gcm_upstream_service_class"

    .line 8
    invoke-static {p1, v0}, LgD;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LgD;->d:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot read own application info"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget-object p0, LgD;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_1
    return-object p0
.end method
