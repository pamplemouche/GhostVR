.class Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment$1;
.super Ljava/lang/Object;
.source "PlatformEndpointSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    iget-object v1, p0, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method
