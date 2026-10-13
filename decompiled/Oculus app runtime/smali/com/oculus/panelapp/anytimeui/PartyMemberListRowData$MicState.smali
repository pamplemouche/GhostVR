.class public final enum Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;
.super Ljava/lang/Enum;
.source "PartyMemberListRowData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MicState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

.field public static final enum HIDDEN:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

.field public static final enum MUTED:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

.field public static final enum UNMUTED:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 61
    new-instance v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    const/4 v1, 0x0

    const-string v2, "HIDDEN"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->HIDDEN:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    .line 62
    new-instance v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    const/4 v2, 0x1

    const-string v3, "UNMUTED"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->UNMUTED:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    .line 63
    new-instance v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    const/4 v3, 0x2

    const-string v4, "MUTED"

    invoke-direct {v0, v4, v3}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->MUTED:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    const/4 v0, 0x3

    .line 60
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    sget-object v4, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->HIDDEN:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->UNMUTED:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->MUTED:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->$VALUES:[Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;
    .locals 1

    .line 60
    const-class v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;
    .locals 1

    .line 60
    sget-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->$VALUES:[Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    return-object v0
.end method
