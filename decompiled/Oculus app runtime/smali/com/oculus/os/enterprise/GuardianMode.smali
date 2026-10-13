.class public final enum Lcom/oculus/os/enterprise/GuardianMode;
.super Ljava/lang/Enum;
.source "GuardianMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/os/enterprise/GuardianMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/os/enterprise/GuardianMode;

.field public static final enum DISABLED:Lcom/oculus/os/enterprise/GuardianMode;

.field public static final enum ENABLED:Lcom/oculus/os/enterprise/GuardianMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/oculus/os/enterprise/GuardianMode;

    const/4 v1, 0x0

    const-string v2, "ENABLED"

    invoke-direct {v0, v2, v1}, Lcom/oculus/os/enterprise/GuardianMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/GuardianMode;->ENABLED:Lcom/oculus/os/enterprise/GuardianMode;

    .line 7
    new-instance v0, Lcom/oculus/os/enterprise/GuardianMode;

    const/4 v2, 0x1

    const-string v3, "DISABLED"

    invoke-direct {v0, v3, v2}, Lcom/oculus/os/enterprise/GuardianMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/GuardianMode;->DISABLED:Lcom/oculus/os/enterprise/GuardianMode;

    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Lcom/oculus/os/enterprise/GuardianMode;

    sget-object v3, Lcom/oculus/os/enterprise/GuardianMode;->ENABLED:Lcom/oculus/os/enterprise/GuardianMode;

    aput-object v3, v0, v1

    sget-object v1, Lcom/oculus/os/enterprise/GuardianMode;->DISABLED:Lcom/oculus/os/enterprise/GuardianMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/os/enterprise/GuardianMode;->$VALUES:[Lcom/oculus/os/enterprise/GuardianMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/os/enterprise/GuardianMode;
    .locals 1

    .line 5
    const-class v0, Lcom/oculus/os/enterprise/GuardianMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/os/enterprise/GuardianMode;

    return-object p0
.end method

.method public static values()[Lcom/oculus/os/enterprise/GuardianMode;
    .locals 1

    .line 5
    sget-object v0, Lcom/oculus/os/enterprise/GuardianMode;->$VALUES:[Lcom/oculus/os/enterprise/GuardianMode;

    invoke-virtual {v0}, [Lcom/oculus/os/enterprise/GuardianMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/os/enterprise/GuardianMode;

    return-object v0
.end method
