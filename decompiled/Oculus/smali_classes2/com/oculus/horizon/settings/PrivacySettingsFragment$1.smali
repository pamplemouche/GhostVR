.class Lcom/oculus/horizon/settings/PrivacySettingsFragment$1;
.super Ljava/lang/Object;
.source "PrivacySettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/PrivacySettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/PrivacySettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/PrivacySettingsFragment;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oculus/horizon/settings/PrivacySettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/PrivacySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacySettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/PrivacySettingsFragment;

    const-class v1, Lcom/oculus/horizon/legacy/social/fragments/BlockedUsersFragment;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/settings/PrivacySettingsFragment;->startFragment(Ljava/lang/Class;)V

    .line 61
    return-void
.end method
