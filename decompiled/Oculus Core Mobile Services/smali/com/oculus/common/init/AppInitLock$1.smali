.class Lcom/oculus/common/init/AppInitLock$1;
.super Ljava/lang/Object;
.source "AppInitLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/common/init/AppInitLock;->notifyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/common/init/AppInitLock;


# direct methods
.method constructor <init>(Lcom/oculus/common/init/AppInitLock;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oculus/common/init/AppInitLock$1;->this$0:Lcom/oculus/common/init/AppInitLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/common/init/AppInitLock$1;->this$0:Lcom/oculus/common/init/AppInitLock;

    invoke-static {v0}, Lcom/oculus/common/init/AppInitLock;->access$000(Lcom/oculus/common/init/AppInitLock;)V

    .line 77
    return-void
.end method
