.class Lcom/oculus/coreapps/CoreAppManager$2;
.super Ljava/lang/Object;
.source "CoreAppManager.java"

# interfaces
.implements Lcom/oculus/libraryapi/OVRLibrary$InstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/coreapps/CoreAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/coreapps/CoreAppManager;


# direct methods
.method constructor <init>(Lcom/oculus/coreapps/CoreAppManager;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oculus/coreapps/CoreAppManager$2;->this$0:Lcom/oculus/coreapps/CoreAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstall(Lcom/oculus/appmanager/info/model/InstallerResult;)V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/oculus/coreapps/CoreAppManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoreApp install response from %s"

    iget-object v2, p1, Lcom/oculus/appmanager/info/model/InstallerResult;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/oculus/coreapps/CoreAppManager$2;->this$0:Lcom/oculus/coreapps/CoreAppManager;

    invoke-static {v0}, Lcom/oculus/coreapps/CoreAppManager;->access$100(Lcom/oculus/coreapps/CoreAppManager;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/oculus/coreapps/CoreAppManager$2;->this$0:Lcom/oculus/coreapps/CoreAppManager;

    invoke-static {v0}, Lcom/oculus/coreapps/CoreAppManager;->access$100(Lcom/oculus/coreapps/CoreAppManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v2, p1, Lcom/oculus/appmanager/info/model/InstallerResult;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    monitor-exit v1

    .line 107
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/oculus/coreapps/CoreAppManager$2;->this$0:Lcom/oculus/coreapps/CoreAppManager;

    invoke-static {v0}, Lcom/oculus/coreapps/CoreAppManager;->access$100(Lcom/oculus/coreapps/CoreAppManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v2, p1, Lcom/oculus/appmanager/info/model/InstallerResult;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/coreapps/CoreApp;

    .line 98
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v1, p1, Lcom/oculus/appmanager/info/model/InstallerResult;->error:Lcom/oculus/appmanager/info/model/InstallerResultError;

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/oculus/coreapps/CoreAppManager$2;->this$0:Lcom/oculus/coreapps/CoreAppManager;

    invoke-static {v1, v0}, Lcom/oculus/coreapps/CoreAppManager;->access$400(Lcom/oculus/coreapps/CoreAppManager;Lcom/oculus/coreapps/CoreApp;)V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/oculus/coreapps/CoreAppManager$2;->this$0:Lcom/oculus/coreapps/CoreAppManager;

    invoke-static {v0}, Lcom/oculus/coreapps/CoreAppManager;->access$600(Lcom/oculus/coreapps/CoreAppManager;)V

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/oculus/coreapps/CoreAppManager$2;->this$0:Lcom/oculus/coreapps/CoreAppManager;

    invoke-static {v1, p1, v0}, Lcom/oculus/coreapps/CoreAppManager;->access$500(Lcom/oculus/coreapps/CoreAppManager;Lcom/oculus/appmanager/info/model/InstallerResult;Lcom/oculus/coreapps/CoreApp;)V

    goto :goto_1
.end method
