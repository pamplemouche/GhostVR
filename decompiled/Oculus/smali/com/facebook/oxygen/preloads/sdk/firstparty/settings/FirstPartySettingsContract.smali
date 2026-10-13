.class public Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract;
.super Ljava/lang/Object;
.source "FirstPartySettingsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract$SettingsTable;
    }
.end annotation


# static fields
.field public static final APP_MANAGER_PACKAGE_NAME:Ljava/lang/String;

.field public static final AUTHORITY:Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.facebook.appmanager.dev"

    :goto_0
    sput-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract;->APP_MANAGER_PACKAGE_NAME:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract;->APP_MANAGER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".firstparty.settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract;->AUTHORITY:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract;->URI:Landroid/net/Uri;

    return-void

    .line 26
    :cond_0
    const-string v0, "com.facebook.appmanager"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettingsContract;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
