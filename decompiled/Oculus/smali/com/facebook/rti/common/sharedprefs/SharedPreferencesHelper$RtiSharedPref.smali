.class public Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;
.super Ljava/lang/Object;
.source "SharedPreferencesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RtiSharedPref"
.end annotation


# instance fields
.field private final multiProc:Z

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;-><init>(Ljava/lang/String;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;->name:Ljava/lang/String;

    .line 36
    iput-boolean p2, p0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;->multiProc:Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;->multiProc:Z

    return v0
.end method

.method static synthetic access$100(Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;->name:Ljava/lang/String;

    return-object v0
.end method
