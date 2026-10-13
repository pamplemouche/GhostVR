.class Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$2;
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
    .line 57
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$2;->this$0:Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$2;->this$0:Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->access$000(Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;->clearLastImpressionTimestamp()V

    .line 61
    return-void
.end method
