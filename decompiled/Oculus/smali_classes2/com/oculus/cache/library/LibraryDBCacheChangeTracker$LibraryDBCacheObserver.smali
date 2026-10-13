.class Lcom/oculus/cache/library/LibraryDBCacheChangeTracker$LibraryDBCacheObserver;
.super Landroid/database/ContentObserver;
.source "LibraryDBCacheChangeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LibraryDBCacheObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;


# direct methods
.method public constructor <init>(Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oculus/cache/library/LibraryDBCacheChangeTracker$LibraryDBCacheObserver;->this$0:Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;

    .line 116
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/cache/library/LibraryDBCacheChangeTracker$LibraryDBCacheObserver;->onChange(ZLandroid/net/Uri;)V

    .line 122
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string v1, "db_bulk_insert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oculus/cache/library/LibraryDBCacheChangeTracker$LibraryDBCacheObserver;->this$0:Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;

    invoke-static {v0}, Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;->access$000(Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;->access$100(Lcom/google/common/collect/ImmutableList;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/oculus/cache/library/LibraryDBCacheChangeTracker$LibraryDBCacheObserver;->this$0:Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;

    iget-object v2, p0, Lcom/oculus/cache/library/LibraryDBCacheChangeTracker$LibraryDBCacheObserver;->this$0:Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;

    invoke-static {v2, v0}, Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;->access$200(Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;->access$300(Lcom/oculus/cache/library/LibraryDBCacheChangeTracker;Lcom/oculus/library/model/App;)V

    goto :goto_0
.end method
