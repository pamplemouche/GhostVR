.class Lcom/oculus/appmanager/assets/InstallWatcher$2;
.super Ljava/lang/Object;
.source "InstallWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/assets/InstallWatcher;->onPackageChanged(Lcom/oculus/common/packagescache/PackagesListener$PackageAction;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/assets/InstallWatcher;

.field final synthetic val$action:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/assets/InstallWatcher;Lcom/oculus/common/packagescache/PackagesListener$PackageAction;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oculus/appmanager/assets/InstallWatcher$2;->this$0:Lcom/oculus/appmanager/assets/InstallWatcher;

    iput-object p2, p0, Lcom/oculus/appmanager/assets/InstallWatcher$2;->val$action:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    iput-object p3, p0, Lcom/oculus/appmanager/assets/InstallWatcher$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oculus/appmanager/assets/InstallWatcher$2;->this$0:Lcom/oculus/appmanager/assets/InstallWatcher;

    iget-object v1, p0, Lcom/oculus/appmanager/assets/InstallWatcher$2;->val$action:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    iget-object v2, p0, Lcom/oculus/appmanager/assets/InstallWatcher$2;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/oculus/appmanager/assets/InstallWatcher;->access$200(Lcom/oculus/appmanager/assets/InstallWatcher;Lcom/oculus/common/packagescache/PackagesListener$PackageAction;Ljava/lang/String;)V

    .line 69
    return-void
.end method
