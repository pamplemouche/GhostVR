.class public final enum Lcom/oculus/panelapp/keyboardv2/KeyCode;
.super Ljava/lang/Enum;
.source "KeyCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/keyboardv2/KeyCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field public static final enum ACTION_KEY:Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field public static final enum ARROW_DOWN:Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field public static final enum ARROW_LEFT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field public static final enum ARROW_RIGHT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field public static final enum ARROW_UP:Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field public static final enum BACKSPACE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field public static final enum DISMISS:Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field public static final enum LAYOUT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field public static final enum NONE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field public static final enum PHONE_INPUT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field public static final enum RETURN_TO_CURRENT_LANGUAGE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field public static final enum SHIFT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field public static final enum TRANSCRIBE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oculus/panelapp/keyboardv2/KeyCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->NONE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    .line 11
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "SHIFT"

    invoke-direct {v0, v4, v3, v2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->SHIFT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    .line 12
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    const-string v5, "ACTION_KEY"

    invoke-direct {v0, v5, v4, v2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ACTION_KEY:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    .line 13
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    const-string v6, "LAYOUT"

    invoke-direct {v0, v6, v5, v2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->LAYOUT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    .line 14
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x4

    const-string v7, "DISMISS"

    invoke-direct {v0, v7, v6, v2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->DISMISS:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    .line 15
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/4 v2, -0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x5

    const-string v8, "BACKSPACE"

    invoke-direct {v0, v8, v7, v2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->BACKSPACE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    .line 16
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/4 v2, -0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x6

    const-string v9, "RETURN_TO_CURRENT_LANGUAGE"

    invoke-direct {v0, v9, v8, v2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->RETURN_TO_CURRENT_LANGUAGE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    .line 17
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/4 v2, -0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x7

    const-string v10, "ARROW_UP"

    invoke-direct {v0, v10, v9, v2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ARROW_UP:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    .line 18
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/16 v2, -0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v10, 0x8

    const-string v11, "ARROW_DOWN"

    invoke-direct {v0, v11, v10, v2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ARROW_DOWN:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    .line 19
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/16 v2, -0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v11, 0x9

    const-string v12, "ARROW_LEFT"

    invoke-direct {v0, v12, v11, v2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ARROW_LEFT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    .line 20
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/16 v2, -0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v12, 0xa

    const-string v13, "ARROW_RIGHT"

    invoke-direct {v0, v13, v12, v2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ARROW_RIGHT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    .line 21
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/16 v2, -0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v13, 0xb

    const-string v14, "PHONE_INPUT"

    invoke-direct {v0, v14, v13, v2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->PHONE_INPUT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    .line 22
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/16 v2, -0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v14, 0xc

    const-string v15, "TRANSCRIBE"

    invoke-direct {v0, v15, v14, v2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->TRANSCRIBE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    const/16 v0, 0xd

    .line 8
    new-array v0, v0, [Lcom/oculus/panelapp/keyboardv2/KeyCode;

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->NONE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    aput-object v2, v0, v1

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->SHIFT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    aput-object v2, v0, v3

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ACTION_KEY:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    aput-object v2, v0, v4

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->LAYOUT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    aput-object v2, v0, v5

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->DISMISS:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    aput-object v2, v0, v6

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->BACKSPACE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    aput-object v2, v0, v7

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->RETURN_TO_CURRENT_LANGUAGE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    aput-object v2, v0, v8

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ARROW_UP:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    aput-object v2, v0, v9

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ARROW_DOWN:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    aput-object v2, v0, v10

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ARROW_LEFT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    aput-object v2, v0, v11

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ARROW_RIGHT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    aput-object v2, v0, v12

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->PHONE_INPUT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    aput-object v2, v0, v13

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->TRANSCRIBE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    aput-object v2, v0, v14

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->$VALUES:[Lcom/oculus/panelapp/keyboardv2/KeyCode;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-static {}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->values()[Lcom/oculus/panelapp/keyboardv2/KeyCode;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 36
    iget v5, v4, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->lookup:Ljava/util/Map;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    return-void
.end method

.method public static get(I)Lcom/oculus/panelapp/keyboardv2/KeyCode;
    .locals 1

    .line 42
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->lookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    if-nez p0, :cond_0

    .line 43
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->NONE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/KeyCode;
    .locals 1

    .line 8
    const-class v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/keyboardv2/KeyCode;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/keyboardv2/KeyCode;
    .locals 1

    .line 8
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyCode;->$VALUES:[Lcom/oculus/panelapp/keyboardv2/KeyCode;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/keyboardv2/KeyCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/keyboardv2/KeyCode;

    return-object v0
.end method
