.class Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter$2;
.super Ljava/lang/Object;
.source "BundleItemAdapter.java"

# interfaces
.implements Lcom/oculus/util/collection/CollectionUtil$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->getInstallingItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/util/collection/CollectionUtil$Predicate",
        "<",
        "Lcom/oculus/horizon/api/common/Item;",
        "Lcom/oculus/horizon/api/common/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter$2;->this$0:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/horizon/api/common/Item;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 221
    iget-object v1, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter$2;->this$0:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->access$000(Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    .line 222
    if-nez v1, :cond_1

    move-object p1, v0

    .line 230
    :cond_0
    :goto_0
    return-object p1

    .line 225
    :cond_1
    iget-object v2, v1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v3, Lcom/oculus/library/model/AppStatus;->DOWNLOAD_QUEUED:Lcom/oculus/library/model/AppStatus;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v3, Lcom/oculus/library/model/AppStatus;->DOWNLOADING:Lcom/oculus/library/model/AppStatus;

    if-eq v2, v3, :cond_0

    iget-object v1, v1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v2, Lcom/oculus/library/model/AppStatus;->INSTALLING:Lcom/oculus/library/model/AppStatus;

    if-eq v1, v2, :cond_0

    move-object p1, v0

    .line 230
    goto :goto_0
.end method

.method public bridge synthetic function(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 218
    check-cast p1, Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter$2;->function(Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v0

    return-object v0
.end method
