.class Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$1;
.super Ljava/lang/Object;
.source "OxygenSettingsFragment.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$1;->this$0:Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;

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
    .line 108
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$1;->this$0:Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->access$000(Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;)Lcom/oculus/horizon/widget/SwitchSetting;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method
