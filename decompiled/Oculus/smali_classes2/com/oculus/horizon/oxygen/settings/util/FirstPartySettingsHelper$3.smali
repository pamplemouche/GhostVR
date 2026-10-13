.class Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$3;
.super Ljava/lang/Object;
.source "FirstPartySettingsHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;->querySettingsAsync(Landroid/content/Context;)Lbolts/Task;
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
        "Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$3;->this$0:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    iput-object p2, p0, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->querySettings(Landroid/content/Context;)Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$3;->call()Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    move-result-object v0

    return-object v0
.end method
