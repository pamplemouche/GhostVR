.class public Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;
.super Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
.source "ApkUpdateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/ApkUpdateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateExtrasEditor"
.end annotation


# instance fields
.field private final mKeysToRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;


# direct methods
.method public constructor <init>(Lcom/oculus/appmanager/info/ApkUpdateInfo;)V
    .locals 1

    .prologue
    .line 692
    iput-object p1, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-direct {p0}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;-><init>()V

    .line 694
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->mKeysToRemove:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public putState(Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 6

    .prologue
    .line 699
    iget-object v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Unable to set state to %s, state is already final: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 705
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    aput-object v4, v2, v3

    .line 702
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 707
    iget-object v1, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-static {v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->access$000(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v1

    const-string v2, "install_put_state_non_final"

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 711
    iget-object v1, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-static {v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->access$100(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Lcom/oculus/debug/DebugMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/debug/DebugMode;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 716
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putState(Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    move-result-object p0

    .line 718
    :cond_1
    return-object p0
.end method

.method public save()V
    .locals 8

    .prologue
    .line 728
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 729
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 730
    iget-object v3, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    monitor-enter v3

    .line 731
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 732
    iget-object v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->mKeysToRemove:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 734
    new-instance v4, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getExtras()Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 737
    iget-object v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-static {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->access$200(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManager;

    move-result-object v0

    iget-object v5, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    iget-wide v6, v5, Lcom/oculus/appmanager/info/ApkUpdateInfo;->id:J

    invoke-virtual {v0, v6, v7}, Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManager;->getExtras(J)Lcom/oculus/extras/Extras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/extras/Extras;->getData()Ljava/util/Map;

    move-result-object v5

    .line 738
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 739
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 740
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 744
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 745
    iget-object v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->mKeysToRemove:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 746
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    new-instance v5, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;

    invoke-direct {v5, v4}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v5}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->access$300(Lcom/oculus/appmanager/info/ApkUpdateInfo;Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;)V

    .line 750
    iget-object v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-static {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->access$400(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    iget-wide v4, v0, Lcom/oculus/appmanager/info/ApkUpdateInfo;->id:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 751
    iget-object v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-static {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->access$200(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManager;

    move-result-object v0

    iget-object v4, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    iget-wide v4, v4, Lcom/oculus/appmanager/info/ApkUpdateInfo;->id:J

    iget-object v6, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {v6}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getExtras()Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/oculus/appmanager/info/database/ApkUpdateExtrasManager;->setExtras(JLcom/oculus/extras/Extras;)V

    .line 753
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    iget-object v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-static {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->access$500(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Lcom/oculus/appmanager/info/ApkUpdateInfoDispatcher;

    move-result-object v0

    iget-object v3, p0, Lcom/oculus/appmanager/info/ApkUpdateInfo$UpdateExtrasEditor;->this$0:Lcom/oculus/appmanager/info/ApkUpdateInfo;

    new-instance v4, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;

    invoke-direct {v4, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v3, v1, v4}, Lcom/oculus/appmanager/info/ApkUpdateInfoDispatcher;->notifyChanged(Lcom/oculus/appmanager/info/ApkUpdateInfo;Ljava/util/Set;Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;)V

    .line 756
    return-void
.end method
