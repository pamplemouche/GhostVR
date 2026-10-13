.class Lcom/oculus/horizon/legacy/social/MeManager$2;
.super Ljava/lang/Object;
.source "MeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/MeManager;->notifyMyUserDataRefreshedOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/MeManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/MeManager;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/MeManager$2;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/MeManager$2;->this$0:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->access$900(Lcom/oculus/horizon/legacy/social/MeManager;)V

    .line 479
    return-void
.end method
