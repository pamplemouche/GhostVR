.class Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$3;
.super Ljava/lang/Object;
.source "UserActivityPrivacyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 103
    iput-object p1, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$3;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$3;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    iget-object v1, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$3;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    iget-object v1, v1, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mCurrentState:Lcom/oculus/horizon/social/model/PrivacyState;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->setSelected(Lcom/oculus/horizon/social/model/PrivacyState;)V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$3;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->access$200(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 108
    return-void
.end method
