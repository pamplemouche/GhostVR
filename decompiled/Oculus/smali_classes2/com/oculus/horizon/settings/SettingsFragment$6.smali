.class Lcom/oculus/horizon/settings/SettingsFragment$6;
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


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/oculus/horizon/settings/SettingsFragment$6;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$6;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->access$500(Lcom/oculus/horizon/settings/SettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "reset_pin_tap"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEvent(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$6;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->access$700(Lcom/oculus/horizon/settings/SettingsFragment;)V

    .line 223
    return-void
.end method
