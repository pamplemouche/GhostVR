.class Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$HoneycombSharedPreferencesHelper;
.super Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;
.source "SharedPreferencesCompatHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoneycombSharedPreferencesHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$1;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$HoneycombSharedPreferencesHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    if-eqz p3, :cond_0

    .line 57
    const/4 v0, 0x4

    .line 60
    :cond_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
