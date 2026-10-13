.class Lcom/oculus/horizon/settings/InternalSettingsFragment$8;
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
    .line 253
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$500(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/social/SocialMethods;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/settings/InternalSettingsFragment$8$1;

    iget-object v2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$8;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-direct {v1, p0, v2}, Lcom/oculus/horizon/settings/InternalSettingsFragment$8$1;-><init>(Lcom/oculus/horizon/settings/InternalSettingsFragment$8;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/social/SocialMethods;->resetActivityPrivacyUpdateRoadblock(Lretrofit/Callback;)V

    .line 277
    return-void
.end method
