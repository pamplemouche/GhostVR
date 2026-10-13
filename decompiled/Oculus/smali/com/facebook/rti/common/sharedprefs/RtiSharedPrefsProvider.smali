.class public Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefsProvider;
.super Ljava/lang/Object;
.source "RtiSharedPrefsProvider.java"

# interfaces
.implements Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefsProvider;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;
    .locals 4

    .prologue
    .line 18
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->INSTANCE:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    iget-object v1, p0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefsProvider;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rti.mqtt."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->isMultiProc()Z

    move-result v3

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences;

    invoke-direct {v1, v0}, Lcom/facebook/rti/common/sharedprefs/RtiSharedPreferences;-><init>(Landroid/content/SharedPreferences;)V

    return-object v1
.end method
