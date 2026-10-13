.class public abstract Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;
.super Ljava/lang/Object;
.source "SharedPreferencesCompatHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$HoneycombSharedPreferencesHelper;,
        Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$PreHoneycombSharedPreferencesHelper;
    }
.end annotation


# static fields
.field protected static final INSTANCE:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 23
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$HoneycombSharedPreferencesHelper;

    invoke-direct {v0, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$HoneycombSharedPreferencesHelper;-><init>(Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$1;)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->INSTANCE:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$PreHoneycombSharedPreferencesHelper;

    invoke-direct {v0, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$PreHoneycombSharedPreferencesHelper;-><init>(Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper$1;)V

    sput-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->INSTANCE:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 34
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method protected abstract getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;
.end method
