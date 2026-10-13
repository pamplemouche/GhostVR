.class public final enum Lcom/oculus/horizon/api/common/Platform;
.super Ljava/lang/Enum;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/api/common/Platform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/api/common/Platform;

.field public static final enum ANDROID:Lcom/oculus/horizon/api/common/Platform;

.field public static final enum PC:Lcom/oculus/horizon/api/common/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/oculus/horizon/api/common/Platform;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/api/common/Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/api/common/Platform;->ANDROID:Lcom/oculus/horizon/api/common/Platform;

    .line 8
    new-instance v0, Lcom/oculus/horizon/api/common/Platform;

    const-string v1, "PC"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/api/common/Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/api/common/Platform;->PC:Lcom/oculus/horizon/api/common/Platform;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/api/common/Platform;

    sget-object v1, Lcom/oculus/horizon/api/common/Platform;->ANDROID:Lcom/oculus/horizon/api/common/Platform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/api/common/Platform;->PC:Lcom/oculus/horizon/api/common/Platform;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/horizon/api/common/Platform;->$VALUES:[Lcom/oculus/horizon/api/common/Platform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/api/common/Platform;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/api/common/Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Platform;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/api/common/Platform;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/api/common/Platform;->$VALUES:[Lcom/oculus/horizon/api/common/Platform;

    invoke-virtual {v0}, [Lcom/oculus/horizon/api/common/Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/api/common/Platform;

    return-object v0
.end method
