.class final enum Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;
.super Ljava/lang/Enum;
.source "IPDAdjustDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimationDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

.field public static final enum IN:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

.field public static final enum OUT:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 235
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    const/4 v1, 0x0

    const-string v2, "IN"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;->IN:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    .line 236
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    const/4 v2, 0x1

    const-string v3, "OUT"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;->OUT:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    const/4 v0, 0x2

    .line 234
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    sget-object v3, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;->IN:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    aput-object v3, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;->OUT:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;->$VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 234
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;
    .locals 1

    .line 234
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;
    .locals 1

    .line 234
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;->$VALUES:[Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$AnimationDirection;

    return-object v0
.end method
