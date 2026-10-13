.class Lcom/oculus/modules/LibraryModuleImpl$20;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl;->getInstalledAppPermissionsImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[",
        "Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;",
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
    .line 531
    iput-object p1, p0, Lcom/oculus/modules/LibraryModuleImpl$20;->this$0:Lcom/oculus/modules/LibraryModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/LibraryModuleImpl$20;->val$packageName:Ljava/lang/String;

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
    .line 531
    invoke-virtual {p0}, Lcom/oculus/modules/LibraryModuleImpl$20;->call()[Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public call()[Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;
    .locals 8

    .prologue
    .line 534
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$500()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 538
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v6, p0, Lcom/oculus/modules/LibraryModuleImpl$20;->val$packageName:Ljava/lang/String;

    const/16 v7, 0x1000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 542
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 543
    .local v4, "permissionInfos":[Ljava/lang/String;
    array-length v6, v4

    new-array v3, v6, [Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;

    .line 544
    .local v3, "permissionInfoResponses":[Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 545
    aget-object v6, v4, v1

    invoke-static {v6}, Lcom/oculus/modules/LibraryModuleImpl;->getPermissionInfoResponse(Ljava/lang/String;)Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;

    move-result-object v6

    aput-object v6, v3, v1

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    .end local v1    # "i":I
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "permissionInfoResponses":[Lcom/oculus/modules/LibraryModuleImpl$PermissionInfoResponse;
    .end local v4    # "permissionInfos":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .line 547
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-object v3
.end method
