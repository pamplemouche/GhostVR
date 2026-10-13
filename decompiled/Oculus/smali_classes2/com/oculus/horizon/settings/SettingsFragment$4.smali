.class Lcom/oculus/horizon/settings/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/SettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/SettingsFragment;

.field final synthetic val$itemId:I


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/SettingsFragment;I)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/oculus/horizon/settings/SettingsFragment$4;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    iput p2, p0, Lcom/oculus/horizon/settings/SettingsFragment$4;->val$itemId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 196
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$4;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Lcom/oculus/horizon/settings/SettingsFragment;->SETTINGS_ACTIVITIES_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/oculus/horizon/settings/SettingsFragment$4;->val$itemId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$4;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void
.end method
