.class public Lcom/oculus/vrapi/GatekeeperHelper;
.super Ljava/lang/Object;
.source "GatekeeperHelper.java"


# static fields
.field public static final COLUMN:Ljava/lang/String; = "gk_enabled"

.field private static final GK_ENABLE_FLAIL_LOCKOUT:Ljava/lang/String; = "oculus_enable_flail_lockout"

.field private static final GK_ENABLE_GUARDIAN_ON_SCREEN_CAPTURE:Ljava/lang/String; = "oculus_enable_guardian_on_screen_capture"

.field private static final GK_ENABLE_TRANSCRIBE:Ljava/lang/String; = "oculus_sa_transcribe_enabled"

.field private static final GK_HOME_SHORTPRESS_LOGGING:Ljava/lang/String; = "oculus_home_shortpress_logging"

.field private static final GK_MOBILE_BREAKPAD:Ljava/lang/String; = "oculus_mobile_breakpad"

.field private static final GK_QUEST_PASSTHROUGH_PLUS:Ljava/lang/String; = "oculus_quest_passthrough_plus"

.field private static final TAG:Ljava/lang/String; = "GatekeeperHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGatekeeperHelper(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 36
    invoke-static {p1}, Lcom/oculus/vrapi/GatekeeperHelper;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 35
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    .line 42
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "gk_enabled"

    .line 46
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 47
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    :cond_1
    if-eqz p0, :cond_2

    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return p1

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method public static checkGuardianOnCaptureEnabledGatekeeper(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "oculus_enable_guardian_on_screen_capture"

    .line 61
    invoke-static {p0, v0}, Lcom/oculus/vrapi/GatekeeperHelper;->checkGatekeeperHelper(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkHomeShortpressLogging(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "oculus_home_shortpress_logging"

    .line 73
    invoke-static {p0, v0}, Lcom/oculus/vrapi/GatekeeperHelper;->checkGatekeeperHelper(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkIsBreakpadEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "oculus_mobile_breakpad"

    .line 77
    invoke-static {p0, v0}, Lcom/oculus/vrapi/GatekeeperHelper;->checkGatekeeperHelper(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkIsFlailLockoutEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "oculus_enable_flail_lockout"

    .line 69
    invoke-static {p0, v0}, Lcom/oculus/vrapi/GatekeeperHelper;->checkGatekeeperHelper(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkQuestPassthroughPlusGatekeeper(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "oculus_quest_passthrough_plus"

    .line 65
    invoke-static {p0, v0}, Lcom/oculus/vrapi/GatekeeperHelper;->checkGatekeeperHelper(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkSystemUtilitiesAnytimeUICapability(Landroid/content/Context;)I
    .locals 3

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.oculus.vrshell"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 85
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.oculus.vrshell.systemux.capability_level"

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "GatekeeperHelper"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load vrshell metadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static checkTranscribeEnabledGatekeeper(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "oculus_sa_transcribe_enabled"

    .line 57
    invoke-static {p0, v0}, Lcom/oculus/vrapi/GatekeeperHelper;->checkGatekeeperHelper(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.oculus.horizon.gatekeeper/fetch?name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getHorizonCaptureCapability(Landroid/content/Context;)I
    .locals 3

    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.oculus.horizon"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 99
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.oculus.horizon.screencapture.capability"

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "GatekeeperHelper"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load horizon metadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method
