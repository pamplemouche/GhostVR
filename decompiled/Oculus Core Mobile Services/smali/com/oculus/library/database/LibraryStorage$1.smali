.class Lcom/oculus/library/database/LibraryStorage$1;
.super Ljava/lang/Object;
.source "LibraryStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/library/database/LibraryStorage;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/library/database/LibraryStorage;


# direct methods
.method constructor <init>(Lcom/oculus/library/database/LibraryStorage;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oculus/library/database/LibraryStorage$1;->this$0:Lcom/oculus/library/database/LibraryStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    :try_start_0
    invoke-static {}, Lcom/oculus/library/database/LibraryStorage;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Running library db load from init executor"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/oculus/library/database/LibraryStorage$1;->this$0:Lcom/oculus/library/database/LibraryStorage;

    invoke-virtual {v0}, Lcom/oculus/library/database/LibraryStorage;->ensureLoaded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 80
    invoke-static {}, Lcom/oculus/library/database/LibraryStorage;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error loading cache from init executor"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
