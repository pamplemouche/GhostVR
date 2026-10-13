.class Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$1;
.super Ljava/lang/Object;
.source "LightSharedPreferencesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;-><init>(Ljava/io/File;Ljava/util/concurrent/Executor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;


# direct methods
.method constructor <init>(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$1;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    const-string v0, "LightSharedPreferences.tryLoadSharedPreference"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$1;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$000(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$1;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$200(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Lcom/facebook/crudolib/prefs/LightSharedPreferencesStorage;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$1;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v2}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$100(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesStorage;->tryLoadSharedPreference(Ljava/util/Map;)V

    .line 69
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$1;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0, v3}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$302(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;Z)Z

    .line 72
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$1;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$400(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 73
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 75
    return-void

    .line 69
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$1;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v1, v3}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$302(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;Z)Z

    .line 72
    iget-object v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$1;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$400(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 73
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method
