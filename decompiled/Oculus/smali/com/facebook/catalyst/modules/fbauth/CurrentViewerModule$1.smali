.class Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule$1;
.super Ljava/lang/Object;
.source "CurrentViewerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;


# direct methods
.method constructor <init>(Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule$1;->this$0:Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule$1;->this$0:Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;

    invoke-static {v0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->access$000(Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule$OnLogoutListener;

    .line 59
    invoke-interface {v0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule$OnLogoutListener;->onLogoutStart()V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule$1;->this$0:Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;

    invoke-static {v0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->access$100(Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 62
    return-void
.end method
