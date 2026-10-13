.class Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$2;
.super Ljava/lang/Object;
.source "GatekeeperSettingsFragment.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->startUpdateGatekeepers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$2;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->access$100(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->update()V

    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->access$200(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->gatekeepers_refresh:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    const/4 v0, 0x0

    return-object v0
.end method
