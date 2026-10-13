.class public final enum Lcom/oculus/vrshell/panels/SoundType;
.super Ljava/lang/Enum;
.source "SoundType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/panels/SoundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/panels/SoundType;

.field public static final enum HOVER:Lcom/oculus/vrshell/panels/SoundType;

.field public static final enum SELECT:Lcom/oculus/vrshell/panels/SoundType;


# instance fields
.field private final audioName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/oculus/vrshell/panels/SoundType;

    const/4 v1, 0x0

    const-string v2, "HOVER"

    const-string v3, "hover1"

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/vrshell/panels/SoundType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/panels/SoundType;->HOVER:Lcom/oculus/vrshell/panels/SoundType;

    .line 8
    new-instance v0, Lcom/oculus/vrshell/panels/SoundType;

    const/4 v2, 0x1

    const-string v3, "SELECT"

    const-string v4, "select1"

    invoke-direct {v0, v3, v2, v4}, Lcom/oculus/vrshell/panels/SoundType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/panels/SoundType;->SELECT:Lcom/oculus/vrshell/panels/SoundType;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/oculus/vrshell/panels/SoundType;

    sget-object v3, Lcom/oculus/vrshell/panels/SoundType;->HOVER:Lcom/oculus/vrshell/panels/SoundType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/oculus/vrshell/panels/SoundType;->SELECT:Lcom/oculus/vrshell/panels/SoundType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/vrshell/panels/SoundType;->$VALUES:[Lcom/oculus/vrshell/panels/SoundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/oculus/vrshell/panels/SoundType;->audioName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/panels/SoundType;
    .locals 1

    .line 6
    const-class v0, Lcom/oculus/vrshell/panels/SoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/panels/SoundType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/panels/SoundType;
    .locals 1

    .line 6
    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->$VALUES:[Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/panels/SoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/panels/SoundType;

    return-object v0
.end method


# virtual methods
.method public getAudioName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/oculus/vrshell/panels/SoundType;->audioName:Ljava/lang/String;

    return-object v0
.end method
