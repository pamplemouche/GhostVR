.class public final enum Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;
.super Ljava/lang/Enum;
.source "SettingsIPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/SettingsIPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputHint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

.field public static final enum NONE:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

.field public static final enum SLIDER_CONTINUOUS:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

.field public static final enum SLIDER_DISCRETE:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

.field private static values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 76
    new-instance v0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    const/4 v1, 0x0

    const-string v2, "NONE"

    const-string v3, "None"

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->NONE:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    .line 77
    new-instance v0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    const/4 v2, 0x1

    const-string v3, "SLIDER_DISCRETE"

    const-string v4, "SliderDiscrete"

    invoke-direct {v0, v3, v2, v4}, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->SLIDER_DISCRETE:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    .line 78
    new-instance v0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    const/4 v3, 0x2

    const-string v4, "SLIDER_CONTINUOUS"

    const-string v5, "SliderContinuous"

    invoke-direct {v0, v4, v3, v5}, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->SLIDER_CONTINUOUS:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    const/4 v0, 0x3

    .line 75
    new-array v0, v0, [Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    sget-object v4, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->NONE:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->SLIDER_DISCRETE:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->SLIDER_CONTINUOUS:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->$VALUES:[Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->values:Ljava/util/HashMap;

    .line 84
    const-class v0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    .line 85
    sget-object v2, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->values:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-object p3, p0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->text:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;
    .locals 3

    .line 99
    sget-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    return-object p0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "No enum constant com.oculus.panelapp.debug.SettingsIPC.InputHint.%s"

    .line 101
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;
    .locals 1

    .line 75
    const-class v0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;
    .locals 1

    .line 75
    sget-object v0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->$VALUES:[Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->text:Ljava/lang/String;

    return-object v0
.end method
