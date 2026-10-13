.class public final enum Lcom/oculus/os/enterprise/HomeButtonBehaviour;
.super Ljava/lang/Enum;
.source "HomeButtonBehaviour.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/os/enterprise/HomeButtonBehaviour;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/os/enterprise/HomeButtonBehaviour;

.field public static final enum DISABLED:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

.field public static final enum RESUME_ONLY:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

.field public static final enum UNRESTRICTED:Lcom/oculus/os/enterprise/HomeButtonBehaviour;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    const/4 v1, 0x0

    const-string v2, "DISABLED"

    invoke-direct {v0, v2, v1}, Lcom/oculus/os/enterprise/HomeButtonBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/HomeButtonBehaviour;->DISABLED:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    .line 7
    new-instance v0, Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    const/4 v2, 0x1

    const-string v3, "RESUME_ONLY"

    invoke-direct {v0, v3, v2}, Lcom/oculus/os/enterprise/HomeButtonBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/HomeButtonBehaviour;->RESUME_ONLY:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    .line 8
    new-instance v0, Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    const/4 v3, 0x2

    const-string v4, "UNRESTRICTED"

    invoke-direct {v0, v4, v3}, Lcom/oculus/os/enterprise/HomeButtonBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/HomeButtonBehaviour;->UNRESTRICTED:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    sget-object v4, Lcom/oculus/os/enterprise/HomeButtonBehaviour;->DISABLED:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/os/enterprise/HomeButtonBehaviour;->RESUME_ONLY:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/os/enterprise/HomeButtonBehaviour;->UNRESTRICTED:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/os/enterprise/HomeButtonBehaviour;->$VALUES:[Lcom/oculus/os/enterprise/HomeButtonBehaviour;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/os/enterprise/HomeButtonBehaviour;
    .locals 1

    .line 5
    const-class v0, Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    return-object p0
.end method

.method public static values()[Lcom/oculus/os/enterprise/HomeButtonBehaviour;
    .locals 1

    .line 5
    sget-object v0, Lcom/oculus/os/enterprise/HomeButtonBehaviour;->$VALUES:[Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    invoke-virtual {v0}, [Lcom/oculus/os/enterprise/HomeButtonBehaviour;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    return-object v0
.end method
