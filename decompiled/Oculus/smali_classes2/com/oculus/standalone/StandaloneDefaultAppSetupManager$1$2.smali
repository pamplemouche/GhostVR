.class Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$2;
.super Ljava/lang/Object;
.source "StandaloneDefaultAppSetupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;

.field final synthetic val$installSource:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$2;->this$1:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;

    iput-object p2, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$2;->val$installSource:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$2;->this$1:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;

    iget-object v0, v0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1;->this$0:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->access$200(Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;)Lcom/oculus/coreapps/CoreAppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager$1$2;->val$installSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/coreapps/CoreAppManager;->installOrUpdateRequiredApps(Ljava/lang/String;)Lbolts/Task;

    .line 229
    return-void
.end method
