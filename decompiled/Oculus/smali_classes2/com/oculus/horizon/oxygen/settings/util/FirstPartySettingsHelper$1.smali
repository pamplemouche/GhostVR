.class Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$1;
.super Ljava/lang/Object;
.source "FirstPartySettingsHelper.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;->pushTosAcceptedSettingAsync(Landroid/content/Context;Z)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$1;->this$0:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$1;->this$0:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    invoke-static {v0}, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;->access$000(Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pushed_tos_accepted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
