.class public Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;
.super Ljava/lang/Object;
.source "FirstPartySettingsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsTable"
.end annotation


# static fields
.field public static AUTO_UPDATES_ENABLED:Ljava/lang/String;

.field public static HAS_MOBILE_DATA_CONSENT:Ljava/lang/String;

.field public static NOTIF_UPDATE_AVAILABLE:Ljava/lang/String;

.field public static NOTIF_UPDATE_INSTALLED:Ljava/lang/String;

.field public static PACKAGE_NAME:Ljava/lang/String;

.field public static ROLLOUT_TOKEN:Ljava/lang/String;

.field public static SHOULD_ACCEPT_TOS:Ljava/lang/String;

.field public static SHOULD_SHOW_EXPLICIT_TOS:Ljava/lang/String;

.field public static TERMS_OF_SERVICE_ACCEPTED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "package_name"

    sput-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->PACKAGE_NAME:Ljava/lang/String;

    .line 115
    const-string v0, "auto_updates"

    sput-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->AUTO_UPDATES_ENABLED:Ljava/lang/String;

    .line 126
    const-string v0, "has_mobile_data_consent"

    sput-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->HAS_MOBILE_DATA_CONSENT:Ljava/lang/String;

    .line 145
    const-string v0, "notif_update_available"

    sput-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->NOTIF_UPDATE_AVAILABLE:Ljava/lang/String;

    .line 153
    const-string v0, "notif_update_installed"

    sput-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->NOTIF_UPDATE_INSTALLED:Ljava/lang/String;

    .line 163
    const-string/jumbo v0, "rollout_token"

    sput-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->ROLLOUT_TOKEN:Ljava/lang/String;

    .line 173
    const-string/jumbo v0, "terms_of_service_accepted"

    sput-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->TERMS_OF_SERVICE_ACCEPTED:Ljava/lang/String;

    .line 182
    const-string/jumbo v0, "show_accept_tos"

    sput-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->SHOULD_ACCEPT_TOS:Ljava/lang/String;

    .line 192
    const-string/jumbo v0, "show_show_explicit_tos"

    sput-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;->SHOULD_SHOW_EXPLICIT_TOS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
