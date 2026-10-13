.class public abstract LrD;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LZB;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ChannelPrefs"

    .line 1
    invoke-static {v0}, LgC;->b(Ljava/lang/String;)LgC;

    move-result-object v0

    sput-object v0, LrD;->a:LZB;

    return-void
.end method

.method public static a()I
    .locals 3

    .line 10
    invoke-static {}, LrD;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gcm_channel_type"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, LrD;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gcm_registration_token"

    .line 7
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_1

    .line 9
    sget-object p0, LrD;->a:LZB;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast p0, LgC;

    const-string v1, "Failed writing shared preferences for: setRegistrationToken"

    invoke-virtual {p0, v1, v0}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a([B)V
    .locals 2

    .line 1
    invoke-static {}, LrD;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v1, 0xb

    .line 2
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v1, "buffered-msg"

    .line 3
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_0

    .line 5
    sget-object p0, LrD;->a:LZB;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast p0, LgC;

    const-string v1, "Failed writing shared preferences for: bufferMessage"

    invoke-virtual {p0, v1, v0}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static b()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "com.google.ipc.invalidation.gcmchannel"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static c()[B
    .locals 4

    .line 1
    invoke-static {}, LrD;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "buffered-msg"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    sget-object v0, LrD;->a:LZB;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    check-cast v0, LgC;

    const-string v2, "Failed writing shared preferences for: takeBufferedMessage"

    invoke-virtual {v0, v2, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/16 v0, 0x8

    .line 7
    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method
