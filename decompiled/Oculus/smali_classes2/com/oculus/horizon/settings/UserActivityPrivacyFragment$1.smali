.class Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$1;
.super Ljava/lang/Object;
.source "UserActivityPrivacyFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$1;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 3

    .prologue
    .line 79
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$1;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    sget-object v1, Lcom/oculus/horizon/social/model/PrivacyState;->SELF:Lcom/oculus/horizon/social/model/PrivacyState;

    iget-object v2, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$1;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    iget-object v2, v2, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mIdentityInSearchPrivacyState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->doSelect(Lcom/oculus/horizon/social/model/PrivacyState;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V

    .line 82
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
