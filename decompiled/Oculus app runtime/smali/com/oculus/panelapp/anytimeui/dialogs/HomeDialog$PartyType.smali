.class public final enum Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;
.super Ljava/lang/Enum;
.source "HomeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PartyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

.field public static final enum JOIN_OTHER:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

.field public static final enum JOIN_SELF:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

.field public static final enum NONE:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;->NONE:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    .line 42
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    const/4 v2, 0x1

    const-string v3, "JOIN_SELF"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;->JOIN_SELF:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    .line 43
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    const/4 v3, 0x2

    const-string v4, "JOIN_OTHER"

    invoke-direct {v0, v4, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;->JOIN_OTHER:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    const/4 v0, 0x3

    .line 40
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    sget-object v4, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;->NONE:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;->JOIN_SELF:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;->JOIN_OTHER:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;->$VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;
    .locals 1

    .line 40
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;
    .locals 1

    .line 40
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;->$VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    return-object v0
.end method
