.class public final enum Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;
.super Ljava/lang/Enum;
.source "GuardianUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/util/GuardianUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GuardianInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

.field public static final enum ACTIVE_MAP_ID:Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;


# instance fields
.field private mKey:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

    sget-object v1, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->ROOT:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v2, "guardian"

    .line 15
    invoke-virtual {v1, v2}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v1

    const-string v2, "debug.guardian.activemapid"

    invoke-virtual {v1, v2}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ACTIVE_MAP_ID"

    const-string v4, "Guardian Active Map Id"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/oculus/vrshell/sharedprefs/PrefKey;)V

    sput-object v0, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;->ACTIVE_MAP_ID:Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

    const/4 v0, 0x1

    .line 12
    new-array v0, v0, [Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

    sget-object v1, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;->ACTIVE_MAP_ID:Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;->$VALUES:[Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/oculus/vrshell/sharedprefs/PrefKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/vrshell/sharedprefs/PrefKey;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;->mName:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;->mKey:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;
    .locals 1

    .line 12
    const-class v0, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;
    .locals 1

    .line 12
    sget-object v0, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;->$VALUES:[Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;

    return-object v0
.end method


# virtual methods
.method public getKey()Lcom/oculus/vrshell/sharedprefs/PrefKey;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;->mKey:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/oculus/vrshell/util/GuardianUtil$GuardianInfo;->mName:Ljava/lang/String;

    return-object v0
.end method
