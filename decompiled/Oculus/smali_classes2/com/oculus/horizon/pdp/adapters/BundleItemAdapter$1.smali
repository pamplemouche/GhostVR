.class Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter$1;
.super Ljava/lang/Object;
.source "BundleItemAdapter.java"

# interfaces
.implements Lcom/oculus/util/collection/CollectionUtil$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->getNotYetDownloadedItems()Ljava/util/List;
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
    .line 194
    iput-object p1, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter$1;->this$0:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/horizon/api/common/Item;
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter$1;->this$0:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->access$000(Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 198
    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-object p1

    .line 201
    :cond_1
    iget-object v1, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v2, Lcom/oculus/library/model/AppStatus;->INCOMPATIBLE:Lcom/oculus/library/model/AppStatus;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v2, Lcom/oculus/library/model/AppStatus;->DOWNLOAD_QUEUED:Lcom/oculus/library/model/AppStatus;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v2, Lcom/oculus/library/model/AppStatus;->DOWNLOADING:Lcom/oculus/library/model/AppStatus;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v2, Lcom/oculus/library/model/AppStatus;->INSTALLING:Lcom/oculus/library/model/AppStatus;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v2, Lcom/oculus/library/model/AppStatus;->INSTALLED:Lcom/oculus/library/model/AppStatus;

    if-eq v1, v2, :cond_2

    iget-object v0, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v1, Lcom/oculus/library/model/AppStatus;->UNINSTALLING:Lcom/oculus/library/model/AppStatus;

    if-ne v0, v1, :cond_0

    .line 209
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic function(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    check-cast p1, Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter$1;->function(Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v0

    return-object v0
.end method
