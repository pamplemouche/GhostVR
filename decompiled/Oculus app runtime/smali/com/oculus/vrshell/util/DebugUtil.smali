.class public Lcom/oculus/vrshell/util/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGearVrDeveloperMode(Landroid/content/ContentResolver;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "vrmode_developer_mode"

    .line 10
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
