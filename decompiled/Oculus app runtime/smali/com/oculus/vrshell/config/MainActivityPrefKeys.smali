.class public Lcom/oculus/vrshell/config/MainActivityPrefKeys;
.super Ljava/lang/Object;
.source "MainActivityPrefKeys.java"


# static fields
.field public static final MAIN_ACTIVITY_ROOT:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field public static final NATIVE:Lcom/oculus/vrshell/sharedprefs/PrefKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->ROOT:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "main_activity"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/config/MainActivityPrefKeys;->MAIN_ACTIVITY_ROOT:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 9
    sget-object v0, Lcom/oculus/vrshell/config/MainActivityPrefKeys;->MAIN_ACTIVITY_ROOT:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "native"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/config/MainActivityPrefKeys;->NATIVE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
