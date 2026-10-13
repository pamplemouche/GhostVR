.class Lcom/oculus/horizon/settings/InternalSettingsFragment$6;
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$frescoDebugOverlayRow:Lcom/oculus/horizon/widget/CustomSetting;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;Landroid/content/Context;Lcom/oculus/horizon/widget/CustomSetting;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$6;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$6;->val$frescoDebugOverlayRow:Lcom/oculus/horizon/widget/CustomSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$6;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/horizon/util/errors/FrescoDebugOverlayHelper;->isDebugOverlayEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$6;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/horizon/util/errors/FrescoDebugOverlayHelper;->toggleDebugOverlayEnabled(Landroid/content/Context;)V

    .line 218
    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$6;->val$frescoDebugOverlayRow:Lcom/oculus/horizon/widget/CustomSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$6;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    if-eqz v0, :cond_1

    sget v0, Lcom/oculus/horizon/R$string;->setting_enabled:I

    .line 219
    :goto_1
    invoke-virtual {v2, v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 220
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 218
    :cond_1
    sget v0, Lcom/oculus/horizon/R$string;->setting_disabled:I

    goto :goto_1
.end method
