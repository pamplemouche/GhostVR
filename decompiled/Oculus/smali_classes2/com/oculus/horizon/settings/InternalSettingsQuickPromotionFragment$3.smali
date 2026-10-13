.class Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3;
.super Ljava/lang/Object;
.source "InternalSettingsQuickPromotionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3;->this$0:Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3;->this$0:Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->access$300(Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_SEEN_NEW_LIBRARY:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const/4 v2, 0x0

    new-instance v3, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3$1;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3$1;-><init>(Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;->mutatePreference(Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;ZLretrofit/Callback;)V

    .line 83
    return-void
.end method
