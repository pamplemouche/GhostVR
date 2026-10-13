.class public Lcom/oculus/vrshell/util/GuardianUtil;
.super Ljava/lang/Object;
.source "GuardianUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;
    }
.end annotation


# static fields
.field private static final GUARDIAN_ACTIVE_MAP_ID:Ljava/lang/String; = "Guardian Active Map Id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGuardianPrefKey(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 2

    .line 35
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->ROOT:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "guardian"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object p0

    return-object p0
.end method
