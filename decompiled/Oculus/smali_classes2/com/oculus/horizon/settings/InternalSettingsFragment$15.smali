.class Lcom/oculus/horizon/settings/InternalSettingsFragment$15;
.super Ljava/lang/Object;
.source "InternalSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/InternalSettingsFragment;->setupSettingsItems(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$15;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 345
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$15;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    new-instance v2, Lcom/oculus/horizon/roadblock/model/Roadblock;

    sget-object v3, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->MALIBU_CONTROLLER:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/oculus/horizon/roadblock/model/Roadblock;-><init>(Lcom/oculus/horizon/roadblock/model/Roadblock$Type;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v2, "roadblocks"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 349
    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$15;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 350
    return-void
.end method
