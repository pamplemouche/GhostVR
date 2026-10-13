.class public final enum Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;
.super Ljava/lang/Enum;
.source "ClientPreferencesMutationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreferenceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_BROWSER_PROMPT:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_CONFIRM_QUIT:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_CONFIRM_QUIT_NOTIF:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_FOCUS:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_HAS_ACKNOWLEDGED_HSW_VIDEO:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_HAS_FINISHED_IPD_ADJUST:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_HAS_FINISHED_MONTEREY_NUX:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_HAS_FINISHED_NUX:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_HAS_OPTED_OUT_OF_MALIBU_RECENTER:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_HAS_SEEN_NEW_LIBRARY:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_LONG_HSW:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_OPT_OUT_HSW:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_PARTY_CALLS_NUX:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_SAVED_PROMPT:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

.field public static final enum TYPE_TUTORIAL:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_OPT_OUT_HSW"

    const-string v2, "hasOptedOutOfHSW"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_OPT_OUT_HSW:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 11
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_BROWSER_PROMPT"

    const-string v2, "hasSeenInternetBrowserPrompt"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_BROWSER_PROMPT:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 12
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_SAVED_PROMPT"

    const-string v2, "hasSeenSavedPrompt"

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_SAVED_PROMPT:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 13
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_LONG_HSW"

    const-string v2, "hasSeenLongHSW"

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_LONG_HSW:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 14
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_TUTORIAL"

    const-string v2, "hasSeenTutorial"

    invoke-direct {v0, v1, v8, v2}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_TUTORIAL:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 15
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_CONFIRM_QUIT"

    const/4 v2, 0x5

    const-string v3, "hasSeenConfirmQuit"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_CONFIRM_QUIT:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 16
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_CONFIRM_QUIT_NOTIF"

    const/4 v2, 0x6

    const-string v3, "hasSeenConfirmQuitNotif"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_CONFIRM_QUIT_NOTIF:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 17
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_FOCUS"

    const/4 v2, 0x7

    const-string v3, "hasSeenFocus"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_FOCUS:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 18
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_HAS_ACKNOWLEDGED_HSW_VIDEO"

    const/16 v2, 0x8

    const-string v3, "hasAcknowledgedHSWVideo"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_ACKNOWLEDGED_HSW_VIDEO:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 19
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_PARTY_CALLS_NUX"

    const/16 v2, 0x9

    const-string v3, "hasSeenPartyCallsNUX"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_PARTY_CALLS_NUX:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 20
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_HAS_OPTED_OUT_OF_MALIBU_RECENTER"

    const/16 v2, 0xa

    const-string v3, "hasOptedOutOfMalibuRecenter"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_OPTED_OUT_OF_MALIBU_RECENTER:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 21
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_HAS_FINISHED_IPD_ADJUST"

    const/16 v2, 0xb

    const-string v3, "hasFinishedIPDAdjust"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_FINISHED_IPD_ADJUST:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 22
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_HAS_FINISHED_MONTEREY_NUX"

    const/16 v2, 0xc

    const-string v3, "hasFinishedMontereyNux"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_FINISHED_MONTEREY_NUX:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 23
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_HAS_FINISHED_NUX"

    const/16 v2, 0xd

    const-string v3, "hasFinishedNux"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_FINISHED_NUX:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 24
    new-instance v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    const-string v1, "TYPE_HAS_SEEN_NEW_LIBRARY"

    const/16 v2, 0xe

    const-string v3, "hasSeenNewLibrary"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_SEEN_NEW_LIBRARY:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    .line 9
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    sget-object v1, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_OPT_OUT_HSW:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_BROWSER_PROMPT:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_SAVED_PROMPT:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_LONG_HSW:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_TUTORIAL:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_CONFIRM_QUIT:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_CONFIRM_QUIT_NOTIF:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_FOCUS:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_ACKNOWLEDGED_HSW_VIDEO:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_PARTY_CALLS_NUX:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_OPTED_OUT_OF_MALIBU_RECENTER:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_FINISHED_IPD_ADJUST:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_FINISHED_MONTEREY_NUX:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_FINISHED_NUX:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_HAS_SEEN_NEW_LIBRARY:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->$VALUES:[Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

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

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->text:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->$VALUES:[Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->text:Ljava/lang/String;

    return-object v0
.end method
