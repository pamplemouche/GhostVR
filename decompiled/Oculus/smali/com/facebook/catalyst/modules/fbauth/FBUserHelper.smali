.class public Lcom/facebook/catalyst/modules/fbauth/FBUserHelper;
.super Ljava/lang/Object;
.source "FBUserHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIsEmployee(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    const-string v0, "UserPreferences"

    .line 22
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "IsEmployee"

    .line 23
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setIsEmployee(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 27
    invoke-static {p0}, Lcom/facebook/catalyst/modules/fbauth/FBUserHelper;->getIsEmployee(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v0, "UserPreferences"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    const-string v1, "IsEmployee"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
