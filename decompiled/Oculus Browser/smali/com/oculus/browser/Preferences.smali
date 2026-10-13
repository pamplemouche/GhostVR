.class public Lcom/oculus/browser/Preferences;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final SHARED_PREFERENCES:Ljava/lang/String; = "OculusBrowserPreferences"

.field public static mInstance:Lcom/oculus/browser/Preferences;


# instance fields
.field public mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance()Lcom/oculus/browser/Preferences;
    .locals 1

    .line 1
    sget-object v0, Lcom/oculus/browser/Preferences;->mInstance:Lcom/oculus/browser/Preferences;

    return-object v0
.end method

.method public static init(Lcom/oculus/browser/HydraApplication;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/oculus/browser/Preferences;

    const-string v1, "OculusBrowserPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oculus/browser/Preferences;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/oculus/browser/Preferences;->mInstance:Lcom/oculus/browser/Preferences;

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
