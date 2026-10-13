.class public final enum Lcom/oculus/panelapp/keyboardv2/ActionType;
.super Ljava/lang/Enum;
.source "ActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/keyboardv2/ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/keyboardv2/ActionType;

.field public static final enum DONE:Lcom/oculus/panelapp/keyboardv2/ActionType;

.field public static final enum GO:Lcom/oculus/panelapp/keyboardv2/ActionType;

.field public static final enum NEWLINE:Lcom/oculus/panelapp/keyboardv2/ActionType;

.field public static final enum NEXT:Lcom/oculus/panelapp/keyboardv2/ActionType;

.field public static final enum SEARCH:Lcom/oculus/panelapp/keyboardv2/ActionType;

.field public static final enum SEND:Lcom/oculus/panelapp/keyboardv2/ActionType;

.field private static final TAG:Ljava/lang/String; = "ActionType"

.field public static final enum UNKNOWN:Lcom/oculus/panelapp/keyboardv2/ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 9
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/ActionType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/keyboardv2/ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/ActionType;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/ActionType;

    .line 10
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/ActionType;

    const/4 v2, 0x1

    const-string v3, "GO"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/keyboardv2/ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/ActionType;->GO:Lcom/oculus/panelapp/keyboardv2/ActionType;

    .line 11
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/ActionType;

    const/4 v3, 0x2

    const-string v4, "NEWLINE"

    invoke-direct {v0, v4, v3}, Lcom/oculus/panelapp/keyboardv2/ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/ActionType;->NEWLINE:Lcom/oculus/panelapp/keyboardv2/ActionType;

    .line 12
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/ActionType;

    const/4 v4, 0x3

    const-string v5, "SEARCH"

    invoke-direct {v0, v5, v4}, Lcom/oculus/panelapp/keyboardv2/ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/ActionType;->SEARCH:Lcom/oculus/panelapp/keyboardv2/ActionType;

    .line 13
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/ActionType;

    const/4 v5, 0x4

    const-string v6, "NEXT"

    invoke-direct {v0, v6, v5}, Lcom/oculus/panelapp/keyboardv2/ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/ActionType;->NEXT:Lcom/oculus/panelapp/keyboardv2/ActionType;

    .line 14
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/ActionType;

    const/4 v6, 0x5

    const-string v7, "SEND"

    invoke-direct {v0, v7, v6}, Lcom/oculus/panelapp/keyboardv2/ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/ActionType;->SEND:Lcom/oculus/panelapp/keyboardv2/ActionType;

    .line 15
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/ActionType;

    const/4 v7, 0x6

    const-string v8, "DONE"

    invoke-direct {v0, v8, v7}, Lcom/oculus/panelapp/keyboardv2/ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/ActionType;->DONE:Lcom/oculus/panelapp/keyboardv2/ActionType;

    const/4 v0, 0x7

    .line 8
    new-array v0, v0, [Lcom/oculus/panelapp/keyboardv2/ActionType;

    sget-object v8, Lcom/oculus/panelapp/keyboardv2/ActionType;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/ActionType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/ActionType;->GO:Lcom/oculus/panelapp/keyboardv2/ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/ActionType;->NEWLINE:Lcom/oculus/panelapp/keyboardv2/ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/ActionType;->SEARCH:Lcom/oculus/panelapp/keyboardv2/ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/ActionType;->NEXT:Lcom/oculus/panelapp/keyboardv2/ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/ActionType;->SEND:Lcom/oculus/panelapp/keyboardv2/ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/ActionType;->DONE:Lcom/oculus/panelapp/keyboardv2/ActionType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/ActionType;->$VALUES:[Lcom/oculus/panelapp/keyboardv2/ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getActionType(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/ActionType;
    .locals 2

    const-string v0, "GO"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NEWLINE"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/ActionType;->NEWLINE:Lcom/oculus/panelapp/keyboardv2/ActionType;

    return-object p0

    :cond_1
    const-string v0, "SEARCH"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/ActionType;->SEARCH:Lcom/oculus/panelapp/keyboardv2/ActionType;

    return-object p0

    :cond_2
    const-string v0, "NEXT"

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/ActionType;->NEXT:Lcom/oculus/panelapp/keyboardv2/ActionType;

    return-object p0

    :cond_3
    const-string v0, "SEND"

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/ActionType;->SEND:Lcom/oculus/panelapp/keyboardv2/ActionType;

    return-object p0

    :cond_4
    const-string v0, "DONE"

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/ActionType;->DONE:Lcom/oculus/panelapp/keyboardv2/ActionType;

    return-object p0

    :cond_5
    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Unknown ActionType: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActionType"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/ActionType;->GO:Lcom/oculus/panelapp/keyboardv2/ActionType;

    return-object p0

    .line 21
    :cond_6
    :goto_0
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/ActionType;->GO:Lcom/oculus/panelapp/keyboardv2/ActionType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/ActionType;
    .locals 1

    .line 8
    const-class v0, Lcom/oculus/panelapp/keyboardv2/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/keyboardv2/ActionType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/keyboardv2/ActionType;
    .locals 1

    .line 8
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/ActionType;->$VALUES:[Lcom/oculus/panelapp/keyboardv2/ActionType;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/keyboardv2/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/keyboardv2/ActionType;

    return-object v0
.end method
