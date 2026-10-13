.class Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$3;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "PartyCallSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->setNotificationPreference(Lcom/oculus/horizon/notifications/api/NotificationOptOutType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$3;->this$0:Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$3;->this$0:Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;

    .line 107
    invoke-virtual {v0}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error when changing user\'s notifications preferences"

    .line 106
    invoke-static {v0, v1}, Lcom/oculus/horizon/util/errors/ErrorToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$3;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
