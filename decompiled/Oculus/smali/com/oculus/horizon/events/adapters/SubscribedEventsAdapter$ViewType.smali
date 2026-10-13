.class final enum Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;
.super Ljava/lang/Enum;
.source "SubscribedEventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;

.field public static final enum EVENT:Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;->EVENT:Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;

    sget-object v1, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;->EVENT:Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;->$VALUES:[Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;->$VALUES:[Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter$ViewType;

    return-object v0
.end method
