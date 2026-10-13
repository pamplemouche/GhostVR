.class Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$2;
.super Ljava/lang/Object;
.source "FirstPartySettingsHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
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
    .line 59
    iput-object p1, p0, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$2;->this$0:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    iput-object p2, p0, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$2;->val$context:Landroid/content/Context;

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
    .line 59
    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$2;->call()Ljava/lang/Void;

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
    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/TosAcceptedSetter;->setTosAccepted(Landroid/content/Context;Z)V

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method
