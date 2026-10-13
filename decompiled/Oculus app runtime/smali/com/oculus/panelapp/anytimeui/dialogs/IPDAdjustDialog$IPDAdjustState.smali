.class public final enum Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;
.super Ljava/lang/Enum;
.source "IPDAdjustDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPDAdjustState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

.field public static final enum DONE:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

.field public static final enum FIT_AND_HORIZONTAL_VIDEO:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

.field public static final enum HORIZONTAL_INTERACTIVE:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

.field public static final enum START:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

.field public static final enum VERTICAL_INTERACTIVE:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

.field public static final enum VERTICAL_VIDEO:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 26
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    const/4 v1, 0x0

    const-string v2, "START"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->START:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    .line 27
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    const/4 v2, 0x1

    const-string v3, "FIT_AND_HORIZONTAL_VIDEO"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->FIT_AND_HORIZONTAL_VIDEO:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    .line 28
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    const/4 v3, 0x2

    const-string v4, "HORIZONTAL_INTERACTIVE"

    invoke-direct {v0, v4, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->HORIZONTAL_INTERACTIVE:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    .line 29
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    const/4 v4, 0x3

    const-string v5, "VERTICAL_VIDEO"

    invoke-direct {v0, v5, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->VERTICAL_VIDEO:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    .line 30
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    const/4 v5, 0x4

    const-string v6, "VERTICAL_INTERACTIVE"

    invoke-direct {v0, v6, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->VERTICAL_INTERACTIVE:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    .line 31
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    const/4 v6, 0x5

    const-string v7, "DONE"

    invoke-direct {v0, v7, v6}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->DONE:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    const/4 v0, 0x6

    .line 25
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    sget-object v7, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->START:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    aput-object v7, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->FIT_AND_HORIZONTAL_VIDEO:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->HORIZONTAL_INTERACTIVE:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->VERTICAL_VIDEO:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->VERTICAL_INTERACTIVE:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->DONE:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->$VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;
    .locals 1

    .line 25
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;
    .locals 1

    .line 25
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->$VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    return-object v0
.end method
