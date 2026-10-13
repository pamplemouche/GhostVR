.class Lcom/oculus/cache/library/LibraryMemoryCacheManager$2;
.super Ljava/lang/Object;
.source "LibraryMemoryCacheManager.java"

# interfaces
.implements Lcom/oculus/library/sync/LibrarySyncHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/cache/library/LibraryMemoryCacheManager;->syncAppsWithServer(Lcom/google/common/collect/ImmutableList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/cache/library/LibraryMemoryCacheManager;


# direct methods
.method constructor <init>(Lcom/oculus/cache/library/LibraryMemoryCacheManager;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/oculus/cache/library/LibraryMemoryCacheManager$2;->this$0:Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/oculus/cache/library/LibraryMemoryCacheManager$2;->this$0:Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->mDidFullSyncWithServer:Z

    .line 237
    return-void
.end method
