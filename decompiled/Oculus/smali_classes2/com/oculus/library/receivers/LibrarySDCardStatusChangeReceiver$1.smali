.class Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver$1;
.super Ljava/lang/Object;
.source "LibrarySDCardStatusChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver$1;->this$0:Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver$1;->this$0:Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;

    invoke-static {v0}, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;->access$000(Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;)Lcom/oculus/common/packagescache/PackagesCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/common/packagescache/PackagesCache;->init()V

    .line 52
    iget-object v0, p0, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver$1;->this$0:Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;

    invoke-static {v0}, Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;->access$100(Lcom/oculus/library/receivers/LibrarySDCardStatusChangeReceiver;)Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/libraryapi/OVRLibrary;->refetch()V

    .line 53
    return-void
.end method
