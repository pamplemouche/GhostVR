.class public Lym0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final e:Ljava/lang/Object;


# instance fields
.field public final a:Lwm0;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Z

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lym0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZLandroid/content/SharedPreferences;Lwm0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lym0;->c:Z

    .line 3
    iput-object p2, p0, Lym0;->b:Landroid/content/SharedPreferences;

    .line 4
    iput-object p3, p0, Lym0;->a:Lwm0;

    .line 5
    iput p4, p0, Lym0;->d:I

    return-void
.end method

.method public static b()Lym0;
    .locals 1

    .line 1
    sget-object v0, Lxm0;->a:Lym0;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    sget-object v0, Lym0;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lym0;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lym0;->a:Lwm0;

    if-eqz v1, :cond_2

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lvm0;->a:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    iget-object v4, v1, Lwm0;->a:Lam0;

    check-cast v4, Lbm0;

    .line 7
    iget-object v4, v4, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lym0;->a:Lwm0;

    invoke-virtual {v1}, Lwm0;->a()V

    .line 9
    iget-object v1, p0, Lym0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v2, p0, Lym0;->d:I

    const-string v3, "channels_version_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 11
    throw v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
