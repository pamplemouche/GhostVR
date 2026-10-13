.class Lcom/oculus/horizon/settings/InternalSettingsFragment$4;
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

.field final synthetic val$joinEventsRow:Lcom/oculus/horizon/widget/CustomSetting;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;Lcom/oculus/horizon/widget/CustomSetting;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$4;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$4;->val$joinEventsRow:Lcom/oculus/horizon/widget/CustomSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$4;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    .line 152
    invoke-virtual {v1}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "events_preferences"

    .line 153
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 154
    const-string v2, "key_make_events_always_joinable"

    .line 155
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 158
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_make_events_always_joinable"

    .line 159
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 160
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$4;->val$joinEventsRow:Lcom/oculus/horizon/widget/CustomSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$4;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    .line 162
    invoke-virtual {v2}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_1

    sget v0, Lcom/oculus/horizon/R$string;->setting_enabled:I

    .line 163
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 165
    return-void

    .line 162
    :cond_1
    sget v0, Lcom/oculus/horizon/R$string;->setting_disabled:I

    goto :goto_0
.end method
