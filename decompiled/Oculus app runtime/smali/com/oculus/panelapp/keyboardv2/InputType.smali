.class public final enum Lcom/oculus/panelapp/keyboardv2/InputType;
.super Ljava/lang/Enum;
.source "InputType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/keyboardv2/InputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/keyboardv2/InputType;

.field public static final enum EMAIL_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

.field public static final enum NUMBER_COMPACT:Lcom/oculus/panelapp/keyboardv2/InputType;

.field public static final enum NUMBER_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

.field public static final enum PHONE_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

.field private static final TAG:Ljava/lang/String; = "InputType"

.field public static final enum TEXT_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

.field public static final enum TEXT_PHYSICAL:Lcom/oculus/panelapp/keyboardv2/InputType;

.field public static final enum TEXT_SIMPLE:Lcom/oculus/panelapp/keyboardv2/InputType;

.field public static final enum TEXT_URI:Lcom/oculus/panelapp/keyboardv2/InputType;

.field public static final enum UNKNOWN:Lcom/oculus/panelapp/keyboardv2/InputType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 10
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/InputType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/keyboardv2/InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/InputType;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 11
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/InputType;

    const/4 v2, 0x1

    const-string v3, "TEXT_SIMPLE"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/keyboardv2/InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_SIMPLE:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 12
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/InputType;

    const/4 v3, 0x2

    const-string v4, "TEXT_DEFAULT"

    invoke-direct {v0, v4, v3}, Lcom/oculus/panelapp/keyboardv2/InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 13
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/InputType;

    const/4 v4, 0x3

    const-string v5, "TEXT_URI"

    invoke-direct {v0, v5, v4}, Lcom/oculus/panelapp/keyboardv2/InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_URI:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 14
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/InputType;

    const/4 v5, 0x4

    const-string v6, "EMAIL_DEFAULT"

    invoke-direct {v0, v6, v5}, Lcom/oculus/panelapp/keyboardv2/InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/InputType;->EMAIL_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 15
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/InputType;

    const/4 v6, 0x5

    const-string v7, "NUMBER_DEFAULT"

    invoke-direct {v0, v7, v6}, Lcom/oculus/panelapp/keyboardv2/InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/InputType;->NUMBER_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 16
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/InputType;

    const/4 v7, 0x6

    const-string v8, "NUMBER_COMPACT"

    invoke-direct {v0, v8, v7}, Lcom/oculus/panelapp/keyboardv2/InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/InputType;->NUMBER_COMPACT:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 17
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/InputType;

    const/4 v8, 0x7

    const-string v9, "PHONE_DEFAULT"

    invoke-direct {v0, v9, v8}, Lcom/oculus/panelapp/keyboardv2/InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/InputType;->PHONE_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 18
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/InputType;

    const/16 v9, 0x8

    const-string v10, "TEXT_PHYSICAL"

    invoke-direct {v0, v10, v9}, Lcom/oculus/panelapp/keyboardv2/InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_PHYSICAL:Lcom/oculus/panelapp/keyboardv2/InputType;

    const/16 v0, 0x9

    .line 9
    new-array v0, v0, [Lcom/oculus/panelapp/keyboardv2/InputType;

    sget-object v10, Lcom/oculus/panelapp/keyboardv2/InputType;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/InputType;

    aput-object v10, v0, v1

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_SIMPLE:Lcom/oculus/panelapp/keyboardv2/InputType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_URI:Lcom/oculus/panelapp/keyboardv2/InputType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/InputType;->EMAIL_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/InputType;->NUMBER_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/InputType;->NUMBER_COMPACT:Lcom/oculus/panelapp/keyboardv2/InputType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/InputType;->PHONE_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_PHYSICAL:Lcom/oculus/panelapp/keyboardv2/InputType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/InputType;->$VALUES:[Lcom/oculus/panelapp/keyboardv2/InputType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInputType(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/InputType;
    .locals 2

    const-string v0, "TEXT_SIMPLE"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_SIMPLE:Lcom/oculus/panelapp/keyboardv2/InputType;

    return-object p0

    :cond_0
    const-string v0, "TEXT_DEFAULT"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "TEXT_EMAIL"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    return-object p0

    :cond_2
    const-string v0, "TEXT_URI"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_URI:Lcom/oculus/panelapp/keyboardv2/InputType;

    return-object p0

    :cond_3
    const-string v0, "EMAIL_DEFAULT"

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/InputType;->EMAIL_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    return-object p0

    :cond_4
    const-string v0, "NUMBER_DEFAULT"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/InputType;->NUMBER_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    return-object p0

    :cond_5
    const-string v0, "NUMBER_COMPACT"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/InputType;->NUMBER_COMPACT:Lcom/oculus/panelapp/keyboardv2/InputType;

    return-object p0

    :cond_6
    const-string v0, "PHONE_DEFAULT"

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 46
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/InputType;->PHONE_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    return-object p0

    :cond_7
    const-string v0, "TEXT_PHYSICAL"

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 48
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_PHYSICAL:Lcom/oculus/panelapp/keyboardv2/InputType;

    return-object p0

    :cond_8
    const/4 v0, 0x1

    .line 50
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Unknown InputType: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputType"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    return-object p0

    .line 26
    :cond_9
    :goto_0
    sget-object p0, Lcom/oculus/panelapp/keyboardv2/InputType;->TEXT_DEFAULT:Lcom/oculus/panelapp/keyboardv2/InputType;

    return-object p0
.end method

.method public static toString(Lcom/oculus/panelapp/keyboardv2/InputType;)Ljava/lang/String;
    .locals 3

    .line 56
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/InputType$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$InputType:[I

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/InputType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "text_default"

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    .line 74
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/InputType;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "Unknown type: %i"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputType"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_0
    const-string p0, "text_physical"

    return-object p0

    :pswitch_1
    const-string p0, "phone_default"

    return-object p0

    :pswitch_2
    const-string p0, "number_compact"

    return-object p0

    :pswitch_3
    const-string p0, "number_default"

    return-object p0

    :pswitch_4
    const-string p0, "email_default"

    return-object p0

    :pswitch_5
    return-object v1

    :pswitch_6
    const-string p0, "text_simple"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/InputType;
    .locals 1

    .line 9
    const-class v0, Lcom/oculus/panelapp/keyboardv2/InputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/keyboardv2/InputType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/keyboardv2/InputType;
    .locals 1

    .line 9
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/InputType;->$VALUES:[Lcom/oculus/panelapp/keyboardv2/InputType;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/keyboardv2/InputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/keyboardv2/InputType;

    return-object v0
.end method
