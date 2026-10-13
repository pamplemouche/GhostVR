.class Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$4;
.super Ljava/lang/Object;
.source "FirstPartySettingsHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;->pushSettingsAsync(Landroid/content/Context;Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$settings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$4;->this$0:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    iput-object p2, p0, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$4;->val$settings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    iput-object p3, p0, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$4;->val$settings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    iget-object v1, p0, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->pushSettings(Landroid/content/Context;)V

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method
