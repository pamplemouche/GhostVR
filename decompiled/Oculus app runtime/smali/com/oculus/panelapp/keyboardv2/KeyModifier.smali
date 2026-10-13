.class public final enum Lcom/oculus/panelapp/keyboardv2/KeyModifier;
.super Ljava/lang/Enum;
.source "KeyModifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/keyboardv2/KeyModifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/keyboardv2/KeyModifier;

.field public static final enum ALT:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

.field public static final enum CAPSLOCK:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

.field public static final enum CTRL:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

.field public static final enum NONE:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

.field public static final enum SHIFT:Lcom/oculus/panelapp/keyboardv2/KeyModifier;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 5
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/oculus/panelapp/keyboardv2/KeyModifier;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->NONE:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    .line 6
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SHIFT"

    invoke-direct {v0, v4, v2, v3}, Lcom/oculus/panelapp/keyboardv2/KeyModifier;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->SHIFT:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    .line 7
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "CTRL"

    invoke-direct {v0, v5, v3, v4}, Lcom/oculus/panelapp/keyboardv2/KeyModifier;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->CTRL:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    .line 8
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    const-string v7, "ALT"

    invoke-direct {v0, v7, v6, v5}, Lcom/oculus/panelapp/keyboardv2/KeyModifier;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->ALT:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    .line 9
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "CAPSLOCK"

    invoke-direct {v0, v7, v4, v5}, Lcom/oculus/panelapp/keyboardv2/KeyModifier;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->CAPSLOCK:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    const/4 v0, 0x5

    .line 4
    new-array v0, v0, [Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    sget-object v5, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->NONE:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    aput-object v5, v0, v1

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->SHIFT:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->CTRL:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->ALT:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->CAPSLOCK:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->$VALUES:[Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/KeyModifier;
    .locals 1

    .line 4
    const-class v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/keyboardv2/KeyModifier;
    .locals 1

    .line 4
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->$VALUES:[Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/keyboardv2/KeyModifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    return-object v0
.end method
