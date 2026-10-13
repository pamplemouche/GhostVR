.class Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment$1;
.super Ljava/lang/Object;
.source "PrivacySettingsBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->initSetting(Landroid/view/View;ILcom/oculus/horizon/social/model/PrivacyState;)Landroid/widget/RadioButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;

.field final synthetic val$state:Lcom/oculus/horizon/social/model/PrivacyState;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;Lcom/oculus/horizon/social/model/PrivacyState;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment$1;->this$0:Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment$1;->val$state:Lcom/oculus/horizon/social/model/PrivacyState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment$1;->this$0:Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;

    iget-object v1, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment$1;->val$state:Lcom/oculus/horizon/social/model/PrivacyState;

    iget-object v2, p0, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment$1;->this$0:Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;

    iget-object v2, v2, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->mIdentityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/settings/PrivacySettingsBaseFragment;->doSelect(Lcom/oculus/horizon/social/model/PrivacyState;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V

    .line 134
    return-void
.end method
