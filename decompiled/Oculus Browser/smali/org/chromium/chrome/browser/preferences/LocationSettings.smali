.class public Lorg/chromium/chrome/browser/preferences/LocationSettings;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lorg/chromium/chrome/browser/preferences/LocationSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lorg/chromium/chrome/browser/preferences/LocationSettings;
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lorg/chromium/chrome/browser/preferences/LocationSettings;->a:Lorg/chromium/chrome/browser/preferences/LocationSettings;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, LjY;

    invoke-direct {v1, v0}, LjY;-><init>(Lorg/chromium/chrome/browser/AppHooks;)V

    .line 5
    sput-object v1, Lorg/chromium/chrome/browser/preferences/LocationSettings;->a:Lorg/chromium/chrome/browser/preferences/LocationSettings;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lorg/chromium/chrome/browser/preferences/LocationSettings;->a:Lorg/chromium/chrome/browser/preferences/LocationSettings;

    return-object v0
.end method

.method public static canPromptForAndroidLocationPermission(Lorg/chromium/content_public/browser/WebContents;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2
    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static canPromptToEnableSystemLocationSetting()Z
    .locals 1

    .line 1
    invoke-static {}, LOT0;->d()LOT0;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public static hasAndroidLocationPermission()Z
    .locals 1

    .line 1
    invoke-static {}, LOT0;->d()LOT0;

    move-result-object v0

    invoke-virtual {v0}, LOT0;->b()Z

    move-result v0

    return v0
.end method

.method public static isSystemLocationSettingEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, LOT0;->d()LOT0;

    move-result-object v0

    invoke-virtual {v0}, LOT0;->c()Z

    move-result v0

    return v0
.end method

.method public static promptToEnableSystemLocationSetting(ILorg/chromium/content_public/browser/WebContents;J)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    const/4 p1, 0x3

    if-nez p0, :cond_0

    .line 2
    invoke-static {p2, p3, p1}, LJ/N;->M4lZ7$ig(JI)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, LOT0;->d()LOT0;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 6
    invoke-static {p2, p3, p0}, LJ/N;->M4lZ7$ig(JI)V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 7
    throw p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, LJ/N;->Mi0mmm7e(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
