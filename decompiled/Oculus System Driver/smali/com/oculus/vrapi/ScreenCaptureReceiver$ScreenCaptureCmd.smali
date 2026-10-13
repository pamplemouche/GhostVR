.class final enum Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;
.super Ljava/lang/Enum;
.source "ScreenCaptureReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/ScreenCaptureReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScreenCaptureCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

.field public static final enum Cancel:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

.field public static final enum None:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

.field public static final enum Photo:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

.field public static final enum Start:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

.field public static final enum Stop:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 60
    new-instance v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->None:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    .line 61
    new-instance v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    const-string v1, "Start"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Start:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    .line 62
    new-instance v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    const-string v1, "Stop"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Stop:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    .line 63
    new-instance v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    const-string v1, "Photo"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Photo:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    .line 64
    new-instance v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    const-string v1, "Cancel"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Cancel:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    const/4 v0, 0x5

    .line 58
    new-array v0, v0, [Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    sget-object v1, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->None:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Start:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Stop:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Photo:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->Cancel:Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->$VALUES:[Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;
    .locals 1

    .line 58
    const-class v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;
    .locals 1

    .line 58
    sget-object v0, Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->$VALUES:[Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    invoke-virtual {v0}, [Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrapi/ScreenCaptureReceiver$ScreenCaptureCmd;

    return-object v0
.end method
