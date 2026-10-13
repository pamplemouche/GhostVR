.class Lcom/oculus/modules/LibraryModuleImpl$24;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl;->isInstalledAsyncImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/LibraryModuleImpl;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/modules/LibraryModuleImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/LibraryModuleImpl;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$24;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/LibraryModuleImpl$24;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 613
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$500()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 616
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v1, p0, Lcom/oculus/modules/LibraryModuleImpl$24;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 617
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 620
    :goto_0
    return-object v1

    .line 618
    :catch_0
    move-exception v1

    .line 620
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/oculus/modules/LibraryModuleImpl$24;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
