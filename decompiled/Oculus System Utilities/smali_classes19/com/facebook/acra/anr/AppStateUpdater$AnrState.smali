.class public final enum Lcom/facebook/acra/anr/AppStateUpdater$AnrState;
.super Ljava/lang/Enum;
.source "AppStateUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/anr/AppStateUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnrState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/acra/anr/AppStateUpdater$AnrState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

.field public static final enum ANR_RECOVERED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

.field public static final enum DURING_ANR:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

.field public static final enum NO_ANR_DETECTED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    const-string v1, "NO_ANR_DETECTED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->NO_ANR_DETECTED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    .line 11
    new-instance v0, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    const-string v1, "DURING_ANR"

    invoke-direct {v0, v1, v3}, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->DURING_ANR:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    .line 12
    new-instance v0, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    const-string v1, "ANR_RECOVERED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->ANR_RECOVERED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    sget-object v1, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->NO_ANR_DETECTED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->DURING_ANR:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->ANR_RECOVERED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->$VALUES:[Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/acra/anr/AppStateUpdater$AnrState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/acra/anr/AppStateUpdater$AnrState;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->$VALUES:[Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    invoke-virtual {v0}, [Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    return-object v0
.end method
