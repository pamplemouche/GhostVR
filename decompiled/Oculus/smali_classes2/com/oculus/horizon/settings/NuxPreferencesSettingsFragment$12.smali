.class Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$12;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "NuxPreferencesSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->mutateNuxPreference(Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;Z)V
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
.field final synthetic this$0:Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$12;->this$0:Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 225
    invoke-static {}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError: "

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$12;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 221
    return-void
.end method
