.class Lcom/oculus/durableiap/DurableIAPStorage$1;
.super Ljava/lang/Object;
.source "DurableIAPStorage.java"

# interfaces
.implements Lcom/oculus/libraryapi/OVRLibrary$InstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/durableiap/DurableIAPStorage;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/durableiap/DurableIAPStorage;


# direct methods
.method constructor <init>(Lcom/oculus/durableiap/DurableIAPStorage;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oculus/durableiap/DurableIAPStorage$1;->this$0:Lcom/oculus/durableiap/DurableIAPStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstall(Lcom/oculus/appmanager/info/model/InstallerResult;)V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/oculus/durableiap/DurableIAPStorage;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Refresh durable IAP after app install."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/oculus/durableiap/DurableIAPStorage$1;->this$0:Lcom/oculus/durableiap/DurableIAPStorage;

    invoke-virtual {v0}, Lcom/oculus/durableiap/DurableIAPStorage;->refetchPurchases()Lbolts/Task;

    .line 95
    return-void
.end method
