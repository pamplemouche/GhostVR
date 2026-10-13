.class Lcom/oculus/horizon/settings/NamePrivacyFragment$1;
.super Ljava/lang/Object;
.source "NamePrivacyFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/NamePrivacyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/NamePrivacyFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/NamePrivacyFragment;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment$1;->this$0:Lcom/oculus/horizon/settings/NamePrivacyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/oculus/horizon/widget/SwitchSetting;Z)V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment$1;->this$0:Lcom/oculus/horizon/settings/NamePrivacyFragment;

    iget-object v0, v0, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mIdentityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    sget-object v1, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->ENABLED:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->DISABLED:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment$1;->this$0:Lcom/oculus/horizon/settings/NamePrivacyFragment;

    iget-object v2, p0, Lcom/oculus/horizon/settings/NamePrivacyFragment$1;->this$0:Lcom/oculus/horizon/settings/NamePrivacyFragment;

    iget-object v2, v2, Lcom/oculus/horizon/settings/NamePrivacyFragment;->mCurrentState:Lcom/oculus/horizon/social/model/PrivacyState;

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/settings/NamePrivacyFragment;->doSelect(Lcom/oculus/horizon/social/model/PrivacyState;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V

    .line 33
    return-void

    .line 28
    :cond_0
    sget-object v0, Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;->ENABLED:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    goto :goto_0
.end method
