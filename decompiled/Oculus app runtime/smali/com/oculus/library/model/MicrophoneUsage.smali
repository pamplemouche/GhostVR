.class public final enum Lcom/oculus/library/model/MicrophoneUsage;
.super Ljava/lang/Enum;
.source "MicrophoneUsage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/library/model/MicrophoneUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/model/MicrophoneUsage;

.field public static final enum EXCLUSIVE:Lcom/oculus/library/model/MicrophoneUsage;

.field public static final enum NONE:Lcom/oculus/library/model/MicrophoneUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/oculus/library/model/MicrophoneUsage;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/oculus/library/model/MicrophoneUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/MicrophoneUsage;->NONE:Lcom/oculus/library/model/MicrophoneUsage;

    .line 8
    new-instance v0, Lcom/oculus/library/model/MicrophoneUsage;

    const/4 v2, 0x1

    const-string v3, "EXCLUSIVE"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/model/MicrophoneUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/MicrophoneUsage;->EXCLUSIVE:Lcom/oculus/library/model/MicrophoneUsage;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/oculus/library/model/MicrophoneUsage;

    sget-object v3, Lcom/oculus/library/model/MicrophoneUsage;->NONE:Lcom/oculus/library/model/MicrophoneUsage;

    aput-object v3, v0, v1

    sget-object v1, Lcom/oculus/library/model/MicrophoneUsage;->EXCLUSIVE:Lcom/oculus/library/model/MicrophoneUsage;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/library/model/MicrophoneUsage;->$VALUES:[Lcom/oculus/library/model/MicrophoneUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/model/MicrophoneUsage;
    .locals 1

    .line 6
    const-class v0, Lcom/oculus/library/model/MicrophoneUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/library/model/MicrophoneUsage;

    return-object p0
.end method

.method public static values()[Lcom/oculus/library/model/MicrophoneUsage;
    .locals 1

    .line 6
    sget-object v0, Lcom/oculus/library/model/MicrophoneUsage;->$VALUES:[Lcom/oculus/library/model/MicrophoneUsage;

    invoke-virtual {v0}, [Lcom/oculus/library/model/MicrophoneUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/MicrophoneUsage;

    return-object v0
.end method
