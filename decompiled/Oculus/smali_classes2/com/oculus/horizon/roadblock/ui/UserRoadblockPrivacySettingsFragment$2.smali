.class Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$2;
.super Ljava/lang/Object;
.source "UserRoadblockPrivacySettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;

    const-class v1, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    invoke-static {v0, v1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->access$000(Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;Ljava/lang/Class;)V

    .line 85
    return-void
.end method
