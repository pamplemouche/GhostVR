.class Lcom/oculus/modules/LibraryModuleImpl$3;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl;->fetchUnknownSourcesAsyncImpl(ZLcom/oculus/modules/codegen/Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/LibraryModuleImpl;

.field final synthetic val$displaySideloadedAppsEnabled:Z


# direct methods
.method constructor <init>(Lcom/oculus/modules/LibraryModuleImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/LibraryModuleImpl;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$3;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iput-boolean p2, p0, Lcom/oculus/modules/LibraryModuleImpl$3;->val$displaySideloadedAppsEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/oculus/modules/LibraryModuleImpl$3;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/16 v14, 0x80

    .line 221
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$500()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 222
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v9, "unknownSources":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 224
    .local v4, "libraryPackageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$600()Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oculus/libraryapi/OVRLibrary;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v11

    array-length v12, v11

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v0, v11, v10

    .line 225
    .local v0, "app":Lcom/oculus/library/model/App;
    iget-object v13, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "app":Lcom/oculus/library/model/App;
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.oculus.vrshell.SHELL_MAIN"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v8, "shellIntent":Landroid/content/Intent;
    invoke-virtual {v5, v8, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 231
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 232
    .local v6, "service":Landroid/content/pm/ServiceInfo;
    iget-object v11, p0, Lcom/oculus/modules/LibraryModuleImpl$3;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iget-object v12, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v11, v12, v4}, Lcom/oculus/modules/LibraryModuleImpl;->access$700(Lcom/oculus/modules/LibraryModuleImpl;Landroid/content/pm/ApplicationInfo;Ljava/util/HashSet;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 233
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "servicePackageName":Ljava/lang/String;
    iget-object v11, p0, Lcom/oculus/modules/LibraryModuleImpl$3;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iget-object v12, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v11, v7, v12}, Lcom/oculus/modules/LibraryModuleImpl;->access$800(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "service":Landroid/content/pm/ServiceInfo;
    .end local v7    # "servicePackageName":Ljava/lang/String;
    :cond_2
    iget-boolean v10, p0, Lcom/oculus/modules/LibraryModuleImpl$3;->val$displaySideloadedAppsEnabled:Z

    if-eqz v10, :cond_4

    .line 239
    iget-object v10, p0, Lcom/oculus/modules/LibraryModuleImpl$3;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    invoke-static {v10, v9}, Lcom/oculus/modules/LibraryModuleImpl;->access$900(Lcom/oculus/modules/LibraryModuleImpl;Ljava/util/List;)V

    .line 250
    :cond_3
    return-object v9

    .line 242
    :cond_4
    invoke-virtual {v5, v14}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 243
    .local v1, "application":Landroid/content/pm/ApplicationInfo;
    iget-object v11, p0, Lcom/oculus/modules/LibraryModuleImpl$3;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    invoke-static {v11, v1, v4}, Lcom/oculus/modules/LibraryModuleImpl;->access$700(Lcom/oculus/modules/LibraryModuleImpl;Landroid/content/pm/ApplicationInfo;Ljava/util/HashSet;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 244
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "applicationLabel":Ljava/lang/String;
    iget-object v11, p0, Lcom/oculus/modules/LibraryModuleImpl$3;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iget-object v12, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v11, v12, v2}, Lcom/oculus/modules/LibraryModuleImpl;->access$800(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
