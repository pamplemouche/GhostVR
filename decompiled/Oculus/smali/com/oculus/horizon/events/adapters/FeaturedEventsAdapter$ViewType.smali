.class final enum Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;
.super Ljava/lang/Enum;
.source "FeaturedEventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

.field public static final enum EVENT:Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

.field public static final enum MY_EVENTS_PREVIEW:Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    const-string v1, "MY_EVENTS_PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;->MY_EVENTS_PREVIEW:Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    .line 21
    new-instance v0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;->EVENT:Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    sget-object v1, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;->MY_EVENTS_PREVIEW:Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;->EVENT:Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;->$VALUES:[Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;->$VALUES:[Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/events/adapters/FeaturedEventsAdapter$ViewType;

    return-object v0
.end method
