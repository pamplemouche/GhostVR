.class final enum Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;
.super Ljava/lang/Enum;
.source "IndividualEventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;

.field public static final enum EVENTS:Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;

    const-string v1, "EVENTS"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;->EVENTS:Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;

    sget-object v1, Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;->EVENTS:Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;->$VALUES:[Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;->$VALUES:[Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter$ViewType;

    return-object v0
.end method
