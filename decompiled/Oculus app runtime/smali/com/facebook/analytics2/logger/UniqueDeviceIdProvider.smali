.class public Lcom/facebook/analytics2/logger/UniqueDeviceIdProvider;
.super Ljava/lang/Object;
.source "UniqueDeviceIdProvider.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/DeviceIdProvider;


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "UniqueDeviceIdPrefs"

.field private static final PREF_KEY:Ljava/lang/String; = "device_id"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UniqueDeviceIdProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "UniqueDeviceIdPrefs"

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "device_id"

    const/4 v1, 0x0

    .line 34
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 39
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v1
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UniqueDeviceIdProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UniqueDeviceIdProvider;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
