.class public final enum Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;
.super Ljava/lang/Enum;
.source "AllowedState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

.field public static final enum Allowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

.field public static final enum NotAllowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    const/4 v1, 0x0

    const-string v2, "Allowed"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->Allowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    .line 6
    new-instance v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    const/4 v2, 0x1

    const-string v3, "NotAllowed"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->NotAllowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    sget-object v3, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->Allowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    aput-object v3, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->NotAllowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->$VALUES:[Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;
    .locals 1

    .line 4
    const-class v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;
    .locals 1

    .line 4
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->$VALUES:[Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    return-object v0
.end method
