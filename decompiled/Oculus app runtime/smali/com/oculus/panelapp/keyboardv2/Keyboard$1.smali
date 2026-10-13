.class synthetic Lcom/oculus/panelapp/keyboardv2/Keyboard$1;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/keyboardv2/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$panelapp$keyboardv2$ActionType:[I

.field static final synthetic $SwitchMap$com$oculus$panelapp$keyboardv2$KeyboardLocale:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 534
    invoke-static {}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->values()[Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$KeyboardLocale:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$KeyboardLocale:[I

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->KO_KR:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    invoke-virtual {v2}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/oculus/panelapp/keyboardv2/Keyboard$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$KeyboardLocale:[I

    sget-object v3, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->PT_BR:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    invoke-virtual {v3}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 495
    :catch_1
    invoke-static {}, Lcom/oculus/panelapp/keyboardv2/ActionType;->values()[Lcom/oculus/panelapp/keyboardv2/ActionType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/oculus/panelapp/keyboardv2/Keyboard$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$ActionType:[I

    :try_start_2
    sget-object v2, Lcom/oculus/panelapp/keyboardv2/Keyboard$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$ActionType:[I

    sget-object v3, Lcom/oculus/panelapp/keyboardv2/ActionType;->GO:Lcom/oculus/panelapp/keyboardv2/ActionType;

    invoke-virtual {v3}, Lcom/oculus/panelapp/keyboardv2/ActionType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$ActionType:[I

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/ActionType;->NEWLINE:Lcom/oculus/panelapp/keyboardv2/ActionType;

    invoke-virtual {v2}, Lcom/oculus/panelapp/keyboardv2/ActionType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$ActionType:[I

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/ActionType;->SEARCH:Lcom/oculus/panelapp/keyboardv2/ActionType;

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$ActionType:[I

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/ActionType;->NEXT:Lcom/oculus/panelapp/keyboardv2/ActionType;

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$ActionType:[I

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/ActionType;->SEND:Lcom/oculus/panelapp/keyboardv2/ActionType;

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/Keyboard$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$ActionType:[I

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/ActionType;->DONE:Lcom/oculus/panelapp/keyboardv2/ActionType;

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
